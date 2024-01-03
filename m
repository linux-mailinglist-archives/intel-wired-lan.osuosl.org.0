Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7551823115
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:17:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D7DE419D1;
	Wed,  3 Jan 2024 16:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D7DE419D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298678;
	bh=HSBp9dCk3VVKgEJ1nqfxUjfA1nM0E/Y9rT9yE7QKhUc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=R2LrlJ1FQoqcAX5oG8hcVYv/dYYK94TFKaRVLUmE8nVr0Mx81STj+H1Bk/DJQ8Dd+
	 xNufrTRYDX7GjQhSmvE/A1EGXlhG8qGFR497S87Ci3SVeYIhAdZOC2CxKQUMQAbtfl
	 YnD87PbRvnpEickmqy6BIrVvWuR6bSA/MVQ72qnLBuOIWSbqU+fENfLV5jC8MCIpeG
	 GJ0o9edwUu+s8/7t1DwXPYrtQ9tiXmN1Eu5vYwHF0ec4pNuVnpDiOyfQrwZcBZBKfo
	 tZOIHWhkTgwbCwB3j8QH1b+2SUj+7/IxrIuH5KQkuIM+jtL0meXf51SYcYD7Hy42i3
	 1FJUIpjDLWddA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LuyQ8YtTLug9; Wed,  3 Jan 2024 16:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B471A419C3;
	Wed,  3 Jan 2024 16:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B471A419C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58DDA1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 10:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DF1A4176B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 10:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DF1A4176B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2vL0f99tZNNA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 10:20:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1F554176A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 10:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1F554176A
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="18516687"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="18516687"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 02:20:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="814223396"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="814223396"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga001.jf.intel.com with ESMTP; 03 Jan 2024 02:20:52 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jan 2024 11:11:35 +0100
Message-Id: <20240103101135.386891-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704277257; x=1735813257;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0y5UsHhGKI0FVAN+W20yIduOw9tp8qUw9HuCPkE/8uU=;
 b=Wj8Z3WCLUrInd22bWXdOonnp++9dAKqIMmbb8alhEciBkIvQ/BjsBVTO
 ppj/agvgszFcRnFLF/AXy8XxgXTALSHqUgnrnWxxHLonrfS12QWLDn9qy
 8FjDf5K/cjtciJr1EoKXfdX+BaqzEKgfcJijs26ao7t21syfLqwzxlhbR
 VlSdJxYVLVPu13R/WmWwnhaT7kjzrqThfi6NMSVYf3gqg29zXwYXQvzg9
 CJ2y86VcPrfJ6gRje76XhaSgM3l+WQsdMzv8OjJyIZ0+rMcOy7mR3Q2fx
 BrtxtyltyEtx7Qxo4Pv/mOD0ouIR0uQxOakN0YyAKBcRI3fk/1ELognH6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wj8Z3WCL
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Convert ret val type
 from s32 to int
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently big amount of the functions returning standard
error codes are of type s32. Convert them to regular
ints.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  16 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  64 ++---
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    | 130 ++++-----
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 226 +++++++--------
 .../net/ethernet/intel/ixgbe/ixgbe_common.h   | 114 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c  |  12 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.h  |  10 +-
 .../ethernet/intel/ixgbe/ixgbe_dcb_82598.c    |  26 +-
 .../ethernet/intel/ixgbe/ixgbe_dcb_82598.h    |  30 +-
 .../ethernet/intel/ixgbe/ixgbe_dcb_82599.c    |  12 +-
 .../ethernet/intel/ixgbe/ixgbe_dcb_82599.h    |  35 +--
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  10 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  46 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |  10 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 182 ++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  54 ++--
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 190 ++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  62 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |  18 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 272 +++++++++---------
 22 files changed, 754 insertions(+), 779 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 63d4e32df029..fcdbb6fe493b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -951,19 +951,19 @@ void ixgbe_alloc_rx_buffers(struct ixgbe_ring *, u16);
 void ixgbe_write_eitr(struct ixgbe_q_vector *);
 int ixgbe_poll(struct napi_struct *napi, int budget);
 int ethtool_ioctl(struct ifreq *ifr);
-s32 ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw);
-s32 ixgbe_init_fdir_signature_82599(struct ixgbe_hw *hw, u32 fdirctrl);
-s32 ixgbe_init_fdir_perfect_82599(struct ixgbe_hw *hw, u32 fdirctrl);
-s32 ixgbe_fdir_add_signature_filter_82599(struct ixgbe_hw *hw,
+int ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw);
+int ixgbe_init_fdir_signature_82599(struct ixgbe_hw *hw, u32 fdirctrl);
+int ixgbe_init_fdir_perfect_82599(struct ixgbe_hw *hw, u32 fdirctrl);
+int ixgbe_fdir_add_signature_filter_82599(struct ixgbe_hw *hw,
 					  union ixgbe_atr_hash_dword input,
 					  union ixgbe_atr_hash_dword common,
 					  u8 queue);
-s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 				    union ixgbe_atr_input *input_mask);
-s32 ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
 					  union ixgbe_atr_input *input,
 					  u16 soft_id, u8 queue);
-s32 ixgbe_fdir_erase_perfect_filter_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_erase_perfect_filter_82599(struct ixgbe_hw *hw,
 					  union ixgbe_atr_input *input,
 					  u16 soft_id);
 void ixgbe_atr_compute_perfect_hash_82599(union ixgbe_atr_input *input,
@@ -1065,7 +1065,7 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
 u32 ixgbe_rss_indir_tbl_entries(struct ixgbe_adapter *adapter);
 void ixgbe_store_key(struct ixgbe_adapter *adapter);
 void ixgbe_store_reta(struct ixgbe_adapter *adapter);
-s32 ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
+int ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
 		       u32 adv_sym, u32 adv_asm, u32 lp_sym, u32 lp_asm);
 #ifdef CONFIG_IXGBE_IPSEC
 void ixgbe_init_ipsec_offload(struct ixgbe_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 100388968e4d..eb21cb0fa170 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -15,10 +15,10 @@
 #define IXGBE_82598_VFT_TBL_SIZE 128
 #define IXGBE_82598_RX_PB_SIZE	 512
 
-static s32 ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
+static int ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
 					 ixgbe_link_speed speed,
 					 bool autoneg_wait_to_complete);
-static s32 ixgbe_read_i2c_eeprom_82598(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_read_i2c_eeprom_82598(struct ixgbe_hw *hw, u8 byte_offset,
 				       u8 *eeprom_data);
 
 /**
@@ -66,7 +66,7 @@ static void ixgbe_set_pcie_completion_timeout(struct ixgbe_hw *hw)
 	IXGBE_WRITE_REG(hw, IXGBE_GCR, gcr);
 }
 
-static s32 ixgbe_get_invariants_82598(struct ixgbe_hw *hw)
+static int ixgbe_get_invariants_82598(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 
@@ -93,11 +93,11 @@ static s32 ixgbe_get_invariants_82598(struct ixgbe_hw *hw)
  *  not known.  Perform the SFP init if necessary.
  *
  **/
-static s32 ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
+static int ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	struct ixgbe_phy_info *phy = &hw->phy;
-	s32 ret_val;
+	int ret_val;
 	u16 list_offset, data_offset;
 
 	/* Identify the PHY */
@@ -148,9 +148,9 @@ static s32 ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
  *  Then set pcie completion timeout
  *
  **/
-static s32 ixgbe_start_hw_82598(struct ixgbe_hw *hw)
+static int ixgbe_start_hw_82598(struct ixgbe_hw *hw)
 {
-	s32 ret_val;
+	int ret_val;
 
 	ret_val = ixgbe_start_hw_generic(hw);
 	if (ret_val)
@@ -170,7 +170,7 @@ static s32 ixgbe_start_hw_82598(struct ixgbe_hw *hw)
  *
  *  Determines the link capabilities by reading the AUTOC register.
  **/
-static s32 ixgbe_get_link_capabilities_82598(struct ixgbe_hw *hw,
+static int ixgbe_get_link_capabilities_82598(struct ixgbe_hw *hw,
 					     ixgbe_link_speed *speed,
 					     bool *autoneg)
 {
@@ -271,7 +271,7 @@ static enum ixgbe_media_type ixgbe_get_media_type_82598(struct ixgbe_hw *hw)
  *
  *  Enable flow control according to the current settings.
  **/
-static s32 ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
+static int ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
 {
 	u32 fctrl_reg;
 	u32 rmcs_reg;
@@ -411,13 +411,13 @@ static s32 ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
  *  Configures link settings based on values in the ixgbe_hw struct.
  *  Restarts the link.  Performs autonegotiation if needed.
  **/
-static s32 ixgbe_start_mac_link_82598(struct ixgbe_hw *hw,
+static int ixgbe_start_mac_link_82598(struct ixgbe_hw *hw,
 				      bool autoneg_wait_to_complete)
 {
 	u32 autoc_reg;
 	u32 links_reg;
 	u32 i;
-	s32 status = 0;
+	int status = 0;
 
 	/* Restart link */
 	autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
@@ -457,7 +457,7 @@ static s32 ixgbe_start_mac_link_82598(struct ixgbe_hw *hw,
  *  Function indicates success when phy link is available. If phy is not ready
  *  within 5 seconds of MAC indicating link, the function returns error.
  **/
-static s32 ixgbe_validate_link_ready(struct ixgbe_hw *hw)
+static int ixgbe_validate_link_ready(struct ixgbe_hw *hw)
 {
 	u32 timeout;
 	u16 an_reg;
@@ -493,7 +493,7 @@ static s32 ixgbe_validate_link_ready(struct ixgbe_hw *hw)
  *
  *  Reads the links register to determine if link is up and the current speed
  **/
-static s32 ixgbe_check_mac_link_82598(struct ixgbe_hw *hw,
+static int ixgbe_check_mac_link_82598(struct ixgbe_hw *hw,
 				      ixgbe_link_speed *speed, bool *link_up,
 				      bool link_up_wait_to_complete)
 {
@@ -579,7 +579,7 @@ static s32 ixgbe_check_mac_link_82598(struct ixgbe_hw *hw,
  *
  *  Set the link speed in the AUTOC register and restarts link.
  **/
-static s32 ixgbe_setup_mac_link_82598(struct ixgbe_hw *hw,
+static int ixgbe_setup_mac_link_82598(struct ixgbe_hw *hw,
 				      ixgbe_link_speed speed,
 				      bool autoneg_wait_to_complete)
 {
@@ -624,11 +624,11 @@ static s32 ixgbe_setup_mac_link_82598(struct ixgbe_hw *hw,
  *
  *  Sets the link speed in the AUTOC register in the MAC and restarts link.
  **/
-static s32 ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
-					       ixgbe_link_speed speed,
-					       bool autoneg_wait_to_complete)
+static int ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
+					 ixgbe_link_speed speed,
+					 bool autoneg_wait_to_complete)
 {
-	s32 status;
+	int status;
 
 	/* Setup the PHY according to input speed */
 	status = hw->phy.ops.setup_link_speed(hw, speed,
@@ -647,10 +647,10 @@ static s32 ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
  *  clears all interrupts, performing a PHY reset, and performing a link (MAC)
  *  reset.
  **/
-static s32 ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
+static int ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
 {
-	s32 status;
-	s32 phy_status = 0;
+	int status;
+	int phy_status = 0;
 	u32 ctrl;
 	u32 gheccr;
 	u32 i;
@@ -781,7 +781,7 @@ static s32 ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
  *  @rar: receive address register index to associate with a VMDq index
  *  @vmdq: VMDq set index
  **/
-static s32 ixgbe_set_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
+static int ixgbe_set_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 {
 	u32 rar_high;
 	u32 rar_entries = hw->mac.num_rar_entries;
@@ -805,7 +805,7 @@ static s32 ixgbe_set_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
  *  @rar: receive address register index to associate with a VMDq index
  *  @vmdq: VMDq clear index (not used in 82598, but elsewhere)
  **/
-static s32 ixgbe_clear_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
+static int ixgbe_clear_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 {
 	u32 rar_high;
 	u32 rar_entries = hw->mac.num_rar_entries;
@@ -836,7 +836,7 @@ static s32 ixgbe_clear_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
  *
  *  Turn on/off specified VLAN in the VLAN filter table.
  **/
-static s32 ixgbe_set_vfta_82598(struct ixgbe_hw *hw, u32 vlan, u32 vind,
+static int ixgbe_set_vfta_82598(struct ixgbe_hw *hw, u32 vlan, u32 vind,
 				bool vlan_on, bool vlvf_bypass)
 {
 	u32 regindex;
@@ -881,7 +881,7 @@ static s32 ixgbe_set_vfta_82598(struct ixgbe_hw *hw, u32 vlan, u32 vind,
  *
  *  Clears the VLAN filter table, and the VMDq index associated with the filter
  **/
-static s32 ixgbe_clear_vfta_82598(struct ixgbe_hw *hw)
+static int ixgbe_clear_vfta_82598(struct ixgbe_hw *hw)
 {
 	u32 offset;
 	u32 vlanbyte;
@@ -905,7 +905,7 @@ static s32 ixgbe_clear_vfta_82598(struct ixgbe_hw *hw)
  *
  *  Performs read operation to Atlas analog register specified.
  **/
-static s32 ixgbe_read_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 *val)
+static int ixgbe_read_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 *val)
 {
 	u32  atlas_ctl;
 
@@ -927,7 +927,7 @@ static s32 ixgbe_read_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 *val)
  *
  *  Performs write operation to Atlas analog register specified.
  **/
-static s32 ixgbe_write_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 val)
+static int ixgbe_write_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 val)
 {
 	u32  atlas_ctl;
 
@@ -948,10 +948,10 @@ static s32 ixgbe_write_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 val)
  *
  *  Performs 8 byte read operation to SFP module's data over I2C interface.
  **/
-static s32 ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
+static int ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
 				    u8 byte_offset, u8 *eeprom_data)
 {
-	s32 status = 0;
+	int status = 0;
 	u16 sfp_addr = 0;
 	u16 sfp_data = 0;
 	u16 sfp_stat = 0;
@@ -1019,7 +1019,7 @@ static s32 ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
  *
  *  Performs 8 byte read operation to SFP module's EEPROM over I2C interface.
  **/
-static s32 ixgbe_read_i2c_eeprom_82598(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_read_i2c_eeprom_82598(struct ixgbe_hw *hw, u8 byte_offset,
 				       u8 *eeprom_data)
 {
 	return ixgbe_read_i2c_phy_82598(hw, IXGBE_I2C_EEPROM_DEV_ADDR,
@@ -1034,8 +1034,8 @@ static s32 ixgbe_read_i2c_eeprom_82598(struct ixgbe_hw *hw, u8 byte_offset,
  *
  *  Performs 8 byte read operation to SFP module's SFF-8472 data over I2C
  **/
-static s32 ixgbe_read_i2c_sff8472_82598(struct ixgbe_hw *hw, u8 byte_offset,
-				       u8 *sff8472_data)
+static int ixgbe_read_i2c_sff8472_82598(struct ixgbe_hw *hw, u8 byte_offset,
+					u8 *sff8472_data)
 {
 	return ixgbe_read_i2c_phy_82598(hw, IXGBE_I2C_EEPROM_DEV_ADDR2,
 					byte_offset, sff8472_data);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index 58ea959a4482..f0d59500f55e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -21,24 +21,24 @@ static void ixgbe_enable_tx_laser_multispeed_fiber(struct ixgbe_hw *hw);
 static void ixgbe_flap_tx_laser_multispeed_fiber(struct ixgbe_hw *hw);
 static void
 ixgbe_set_hard_rate_select_speed(struct ixgbe_hw *, ixgbe_link_speed);
-static s32 ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
+static int ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
 					   ixgbe_link_speed speed,
 					   bool autoneg_wait_to_complete);
 static void ixgbe_stop_mac_link_on_d3_82599(struct ixgbe_hw *hw);
-static s32 ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
+static int ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
 				      bool autoneg_wait_to_complete);
-static s32 ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
-			       ixgbe_link_speed speed,
-			       bool autoneg_wait_to_complete);
-static s32 ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
+static int ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
+				      ixgbe_link_speed speed,
+				      bool autoneg_wait_to_complete);
+static int ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
 					 ixgbe_link_speed speed,
 					 bool autoneg_wait_to_complete);
-static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw);
-static s32 ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw);
+static int ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 				     u8 dev_addr, u8 *data);
-static s32 ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 				      u8 dev_addr, u8 data);
-static s32 ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw);
+static int ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw);
 static bool ixgbe_verify_lesm_fw_enabled_82599(struct ixgbe_hw *hw);
 
 bool ixgbe_mng_enabled(struct ixgbe_hw *hw)
@@ -98,9 +98,9 @@ static void ixgbe_init_mac_link_ops_82599(struct ixgbe_hw *hw)
 	}
 }
 
-static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
+static int ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
 {
-	s32 ret_val;
+	int ret_val;
 	u16 list_offset, data_offset, data_value;
 
 	if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
@@ -173,10 +173,10 @@ static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
  *  prot_autoc_write_82599().  Note, that locked can only be true in cases
  *  where this function doesn't return an error.
  **/
-static s32 prot_autoc_read_82599(struct ixgbe_hw *hw, bool *locked,
+static int prot_autoc_read_82599(struct ixgbe_hw *hw, bool *locked,
 				 u32 *reg_val)
 {
-	s32 ret_val;
+	int ret_val;
 
 	*locked = false;
 	/* If LESM is on then we need to hold the SW/FW semaphore. */
@@ -203,9 +203,9 @@ static s32 prot_autoc_read_82599(struct ixgbe_hw *hw, bool *locked,
  * This part (82599) may need to hold a the SW/FW lock around all writes to
  * AUTOC. Likewise after a write we need to do a pipeline reset.
  **/
-static s32 prot_autoc_write_82599(struct ixgbe_hw *hw, u32 autoc, bool locked)
+static int prot_autoc_write_82599(struct ixgbe_hw *hw, u32 autoc, bool locked)
 {
-	s32 ret_val = 0;
+	int ret_val = 0;
 
 	/* Blocked by MNG FW so bail */
 	if (ixgbe_check_reset_blocked(hw))
@@ -237,7 +237,7 @@ static s32 prot_autoc_write_82599(struct ixgbe_hw *hw, u32 autoc, bool locked)
 	return ret_val;
 }
 
-static s32 ixgbe_get_invariants_82599(struct ixgbe_hw *hw)
+static int ixgbe_get_invariants_82599(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 
@@ -263,11 +263,11 @@ static s32 ixgbe_get_invariants_82599(struct ixgbe_hw *hw)
  *  not known.  Perform the SFP init if necessary.
  *
  **/
-static s32 ixgbe_init_phy_ops_82599(struct ixgbe_hw *hw)
+static int ixgbe_init_phy_ops_82599(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	struct ixgbe_phy_info *phy = &hw->phy;
-	s32 ret_val;
+	int ret_val;
 	u32 esdp;
 
 	if (hw->device_id == IXGBE_DEV_ID_82599_QSFP_SF_QP) {
@@ -322,7 +322,7 @@ static s32 ixgbe_init_phy_ops_82599(struct ixgbe_hw *hw)
  *
  *  Determines the link capabilities by reading the AUTOC register.
  **/
-static s32 ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
+static int ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
 					     ixgbe_link_speed *speed,
 					     bool *autoneg)
 {
@@ -500,13 +500,13 @@ static void ixgbe_stop_mac_link_on_d3_82599(struct ixgbe_hw *hw)
  *  Configures link settings based on values in the ixgbe_hw struct.
  *  Restarts the link.  Performs autonegotiation if needed.
  **/
-static s32 ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
-			       bool autoneg_wait_to_complete)
+static int ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
+				      bool autoneg_wait_to_complete)
 {
 	u32 autoc_reg;
 	u32 links_reg;
 	u32 i;
-	s32 status = 0;
+	int status = 0;
 	bool got_lock = false;
 
 	if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
@@ -657,13 +657,13 @@ ixgbe_set_hard_rate_select_speed(struct ixgbe_hw *hw, ixgbe_link_speed speed)
  *
  *  Implements the Intel SmartSpeed algorithm.
  **/
-static s32 ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
-				     ixgbe_link_speed speed,
-				     bool autoneg_wait_to_complete)
+static int ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
+					   ixgbe_link_speed speed,
+					   bool autoneg_wait_to_complete)
 {
-	s32 status = 0;
+	int status = 0;
 	ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
-	s32 i, j;
+	int i, j;
 	bool link_up = false;
 	u32 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 
@@ -767,12 +767,12 @@ static s32 ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
  *
  *  Set the link speed in the AUTOC register and restarts link.
  **/
-static s32 ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
+static int ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
 				      ixgbe_link_speed speed,
 				      bool autoneg_wait_to_complete)
 {
 	bool autoneg = false;
-	s32 status;
+	int status;
 	u32 pma_pmd_1g, link_mode, links_reg, i;
 	u32 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
 	u32 pma_pmd_10g_serial = autoc2 & IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK;
@@ -883,11 +883,11 @@ static s32 ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
  *
  *  Restarts link on PHY and MAC based on settings passed in.
  **/
-static s32 ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
+static int ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
 					 ixgbe_link_speed speed,
 					 bool autoneg_wait_to_complete)
 {
-	s32 status;
+	int status;
 
 	/* Setup the PHY according to input speed */
 	status = hw->phy.ops.setup_link_speed(hw, speed,
@@ -906,10 +906,10 @@ static s32 ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
  *  and clears all interrupts, perform a PHY reset, and perform a link (MAC)
  *  reset.
  **/
-static s32 ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
+static int ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
 {
 	ixgbe_link_speed link_speed;
-	s32 status;
+	int status;
 	u32 ctrl, i, autoc, autoc2;
 	u32 curr_lms;
 	bool link_up = false;
@@ -1082,7 +1082,7 @@ static s32 ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
  * @hw: pointer to hardware structure
  * @fdircmd: current value of FDIRCMD register
  */
-static s32 ixgbe_fdir_check_cmd_complete(struct ixgbe_hw *hw, u32 *fdircmd)
+static int ixgbe_fdir_check_cmd_complete(struct ixgbe_hw *hw, u32 *fdircmd)
 {
 	int i;
 
@@ -1100,12 +1100,12 @@ static s32 ixgbe_fdir_check_cmd_complete(struct ixgbe_hw *hw, u32 *fdircmd)
  *  ixgbe_reinit_fdir_tables_82599 - Reinitialize Flow Director tables.
  *  @hw: pointer to hardware structure
  **/
-s32 ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw)
+int ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw)
 {
 	int i;
 	u32 fdirctrl = IXGBE_READ_REG(hw, IXGBE_FDIRCTRL);
 	u32 fdircmd;
-	s32 err;
+	int err;
 
 	fdirctrl &= ~IXGBE_FDIRCTRL_INIT_DONE;
 
@@ -1213,7 +1213,7 @@ static void ixgbe_fdir_enable_82599(struct ixgbe_hw *hw, u32 fdirctrl)
  *  @fdirctrl: value to write to flow director control register, initially
  *             contains just the value of the Rx packet buffer allocation
  **/
-s32 ixgbe_init_fdir_signature_82599(struct ixgbe_hw *hw, u32 fdirctrl)
+int ixgbe_init_fdir_signature_82599(struct ixgbe_hw *hw, u32 fdirctrl)
 {
 	/*
 	 * Continue setup of fdirctrl register bits:
@@ -1237,7 +1237,7 @@ s32 ixgbe_init_fdir_signature_82599(struct ixgbe_hw *hw, u32 fdirctrl)
  *  @fdirctrl: value to write to flow director control register, initially
  *             contains just the value of the Rx packet buffer allocation
  **/
-s32 ixgbe_init_fdir_perfect_82599(struct ixgbe_hw *hw, u32 fdirctrl)
+int ixgbe_init_fdir_perfect_82599(struct ixgbe_hw *hw, u32 fdirctrl)
 {
 	/*
 	 * Continue setup of fdirctrl register bits:
@@ -1360,7 +1360,7 @@ static u32 ixgbe_atr_compute_sig_hash_82599(union ixgbe_atr_hash_dword input,
  * Note that the tunnel bit in input must not be set when the hardware
  * tunneling support does not exist.
  **/
-s32 ixgbe_fdir_add_signature_filter_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_add_signature_filter_82599(struct ixgbe_hw *hw,
 					  union ixgbe_atr_hash_dword input,
 					  union ixgbe_atr_hash_dword common,
 					  u8 queue)
@@ -1516,7 +1516,7 @@ static u32 ixgbe_get_fdirtcpm_82599(union ixgbe_atr_input *input_mask)
 
 #define IXGBE_STORE_AS_BE16(_value) __swab16(ntohs((_value)))
 
-s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 				    union ixgbe_atr_input *input_mask)
 {
 	/* mask IPv6 since it is currently not supported */
@@ -1628,12 +1628,12 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 	return 0;
 }
 
-s32 ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
 					  union ixgbe_atr_input *input,
 					  u16 soft_id, u8 queue)
 {
 	u32 fdirport, fdirvlan, fdirhash, fdircmd;
-	s32 err;
+	int err;
 
 	/* currently IPv6 is not supported, must be programmed with 0 */
 	IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(0),
@@ -1691,13 +1691,13 @@ s32 ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
 	return 0;
 }
 
-s32 ixgbe_fdir_erase_perfect_filter_82599(struct ixgbe_hw *hw,
+int ixgbe_fdir_erase_perfect_filter_82599(struct ixgbe_hw *hw,
 					  union ixgbe_atr_input *input,
 					  u16 soft_id)
 {
 	u32 fdirhash;
 	u32 fdircmd;
-	s32 err;
+	int err;
 
 	/* configure FDIRHASH register */
 	fdirhash = (__force u32)input->formatted.bkt_hash;
@@ -1735,7 +1735,7 @@ s32 ixgbe_fdir_erase_perfect_filter_82599(struct ixgbe_hw *hw,
  *
  *  Performs read operation to Omer analog register specified.
  **/
-static s32 ixgbe_read_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 *val)
+static int ixgbe_read_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 *val)
 {
 	u32  core_ctl;
 
@@ -1757,7 +1757,7 @@ static s32 ixgbe_read_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 *val)
  *
  *  Performs write operation to Omer analog register specified.
  **/
-static s32 ixgbe_write_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 val)
+static int ixgbe_write_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 val)
 {
 	u32  core_ctl;
 
@@ -1777,9 +1777,9 @@ static s32 ixgbe_write_analog_reg8_82599(struct ixgbe_hw *hw, u32 reg, u8 val)
  *  and the generation start_hw function.
  *  Then performs revision-specific operations, if any.
  **/
-static s32 ixgbe_start_hw_82599(struct ixgbe_hw *hw)
+static int ixgbe_start_hw_82599(struct ixgbe_hw *hw)
 {
-	s32 ret_val = 0;
+	int ret_val = 0;
 
 	ret_val = ixgbe_start_hw_generic(hw);
 	if (ret_val)
@@ -1803,9 +1803,9 @@ static s32 ixgbe_start_hw_82599(struct ixgbe_hw *hw)
  *  If PHY already detected, maintains current PHY type in hw struct,
  *  otherwise executes the PHY detection routine.
  **/
-static s32 ixgbe_identify_phy_82599(struct ixgbe_hw *hw)
+static int ixgbe_identify_phy_82599(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 
 	/* Detect PHY if not unknown - returns success if already detected. */
 	status = ixgbe_identify_phy_generic(hw);
@@ -1836,7 +1836,7 @@ static s32 ixgbe_identify_phy_82599(struct ixgbe_hw *hw)
  *
  *  Enables the Rx DMA unit for 82599
  **/
-static s32 ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, u32 regval)
+static int ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, u32 regval)
 {
 	/*
 	 * Workaround for 82599 silicon errata when enabling the Rx datapath.
@@ -1866,9 +1866,9 @@ static s32 ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, u32 regval)
  *  Returns IXGBE_ERR_EEPROM_VERSION if the FW is not present or
  *  if the FW version is not supported.
  **/
-static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
+static int ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 {
-	s32 status = IXGBE_ERR_EEPROM_VERSION;
+	int status = IXGBE_ERR_EEPROM_VERSION;
 	u16 fw_offset, fw_ptp_cfg_offset;
 	u16 offset;
 	u16 fw_version = 0;
@@ -1918,7 +1918,7 @@ static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 static bool ixgbe_verify_lesm_fw_enabled_82599(struct ixgbe_hw *hw)
 {
 	u16 fw_offset, fw_lesm_param_offset, fw_lesm_state;
-	s32 status;
+	int status;
 
 	/* get the offset to the Firmware Module block */
 	status = hw->eeprom.ops.read(hw, IXGBE_FW_PTR, &fw_offset);
@@ -1957,7 +1957,7 @@ static bool ixgbe_verify_lesm_fw_enabled_82599(struct ixgbe_hw *hw)
  *
  *  Retrieves 16 bit word(s) read from EEPROM
  **/
-static s32 ixgbe_read_eeprom_buffer_82599(struct ixgbe_hw *hw, u16 offset,
+static int ixgbe_read_eeprom_buffer_82599(struct ixgbe_hw *hw, u16 offset,
 					  u16 words, u16 *data)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
@@ -1983,7 +1983,7 @@ static s32 ixgbe_read_eeprom_buffer_82599(struct ixgbe_hw *hw, u16 offset,
  *
  *  Reads a 16 bit word from the EEPROM
  **/
-static s32 ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
+static int ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
 				   u16 offset, u16 *data)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
@@ -2007,9 +2007,9 @@ static s32 ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
  * full pipeline reset.  Note - We must hold the SW/FW semaphore before writing
  * to AUTOC, so this function assumes the semaphore is held.
  **/
-static s32 ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
+static int ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
 {
-	s32 ret_val;
+	int ret_val;
 	u32 anlp1_reg = 0;
 	u32 i, autoc_reg, autoc2_reg;
 
@@ -2062,12 +2062,12 @@ static s32 ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
  *  Performs byte read operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  **/
-static s32 ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 				     u8 dev_addr, u8 *data)
 {
 	u32 esdp;
-	s32 status;
-	s32 timeout = 200;
+	int status;
+	int timeout = 200;
 
 	if (hw->phy.qsfp_shared_i2c_bus == true) {
 		/* Acquire I2C bus ownership. */
@@ -2116,12 +2116,12 @@ static s32 ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
  *  Performs byte write operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  **/
-static s32 ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 				      u8 dev_addr, u8 data)
 {
 	u32 esdp;
-	s32 status;
-	s32 timeout = 200;
+	int status;
+	int timeout = 200;
 
 	if (hw->phy.qsfp_shared_i2c_bus == true) {
 		/* Acquire I2C bus ownership. */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 878dd8dff528..9f6c8796583b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -10,10 +10,10 @@
 #include "ixgbe_common.h"
 #include "ixgbe_phy.h"
 
-static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw);
-static s32 ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw);
+static int ixgbe_acquire_eeprom(struct ixgbe_hw *hw);
+static int ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw);
 static void ixgbe_release_eeprom_semaphore(struct ixgbe_hw *hw);
-static s32 ixgbe_ready_eeprom(struct ixgbe_hw *hw);
+static int ixgbe_ready_eeprom(struct ixgbe_hw *hw);
 static void ixgbe_standby_eeprom(struct ixgbe_hw *hw);
 static void ixgbe_shift_out_eeprom_bits(struct ixgbe_hw *hw, u16 data,
 					u16 count);
@@ -22,15 +22,15 @@ static void ixgbe_raise_eeprom_clk(struct ixgbe_hw *hw, u32 *eec);
 static void ixgbe_lower_eeprom_clk(struct ixgbe_hw *hw, u32 *eec);
 static void ixgbe_release_eeprom(struct ixgbe_hw *hw);
 
-static s32 ixgbe_mta_vector(struct ixgbe_hw *hw, u8 *mc_addr);
-static s32 ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg);
-static s32 ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
+static int ixgbe_mta_vector(struct ixgbe_hw *hw, u8 *mc_addr);
+static int ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg);
+static int ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 					     u16 words, u16 *data);
-static s32 ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
-					     u16 words, u16 *data);
-static s32 ixgbe_detect_eeprom_page_size_generic(struct ixgbe_hw *hw,
+static int ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
+					      u16 words, u16 *data);
+static int ixgbe_detect_eeprom_page_size_generic(struct ixgbe_hw *hw,
 						 u16 offset);
-static s32 ixgbe_disable_pcie_primary(struct ixgbe_hw *hw);
+static int ixgbe_disable_pcie_primary(struct ixgbe_hw *hw);
 
 /* Base table for registers values that change by MAC */
 const u32 ixgbe_mvals_8259X[IXGBE_MVALS_IDX_LIMIT] = {
@@ -111,9 +111,9 @@ bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw)
  *
  *  Called at init time to set up flow control.
  **/
-s32 ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
+int ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
 {
-	s32 ret_val = 0;
+	int ret_val = 0;
 	u32 reg = 0, reg_bp = 0;
 	u16 reg_cu = 0;
 	bool locked = false;
@@ -267,9 +267,9 @@ s32 ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
  *  table, VLAN filter table, calls routine to set up link and flow control
  *  settings, and leaves transmit and receive units disabled and uninitialized
  **/
-s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw)
+int ixgbe_start_hw_generic(struct ixgbe_hw *hw)
 {
-	s32 ret_val;
+	int ret_val;
 	u32 ctrl_ext;
 	u16 device_caps;
 
@@ -330,7 +330,7 @@ s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw)
  *     82599
  *     X540
  **/
-s32 ixgbe_start_hw_gen2(struct ixgbe_hw *hw)
+int ixgbe_start_hw_gen2(struct ixgbe_hw *hw)
 {
 	u32 i;
 
@@ -354,9 +354,9 @@ s32 ixgbe_start_hw_gen2(struct ixgbe_hw *hw)
  *  up link and flow control settings, and leaves transmit and receive units
  *  disabled and uninitialized
  **/
-s32 ixgbe_init_hw_generic(struct ixgbe_hw *hw)
+int ixgbe_init_hw_generic(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 
 	/* Reset the hardware */
 	status = hw->mac.ops.reset_hw(hw);
@@ -380,7 +380,7 @@ s32 ixgbe_init_hw_generic(struct ixgbe_hw *hw)
  *  Clears all hardware statistics counters by reading them from the hardware
  *  Statistics counters are clear on read.
  **/
-s32 ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw)
+int ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw)
 {
 	u16 i = 0;
 
@@ -489,10 +489,10 @@ s32 ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw)
  *
  *  Reads the part number string from the EEPROM.
  **/
-s32 ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
+int ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
 				  u32 pba_num_size)
 {
-	s32 ret_val;
+	int ret_val;
 	u16 data;
 	u16 pba_ptr;
 	u16 offset;
@@ -599,7 +599,7 @@ s32 ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
  *  A reset of the adapter must be performed prior to calling this function
  *  in order for the MAC address to have been loaded from the EEPROM into RAR0
  **/
-s32 ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, u8 *mac_addr)
+int ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, u8 *mac_addr)
 {
 	u32 rar_high;
 	u32 rar_low;
@@ -653,7 +653,7 @@ enum ixgbe_bus_speed ixgbe_convert_bus_speed(u16 link_status)
  *
  *  Sets the PCI bus info (speed, width, type) within the ixgbe_hw structure
  **/
-s32 ixgbe_get_bus_info_generic(struct ixgbe_hw *hw)
+int ixgbe_get_bus_info_generic(struct ixgbe_hw *hw)
 {
 	u16 link_status;
 
@@ -709,7 +709,7 @@ void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw)
  *  the shared code and drivers to determine if the adapter is in a stopped
  *  state and should not touch the hardware.
  **/
-s32 ixgbe_stop_adapter_generic(struct ixgbe_hw *hw)
+int ixgbe_stop_adapter_generic(struct ixgbe_hw *hw)
 {
 	u32 reg_val;
 	u16 i;
@@ -759,7 +759,7 @@ s32 ixgbe_stop_adapter_generic(struct ixgbe_hw *hw)
  *  Store the index for the link active LED. This will be used to support
  *  blinking the LED.
  **/
-s32 ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw)
+int ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	u32 led_reg, led_mode;
@@ -800,7 +800,7 @@ s32 ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw)
  *  @hw: pointer to hardware structure
  *  @index: led number to turn on
  **/
-s32 ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index)
+int ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index)
 {
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 
@@ -821,7 +821,7 @@ s32 ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index)
  *  @hw: pointer to hardware structure
  *  @index: led number to turn off
  **/
-s32 ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index)
+int ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index)
 {
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 
@@ -844,7 +844,7 @@ s32 ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index)
  *  Initializes the EEPROM parameters ixgbe_eeprom_info within the
  *  ixgbe_hw struct in order to set up EEPROM access.
  **/
-s32 ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw)
+int ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 	u32 eec;
@@ -896,10 +896,10 @@ s32 ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw)
  *
  *  Reads 16 bit word(s) from EEPROM through bit-bang method
  **/
-s32 ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 					       u16 words, u16 *data)
 {
-	s32 status;
+	int status;
 	u16 i, count;
 
 	hw->eeprom.ops.init_params(hw);
@@ -946,10 +946,10 @@ s32 ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
  *  If ixgbe_eeprom_update_checksum is not called after this function, the
  *  EEPROM will most likely contain an invalid checksum.
  **/
-static s32 ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
+static int ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 					      u16 words, u16 *data)
 {
-	s32 status;
+	int status;
 	u16 word;
 	u16 page_size;
 	u16 i;
@@ -1023,7 +1023,7 @@ static s32 ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
  *  If ixgbe_eeprom_update_checksum is not called after this function, the
  *  EEPROM will most likely contain an invalid checksum.
  **/
-s32 ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
+int ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
 {
 	hw->eeprom.ops.init_params(hw);
 
@@ -1042,10 +1042,10 @@ s32 ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
  *
  *  Reads 16 bit word(s) from EEPROM through bit-bang method
  **/
-s32 ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 					      u16 words, u16 *data)
 {
-	s32 status;
+	int status;
 	u16 i, count;
 
 	hw->eeprom.ops.init_params(hw);
@@ -1084,10 +1084,10 @@ s32 ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
  *
  *  Reads 16 bit word(s) from EEPROM through bit-bang method
  **/
-static s32 ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
+static int ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 					     u16 words, u16 *data)
 {
-	s32 status;
+	int status;
 	u16 word_in;
 	u8 read_opcode = IXGBE_EEPROM_READ_OPCODE_SPI;
 	u16 i;
@@ -1136,7 +1136,7 @@ static s32 ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
  *
  *  Reads 16 bit value from EEPROM through bit-bang method
  **/
-s32 ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 				       u16 *data)
 {
 	hw->eeprom.ops.init_params(hw);
@@ -1156,11 +1156,11 @@ s32 ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
  *
  *  Reads a 16 bit word(s) from the EEPROM using the EERD register.
  **/
-s32 ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 				   u16 words, u16 *data)
 {
 	u32 eerd;
-	s32 status;
+	int status;
 	u32 i;
 
 	hw->eeprom.ops.init_params(hw);
@@ -1199,11 +1199,11 @@ s32 ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
  *  This function is called only when we are writing a new large buffer
  *  at given offset so the data would be overwritten anyway.
  **/
-static s32 ixgbe_detect_eeprom_page_size_generic(struct ixgbe_hw *hw,
+static int ixgbe_detect_eeprom_page_size_generic(struct ixgbe_hw *hw,
 						 u16 offset)
 {
 	u16 data[IXGBE_EEPROM_PAGE_SIZE_MAX];
-	s32 status;
+	int status;
 	u16 i;
 
 	for (i = 0; i < IXGBE_EEPROM_PAGE_SIZE_MAX; i++)
@@ -1239,7 +1239,7 @@ static s32 ixgbe_detect_eeprom_page_size_generic(struct ixgbe_hw *hw,
  *
  *  Reads a 16 bit word from the EEPROM using the EERD register.
  **/
-s32 ixgbe_read_eerd_generic(struct ixgbe_hw *hw, u16 offset, u16 *data)
+int ixgbe_read_eerd_generic(struct ixgbe_hw *hw, u16 offset, u16 *data)
 {
 	return ixgbe_read_eerd_buffer_generic(hw, offset, 1, data);
 }
@@ -1253,11 +1253,11 @@ s32 ixgbe_read_eerd_generic(struct ixgbe_hw *hw, u16 offset, u16 *data)
  *
  *  Write a 16 bit word(s) to the EEPROM using the EEWR register.
  **/
-s32 ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 				    u16 words, u16 *data)
 {
 	u32 eewr;
-	s32 status;
+	int status;
 	u16 i;
 
 	hw->eeprom.ops.init_params(hw);
@@ -1299,7 +1299,7 @@ s32 ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
  *
  *  Write a 16 bit word to the EEPROM using the EEWR register.
  **/
-s32 ixgbe_write_eewr_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
+int ixgbe_write_eewr_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
 {
 	return ixgbe_write_eewr_buffer_generic(hw, offset, 1, &data);
 }
@@ -1312,7 +1312,7 @@ s32 ixgbe_write_eewr_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
  *  Polls the status bit (bit 1) of the EERD or EEWR to determine when the
  *  read or write is done respectively.
  **/
-static s32 ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg)
+static int ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg)
 {
 	u32 i;
 	u32 reg;
@@ -1338,7 +1338,7 @@ static s32 ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg)
  *  Prepares EEPROM for access using bit-bang method. This function should
  *  be called before issuing a command to the EEPROM.
  **/
-static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
+static int ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
 {
 	u32 eec;
 	u32 i;
@@ -1384,7 +1384,7 @@ static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
  *
  *  Sets the hardware semaphores so EEPROM access can occur for bit-bang method
  **/
-static s32 ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw)
+static int ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw)
 {
 	u32 timeout = 2000;
 	u32 i;
@@ -1475,7 +1475,7 @@ static void ixgbe_release_eeprom_semaphore(struct ixgbe_hw *hw)
  *  ixgbe_ready_eeprom - Polls for EEPROM ready
  *  @hw: pointer to hardware structure
  **/
-static s32 ixgbe_ready_eeprom(struct ixgbe_hw *hw)
+static int ixgbe_ready_eeprom(struct ixgbe_hw *hw)
 {
 	u16 i;
 	u8 spi_stat_reg;
@@ -1693,7 +1693,7 @@ static void ixgbe_release_eeprom(struct ixgbe_hw *hw)
  *  ixgbe_calc_eeprom_checksum_generic - Calculates and returns the checksum
  *  @hw: pointer to hardware structure
  **/
-s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
+int ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 {
 	u16 i;
 	u16 j;
@@ -1741,7 +1741,7 @@ s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 
 	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
 
-	return (s32)checksum;
+	return (int)checksum;
 }
 
 /**
@@ -1752,10 +1752,10 @@ s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
  *  Performs checksum calculation and validates the EEPROM checksum.  If the
  *  caller does not need checksum_val, the value can be NULL.
  **/
-s32 ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
+int ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
 					   u16 *checksum_val)
 {
-	s32 status;
+	int status;
 	u16 checksum;
 	u16 read_checksum = 0;
 
@@ -1799,9 +1799,9 @@ s32 ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
  *  ixgbe_update_eeprom_checksum_generic - Updates the EEPROM checksum
  *  @hw: pointer to hardware structure
  **/
-s32 ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw)
+int ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 checksum;
 
 	/*
@@ -1836,7 +1836,7 @@ s32 ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw)
  *
  *  Puts an ethernet address into a receive address register.
  **/
-s32 ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
+int ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
 			  u32 enable_addr)
 {
 	u32 rar_low, rar_high;
@@ -1889,7 +1889,7 @@ s32 ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
  *
  *  Clears an ethernet address from a receive address register.
  **/
-s32 ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index)
+int ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index)
 {
 	u32 rar_high;
 	u32 rar_entries = hw->mac.num_rar_entries;
@@ -1930,7 +1930,7 @@ s32 ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index)
  *  of the receive address registers. Clears the multicast table. Assumes
  *  the receiver is in reset when the routine is called.
  **/
-s32 ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw)
+int ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw)
 {
 	u32 i;
 	u32 rar_entries = hw->mac.num_rar_entries;
@@ -1993,7 +1993,7 @@ s32 ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw)
  *  by the MO field of the MCSTCTRL. The MO field is set during initialization
  *  to mc_filter_type.
  **/
-static s32 ixgbe_mta_vector(struct ixgbe_hw *hw, u8 *mc_addr)
+static int ixgbe_mta_vector(struct ixgbe_hw *hw, u8 *mc_addr)
 {
 	u32 vector = 0;
 
@@ -2062,7 +2062,7 @@ static void ixgbe_set_mta(struct ixgbe_hw *hw, u8 *mc_addr)
  *  registers for the first multicast addresses, and hashes the rest into the
  *  multicast table.
  **/
-s32 ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw,
+int ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw,
 				      struct net_device *netdev)
 {
 	struct netdev_hw_addr *ha;
@@ -2104,7 +2104,7 @@ s32 ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw,
  *
  *  Enables multicast address in RAR and the use of the multicast hash table.
  **/
-s32 ixgbe_enable_mc_generic(struct ixgbe_hw *hw)
+int ixgbe_enable_mc_generic(struct ixgbe_hw *hw)
 {
 	struct ixgbe_addr_filter_info *a = &hw->addr_ctrl;
 
@@ -2121,7 +2121,7 @@ s32 ixgbe_enable_mc_generic(struct ixgbe_hw *hw)
  *
  *  Disables multicast address in RAR and the use of the multicast hash table.
  **/
-s32 ixgbe_disable_mc_generic(struct ixgbe_hw *hw)
+int ixgbe_disable_mc_generic(struct ixgbe_hw *hw)
 {
 	struct ixgbe_addr_filter_info *a = &hw->addr_ctrl;
 
@@ -2137,7 +2137,7 @@ s32 ixgbe_disable_mc_generic(struct ixgbe_hw *hw)
  *
  *  Enable flow control according to the current settings.
  **/
-s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
+int ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
 {
 	u32 mflcn_reg, fccfg_reg;
 	u32 reg;
@@ -2265,7 +2265,7 @@ s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
  *  Find the intersection between advertised settings and link partner's
  *  advertised settings
  **/
-s32 ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
+int ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
 		       u32 adv_sym, u32 adv_asm, u32 lp_sym, u32 lp_asm)
 {
 	if ((!(adv_reg)) ||  (!(lp_reg)))
@@ -2307,10 +2307,10 @@ s32 ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
  *
  *  Enable flow control according on 1 gig fiber.
  **/
-static s32 ixgbe_fc_autoneg_fiber(struct ixgbe_hw *hw)
+static int ixgbe_fc_autoneg_fiber(struct ixgbe_hw *hw)
 {
 	u32 pcs_anadv_reg, pcs_lpab_reg, linkstat;
-	s32 ret_val;
+	int ret_val;
 
 	/*
 	 * On multispeed fiber at 1g, bail out if
@@ -2341,10 +2341,10 @@ static s32 ixgbe_fc_autoneg_fiber(struct ixgbe_hw *hw)
  *
  *  Enable flow control according to IEEE clause 37.
  **/
-static s32 ixgbe_fc_autoneg_backplane(struct ixgbe_hw *hw)
+static int ixgbe_fc_autoneg_backplane(struct ixgbe_hw *hw)
 {
 	u32 links2, anlp1_reg, autoc_reg, links;
-	s32 ret_val;
+	int ret_val;
 
 	/*
 	 * On backplane, bail out if
@@ -2380,7 +2380,7 @@ static s32 ixgbe_fc_autoneg_backplane(struct ixgbe_hw *hw)
  *
  *  Enable flow control according to IEEE clause 37.
  **/
-static s32 ixgbe_fc_autoneg_copper(struct ixgbe_hw *hw)
+static int ixgbe_fc_autoneg_copper(struct ixgbe_hw *hw)
 {
 	u16 technology_ability_reg = 0;
 	u16 lp_technology_ability_reg = 0;
@@ -2407,7 +2407,7 @@ static s32 ixgbe_fc_autoneg_copper(struct ixgbe_hw *hw)
  **/
 void ixgbe_fc_autoneg(struct ixgbe_hw *hw)
 {
-	s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;
+	int ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;
 	ixgbe_link_speed speed;
 	bool link_up;
 
@@ -2514,7 +2514,7 @@ static u32 ixgbe_pcie_timeout_poll(struct ixgbe_hw *hw)
  *  bit hasn't caused the primary requests to be disabled, else 0
  *  is returned signifying primary requests disabled.
  **/
-static s32 ixgbe_disable_pcie_primary(struct ixgbe_hw *hw)
+static int ixgbe_disable_pcie_primary(struct ixgbe_hw *hw)
 {
 	u32 i, poll;
 	u16 value;
@@ -2586,7 +2586,7 @@ static s32 ixgbe_disable_pcie_primary(struct ixgbe_hw *hw)
  *  Acquires the SWFW semaphore through the GSSR register for the specified
  *  function (CSR, PHY0, PHY1, EEPROM, Flash)
  **/
-s32 ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask)
+int ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask)
 {
 	u32 gssr = 0;
 	u32 swmask = mask;
@@ -2654,7 +2654,7 @@ void ixgbe_release_swfw_sync(struct ixgbe_hw *hw, u32 mask)
  *
  * The default case requires no protection so just to the register read.
  **/
-s32 prot_autoc_read_generic(struct ixgbe_hw *hw, bool *locked, u32 *reg_val)
+int prot_autoc_read_generic(struct ixgbe_hw *hw, bool *locked, u32 *reg_val)
 {
 	*locked = false;
 	*reg_val = IXGBE_READ_REG(hw, IXGBE_AUTOC);
@@ -2668,7 +2668,7 @@ s32 prot_autoc_read_generic(struct ixgbe_hw *hw, bool *locked, u32 *reg_val)
  * @locked: bool to indicate whether the SW/FW lock was already taken by
  *	    previous read.
  **/
-s32 prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked)
+int prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked)
 {
 	IXGBE_WRITE_REG(hw, IXGBE_AUTOC, reg_val);
 	return 0;
@@ -2681,7 +2681,7 @@ s32 prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked)
  *  Stops the receive data path and waits for the HW to internally
  *  empty the Rx security block.
  **/
-s32 ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw)
+int ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw)
 {
 #define IXGBE_MAX_SECRX_POLL 40
 	int i;
@@ -2713,7 +2713,7 @@ s32 ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw)
  *
  *  Enables the receive data path
  **/
-s32 ixgbe_enable_rx_buff_generic(struct ixgbe_hw *hw)
+int ixgbe_enable_rx_buff_generic(struct ixgbe_hw *hw)
 {
 	u32 secrxreg;
 
@@ -2732,7 +2732,7 @@ s32 ixgbe_enable_rx_buff_generic(struct ixgbe_hw *hw)
  *
  *  Enables the Rx DMA unit
  **/
-s32 ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval)
+int ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval)
 {
 	if (regval & IXGBE_RXCTRL_RXEN)
 		hw->mac.ops.enable_rx(hw);
@@ -2747,14 +2747,14 @@ s32 ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval)
  *  @hw: pointer to hardware structure
  *  @index: led number to blink
  **/
-s32 ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index)
+int ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index)
 {
 	ixgbe_link_speed speed = 0;
 	bool link_up = false;
 	u32 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 	bool locked = false;
-	s32 ret_val;
+	int ret_val;
 
 	if (index > 3)
 		return IXGBE_ERR_PARAM;
@@ -2795,12 +2795,12 @@ s32 ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index)
  *  @hw: pointer to hardware structure
  *  @index: led number to stop blinking
  **/
-s32 ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index)
+int ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index)
 {
 	u32 autoc_reg = 0;
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 	bool locked = false;
-	s32 ret_val;
+	int ret_val;
 
 	if (index > 3)
 		return IXGBE_ERR_PARAM;
@@ -2834,10 +2834,10 @@ s32 ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index)
  *  pointer, and returns the value at that location.  This is used in both
  *  get and set mac_addr routines.
  **/
-static s32 ixgbe_get_san_mac_addr_offset(struct ixgbe_hw *hw,
-					u16 *san_mac_offset)
+static int ixgbe_get_san_mac_addr_offset(struct ixgbe_hw *hw,
+					 u16 *san_mac_offset)
 {
-	s32 ret_val;
+	int ret_val;
 
 	/*
 	 * First read the EEPROM pointer to see if the MAC addresses are
@@ -2862,11 +2862,11 @@ static s32 ixgbe_get_san_mac_addr_offset(struct ixgbe_hw *hw,
  *  set_lan_id() is called by identify_sfp(), but this cannot be relied
  *  upon for non-SFP connections, so we must call it here.
  **/
-s32 ixgbe_get_san_mac_addr_generic(struct ixgbe_hw *hw, u8 *san_mac_addr)
+int ixgbe_get_san_mac_addr_generic(struct ixgbe_hw *hw, u8 *san_mac_addr)
 {
 	u16 san_mac_data, san_mac_offset;
 	u8 i;
-	s32 ret_val;
+	int ret_val;
 
 	/*
 	 * First read the EEPROM pointer to see if the MAC addresses are
@@ -2955,7 +2955,7 @@ u16 ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw)
  *  @rar: receive address register index to disassociate
  *  @vmdq: VMDq pool index to remove from the rar
  **/
-s32 ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
+int ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 {
 	u32 mpsar_lo, mpsar_hi;
 	u32 rar_entries = hw->mac.num_rar_entries;
@@ -3006,7 +3006,7 @@ s32 ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
  *  @rar: receive address register index to associate with a VMDq index
  *  @vmdq: VMDq pool index
  **/
-s32 ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
+int ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 {
 	u32 mpsar;
 	u32 rar_entries = hw->mac.num_rar_entries;
@@ -3039,7 +3039,7 @@ s32 ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
  *  VFs advertized and not 0.
  *  MPSAR table needs to be updated for SAN_MAC RAR [hw->mac.san_mac_rar_index]
  **/
-s32 ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq)
+int ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq)
 {
 	u32 rar = hw->mac.san_mac_rar_index;
 
@@ -3058,7 +3058,7 @@ s32 ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq)
  *  ixgbe_init_uta_tables_generic - Initialize the Unicast Table Array
  *  @hw: pointer to hardware structure
  **/
-s32 ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw)
+int ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw)
 {
 	int i;
 
@@ -3078,9 +3078,9 @@ s32 ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw)
  *  return the VLVF index where this VLAN id should be placed
  *
  **/
-static s32 ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan, bool vlvf_bypass)
+static int ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan, bool vlvf_bypass)
 {
-	s32 regindex, first_empty_slot;
+	int regindex, first_empty_slot;
 	u32 bits;
 
 	/* short cut the special case */
@@ -3128,11 +3128,11 @@ static s32 ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan, bool vlvf_bypass)
  *
  *  Turn on/off specified VLAN in the VLAN filter table.
  **/
-s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
+int ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
 			   bool vlan_on, bool vlvf_bypass)
 {
 	u32 regidx, vfta_delta, vfta, bits;
-	s32 vlvf_index;
+	int vlvf_index;
 
 	if ((vlan > 4095) || (vind > 63))
 		return IXGBE_ERR_PARAM;
@@ -3239,7 +3239,7 @@ s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
  *
  *  Clears the VLAN filter table, and the VMDq index associated with the filter
  **/
-s32 ixgbe_clear_vfta_generic(struct ixgbe_hw *hw)
+int ixgbe_clear_vfta_generic(struct ixgbe_hw *hw)
 {
 	u32 offset;
 
@@ -3289,7 +3289,7 @@ static bool ixgbe_need_crosstalk_fix(struct ixgbe_hw *hw)
  *
  *  Reads the links register to determine if link is up and the current speed
  **/
-s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
+int ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
 				 bool *link_up, bool link_up_wait_to_complete)
 {
 	bool crosstalk_fix_active = ixgbe_need_crosstalk_fix(hw);
@@ -3409,8 +3409,8 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
  *  This function will read the EEPROM from the alternative SAN MAC address
  *  block to check the support for the alternative WWNN/WWPN prefix support.
  **/
-s32 ixgbe_get_wwn_prefix_generic(struct ixgbe_hw *hw, u16 *wwnn_prefix,
-					u16 *wwpn_prefix)
+int ixgbe_get_wwn_prefix_generic(struct ixgbe_hw *hw, u16 *wwnn_prefix,
+				 u16 *wwpn_prefix)
 {
 	u16 offset, caps;
 	u16 alt_san_mac_blk_offset;
@@ -3507,7 +3507,7 @@ void ixgbe_set_vlan_anti_spoofing(struct ixgbe_hw *hw, bool enable, int vf)
  *  This function will read the EEPROM location for the device capabilities,
  *  and return the word through device_caps.
  **/
-s32 ixgbe_get_device_caps_generic(struct ixgbe_hw *hw, u16 *device_caps)
+int ixgbe_get_device_caps_generic(struct ixgbe_hw *hw, u16 *device_caps)
 {
 	hw->eeprom.ops.read(hw, IXGBE_DEVICE_CAPS, device_caps);
 
@@ -3616,7 +3616,7 @@ u8 ixgbe_calculate_checksum(u8 *buffer, u32 length)
  *  This function assumes that the IXGBE_GSSR_SW_MNG_SM semaphore is held
  *  by the caller.
  **/
-s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
+int ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
 		       u32 timeout)
 {
 	u32 hicr, i, fwsts;
@@ -3688,7 +3688,7 @@ s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
  *  Communicates with the manageability block.  On success return 0
  *  else return IXGBE_ERR_HOST_INTERFACE_COMMAND.
  **/
-s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
+int ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
 				 u32 length, u32 timeout,
 				 bool return_data)
 {
@@ -3696,7 +3696,7 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
 	struct ixgbe_hic_hdr *hdr = buffer;
 	u32 *u32arr = buffer;
 	u16 buf_len, dword_len;
-	s32 status;
+	int status;
 	u32 bi;
 
 	if (!length || length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
@@ -3765,13 +3765,13 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
  *  else returns IXGBE_ERR_SWFW_SYNC when encountering an error acquiring
  *  semaphore or IXGBE_ERR_HOST_INTERFACE_COMMAND when command fails.
  **/
-s32 ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
+int ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
 				 u8 build, u8 sub, __always_unused u16 len,
 				 __always_unused const char *driver_ver)
 {
 	struct ixgbe_hic_drv_info fw_cmd;
 	int i;
-	s32 ret_val;
+	int ret_val;
 
 	fw_cmd.hdr.cmd = FW_CEM_CMD_DRIVER_INFO;
 	fw_cmd.hdr.buf_len = FW_CEM_CMD_DRIVER_INFO_LEN;
@@ -3887,10 +3887,10 @@ static const u8 ixgbe_emc_therm_limit[4] = {
  *
  *  Returns error code.
  **/
-static s32 ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
+static int ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
 			      u16 *ets_offset)
 {
-	s32 status;
+	int status;
 
 	status = hw->eeprom.ops.read(hw, IXGBE_ETS_CFG, ets_offset);
 	if (status)
@@ -3915,9 +3915,9 @@ static s32 ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
  *
  *  Returns the thermal sensor data structure
  **/
-s32 ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
+int ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 ets_offset;
 	u16 ets_cfg;
 	u16 ets_sensor;
@@ -3971,9 +3971,9 @@ s32 ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
  * Inits the thermal sensor thresholds according to the NVM map
  * and save off the threshold and location values into mac.thermal_sensor_data
  **/
-s32 ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
+int ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 ets_offset;
 	u16 ets_cfg;
 	u16 ets_sensor;
@@ -4205,13 +4205,13 @@ bool ixgbe_mng_present(struct ixgbe_hw *hw)
  *
  *  Set the link speed in the MAC and/or PHY register and restarts link.
  */
-s32 ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
+int ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
 					  ixgbe_link_speed speed,
 					  bool autoneg_wait_to_complete)
 {
 	ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 	ixgbe_link_speed highest_link_speed = IXGBE_LINK_SPEED_UNKNOWN;
-	s32 status = 0;
+	int status = 0;
 	u32 speedcnt = 0;
 	u32 i = 0;
 	bool autoneg, link_up = false;
@@ -4353,7 +4353,7 @@ s32 ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
 void ixgbe_set_soft_rate_select_speed(struct ixgbe_hw *hw,
 				      ixgbe_link_speed speed)
 {
-	s32 status;
+	int status;
 	u8 rs, eeprom_data;
 
 	switch (speed) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
index 4b531e8ae38a..c26df85e30f8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
@@ -8,90 +8,90 @@
 #include "ixgbe.h"
 
 u16 ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw);
-s32 ixgbe_init_ops_generic(struct ixgbe_hw *hw);
-s32 ixgbe_init_hw_generic(struct ixgbe_hw *hw);
-s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw);
-s32 ixgbe_start_hw_gen2(struct ixgbe_hw *hw);
-s32 ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw);
-s32 ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
+int ixgbe_init_ops_generic(struct ixgbe_hw *hw);
+int ixgbe_init_hw_generic(struct ixgbe_hw *hw);
+int ixgbe_start_hw_generic(struct ixgbe_hw *hw);
+int ixgbe_start_hw_gen2(struct ixgbe_hw *hw);
+int ixgbe_clear_hw_cntrs_generic(struct ixgbe_hw *hw);
+int ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
 				  u32 pba_num_size);
-s32 ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, u8 *mac_addr);
+int ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, u8 *mac_addr);
 enum ixgbe_bus_width ixgbe_convert_bus_width(u16 link_status);
 enum ixgbe_bus_speed ixgbe_convert_bus_speed(u16 link_status);
-s32 ixgbe_get_bus_info_generic(struct ixgbe_hw *hw);
+int ixgbe_get_bus_info_generic(struct ixgbe_hw *hw);
 void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw);
-s32 ixgbe_stop_adapter_generic(struct ixgbe_hw *hw);
+int ixgbe_stop_adapter_generic(struct ixgbe_hw *hw);
 
-s32 ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index);
-s32 ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index);
-s32 ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw);
+int ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index);
+int ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index);
+int ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw);
 
-s32 ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw);
-s32 ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data);
-s32 ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw);
+int ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data);
+int ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 					       u16 words, u16 *data);
-s32 ixgbe_read_eerd_generic(struct ixgbe_hw *hw, u16 offset, u16 *data);
-s32 ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_read_eerd_generic(struct ixgbe_hw *hw, u16 offset, u16 *data);
+int ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 				   u16 words, u16 *data);
-s32 ixgbe_write_eewr_generic(struct ixgbe_hw *hw, u16 offset, u16 data);
-s32 ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_write_eewr_generic(struct ixgbe_hw *hw, u16 offset, u16 data);
+int ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 				    u16 words, u16 *data);
-s32 ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 				       u16 *data);
-s32 ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
+int ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 					      u16 words, u16 *data);
-s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw);
-s32 ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
+int ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw);
+int ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
 					   u16 *checksum_val);
-s32 ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw);
+int ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw);
 
-s32 ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
+int ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
 			  u32 enable_addr);
-s32 ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index);
-s32 ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw);
-s32 ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw,
+int ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index);
+int ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw);
+int ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw,
 				      struct net_device *netdev);
-s32 ixgbe_enable_mc_generic(struct ixgbe_hw *hw);
-s32 ixgbe_disable_mc_generic(struct ixgbe_hw *hw);
-s32 ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw);
-s32 ixgbe_enable_rx_buff_generic(struct ixgbe_hw *hw);
-s32 ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval);
-s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw);
-s32 ixgbe_setup_fc_generic(struct ixgbe_hw *);
+int ixgbe_enable_mc_generic(struct ixgbe_hw *hw);
+int ixgbe_disable_mc_generic(struct ixgbe_hw *hw);
+int ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw);
+int ixgbe_enable_rx_buff_generic(struct ixgbe_hw *hw);
+int ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval);
+int ixgbe_fc_enable_generic(struct ixgbe_hw *hw);
+int ixgbe_setup_fc_generic(struct ixgbe_hw *);
 bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw);
 void ixgbe_fc_autoneg(struct ixgbe_hw *hw);
 
-s32 ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask);
+int ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_release_swfw_sync(struct ixgbe_hw *hw, u32 mask);
-s32 ixgbe_get_san_mac_addr_generic(struct ixgbe_hw *hw, u8 *san_mac_addr);
-s32 ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq);
-s32 ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq);
-s32 ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq);
-s32 ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw);
-s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan,
+int ixgbe_get_san_mac_addr_generic(struct ixgbe_hw *hw, u8 *san_mac_addr);
+int ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq);
+int ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq);
+int ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq);
+int ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw);
+int ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan,
 			   u32 vind, bool vlan_on, bool vlvf_bypass);
-s32 ixgbe_clear_vfta_generic(struct ixgbe_hw *hw);
-s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw,
+int ixgbe_clear_vfta_generic(struct ixgbe_hw *hw);
+int ixgbe_check_mac_link_generic(struct ixgbe_hw *hw,
 				 ixgbe_link_speed *speed,
 				 bool *link_up, bool link_up_wait_to_complete);
-s32 ixgbe_get_wwn_prefix_generic(struct ixgbe_hw *hw, u16 *wwnn_prefix,
+int ixgbe_get_wwn_prefix_generic(struct ixgbe_hw *hw, u16 *wwnn_prefix,
 				 u16 *wwpn_prefix);
 
-s32 prot_autoc_read_generic(struct ixgbe_hw *hw, bool *, u32 *reg_val);
-s32 prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked);
+int prot_autoc_read_generic(struct ixgbe_hw *hw, bool *, u32 *reg_val);
+int prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked);
 
-s32 ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index);
-s32 ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index);
+int ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index);
+int ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index);
 void ixgbe_set_mac_anti_spoofing(struct ixgbe_hw *hw, bool enable, int vf);
 void ixgbe_set_vlan_anti_spoofing(struct ixgbe_hw *hw, bool enable, int vf);
-s32 ixgbe_get_device_caps_generic(struct ixgbe_hw *hw, u16 *device_caps);
-s32 ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
+int ixgbe_get_device_caps_generic(struct ixgbe_hw *hw, u16 *device_caps);
+int ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
 				 u8 build, u8 ver, u16 len, const char *str);
 u8 ixgbe_calculate_checksum(u8 *buffer, u32 length);
-s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *, u32 length,
+int ixgbe_host_interface_command(struct ixgbe_hw *hw, void *, u32 length,
 				 u32 timeout, bool return_data);
-s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 len, u32 timeout);
-s32 ixgbe_fw_phy_activity(struct ixgbe_hw *hw, u16 activity,
+int ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 len, u32 timeout);
+int ixgbe_fw_phy_activity(struct ixgbe_hw *hw, u16 activity,
 			  u32 (*data)[FW_PHY_ACT_DATA_COUNT]);
 void ixgbe_clear_tx_pending(struct ixgbe_hw *hw);
 bool ixgbe_mng_present(struct ixgbe_hw *hw);
@@ -112,8 +112,8 @@ extern const u32 ixgbe_mvals_8259X[IXGBE_MVALS_IDX_LIMIT];
 #define IXGBE_EMC_DIODE3_DATA		0x2A
 #define IXGBE_EMC_DIODE3_THERM_LIMIT	0x30
 
-s32 ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw);
-s32 ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw);
+int ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw);
+int ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw);
 void ixgbe_get_etk_id(struct ixgbe_hw *hw,
 		      struct ixgbe_nvm_version *nvm_ver);
 void ixgbe_get_oem_prod_version(struct ixgbe_hw *hw,
@@ -122,7 +122,7 @@ void ixgbe_get_orom_version(struct ixgbe_hw *hw,
 			    struct ixgbe_nvm_version *nvm_ver);
 void ixgbe_disable_rx_generic(struct ixgbe_hw *hw);
 void ixgbe_enable_rx_generic(struct ixgbe_hw *hw);
-s32 ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
+int ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
 					  ixgbe_link_speed speed,
 					  bool autoneg_wait_to_complete);
 void ixgbe_set_soft_rate_select_speed(struct ixgbe_hw *hw,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c
index d26cea5b43bd..502666f28124 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c
@@ -18,7 +18,7 @@
  * @max: max credits by traffic class
  * @max_frame: maximum frame size
  */
-static s32 ixgbe_ieee_credits(__u8 *bw, __u16 *refill,
+static int ixgbe_ieee_credits(__u8 *bw, __u16 *refill,
 			      __u16 *max, int max_frame)
 {
 	int min_percent = 100;
@@ -59,7 +59,7 @@ static s32 ixgbe_ieee_credits(__u8 *bw, __u16 *refill,
  * It should be called only after the rules are checked by
  * ixgbe_dcb_check_config().
  */
-s32 ixgbe_dcb_calculate_tc_credits(struct ixgbe_hw *hw,
+int ixgbe_dcb_calculate_tc_credits(struct ixgbe_hw *hw,
 				   struct ixgbe_dcb_config *dcb_config,
 				   int max_frame, u8 direction)
 {
@@ -247,7 +247,7 @@ void ixgbe_dcb_unpack_map(struct ixgbe_dcb_config *cfg, int direction, u8 *map)
  *
  * Configure dcb settings and enable dcb mode.
  */
-s32 ixgbe_dcb_hw_config(struct ixgbe_hw *hw,
+int ixgbe_dcb_hw_config(struct ixgbe_hw *hw,
 			struct ixgbe_dcb_config *dcb_config)
 {
 	u8 pfc_en;
@@ -283,7 +283,7 @@ s32 ixgbe_dcb_hw_config(struct ixgbe_hw *hw,
 }
 
 /* Helper routines to abstract HW specifics from DCB netlink ops */
-s32 ixgbe_dcb_hw_pfc_config(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
+int ixgbe_dcb_hw_pfc_config(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
 {
 	switch (hw->mac.type) {
 	case ixgbe_mac_82598EB:
@@ -300,7 +300,7 @@ s32 ixgbe_dcb_hw_pfc_config(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
 	return -EINVAL;
 }
 
-s32 ixgbe_dcb_hw_ets(struct ixgbe_hw *hw, struct ieee_ets *ets, int max_frame)
+int ixgbe_dcb_hw_ets(struct ixgbe_hw *hw, struct ieee_ets *ets, int max_frame)
 {
 	__u16 refill[IEEE_8021QAZ_MAX_TCS], max[IEEE_8021QAZ_MAX_TCS];
 	__u8 prio_type[IEEE_8021QAZ_MAX_TCS];
@@ -333,7 +333,7 @@ s32 ixgbe_dcb_hw_ets(struct ixgbe_hw *hw, struct ieee_ets *ets, int max_frame)
 				       bwg_id, prio_type, ets->prio_tc);
 }
 
-s32 ixgbe_dcb_hw_ets_config(struct ixgbe_hw *hw,
+int ixgbe_dcb_hw_ets_config(struct ixgbe_hw *hw,
 			    u16 *refill, u16 *max, u8 *bwg_id,
 			    u8 *prio_type, u8 *prio_tc)
 {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.h
index 60cd5863bf5e..91788e4c4e19 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.h
@@ -124,15 +124,15 @@ void ixgbe_dcb_unpack_map(struct ixgbe_dcb_config *, int, u8 *);
 u8 ixgbe_dcb_get_tc_from_up(struct ixgbe_dcb_config *, int, u8);
 
 /* DCB credits calculation */
-s32 ixgbe_dcb_calculate_tc_credits(struct ixgbe_hw *,
+int ixgbe_dcb_calculate_tc_credits(struct ixgbe_hw *,
 				   struct ixgbe_dcb_config *, int, u8);
 
 /* DCB hw initialization */
-s32 ixgbe_dcb_hw_ets(struct ixgbe_hw *hw, struct ieee_ets *ets, int max);
-s32 ixgbe_dcb_hw_ets_config(struct ixgbe_hw *hw, u16 *refill, u16 *max,
+int ixgbe_dcb_hw_ets(struct ixgbe_hw *hw, struct ieee_ets *ets, int max);
+int ixgbe_dcb_hw_ets_config(struct ixgbe_hw *hw, u16 *refill, u16 *max,
 			    u8 *bwg_id, u8 *prio_type, u8 *tc_prio);
-s32 ixgbe_dcb_hw_pfc_config(struct ixgbe_hw *hw, u8 pfc_en, u8 *tc_prio);
-s32 ixgbe_dcb_hw_config(struct ixgbe_hw *, struct ixgbe_dcb_config *);
+int ixgbe_dcb_hw_pfc_config(struct ixgbe_hw *hw, u8 pfc_en, u8 *tc_prio);
+int ixgbe_dcb_hw_config(struct ixgbe_hw *, struct ixgbe_dcb_config *);
 
 void ixgbe_dcb_read_rtrup2tc(struct ixgbe_hw *hw, u8 *map);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c
index 379ae747cdce..185c3e5f9837 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c
@@ -15,10 +15,8 @@
  *
  * Configure Rx Data Arbiter and credits for each traffic class.
  */
-s32 ixgbe_dcb_config_rx_arbiter_82598(struct ixgbe_hw *hw,
-					u16 *refill,
-					u16 *max,
-					u8 *prio_type)
+int ixgbe_dcb_config_rx_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
+				      u16 *max, u8 *prio_type)
 {
 	u32    reg           = 0;
 	u32    credit_refill = 0;
@@ -75,11 +73,8 @@ s32 ixgbe_dcb_config_rx_arbiter_82598(struct ixgbe_hw *hw,
  *
  * Configure Tx Descriptor Arbiter and credits for each traffic class.
  */
-s32 ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw,
-						u16 *refill,
-						u16 *max,
-						u8 *bwg_id,
-						u8 *prio_type)
+int ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
+					   u16 *max, u8 *bwg_id, u8 *prio_type)
 {
 	u32    reg, max_credits;
 	u8     i;
@@ -124,11 +119,8 @@ s32 ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw,
  *
  * Configure Tx Data Arbiter and credits for each traffic class.
  */
-s32 ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw,
-						u16 *refill,
-						u16 *max,
-						u8 *bwg_id,
-						u8 *prio_type)
+int ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
+					   u16 *max, u8 *bwg_id, u8 *prio_type)
 {
 	u32 reg;
 	u8 i;
@@ -171,7 +163,7 @@ s32 ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw,
  *
  * Configure Priority Flow Control for each traffic class.
  */
-s32 ixgbe_dcb_config_pfc_82598(struct ixgbe_hw *hw, u8 pfc_en)
+int ixgbe_dcb_config_pfc_82598(struct ixgbe_hw *hw, u8 pfc_en)
 {
 	u32 fcrtl, reg;
 	u8  i;
@@ -224,7 +216,7 @@ s32 ixgbe_dcb_config_pfc_82598(struct ixgbe_hw *hw, u8 pfc_en)
  * Configure queue statistics registers, all queues belonging to same traffic
  * class uses a single set of queue statistics counters.
  */
-static s32 ixgbe_dcb_config_tc_stats_82598(struct ixgbe_hw *hw)
+static int ixgbe_dcb_config_tc_stats_82598(struct ixgbe_hw *hw)
 {
 	u32 reg = 0;
 	u8  i   = 0;
@@ -260,7 +252,7 @@ static s32 ixgbe_dcb_config_tc_stats_82598(struct ixgbe_hw *hw)
  *
  * Configure dcb settings and enable dcb mode.
  */
-s32 ixgbe_dcb_hw_config_82598(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
+int ixgbe_dcb_hw_config_82598(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
 			      u16 *max, u8 *bwg_id, u8 *prio_type)
 {
 	ixgbe_dcb_config_rx_arbiter_82598(hw, refill, max, prio_type);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.h
index fdca41abb44c..5bf3f13c6953 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.h
@@ -46,27 +46,19 @@
 /* DCB hardware-specific driver APIs */
 
 /* DCB PFC functions */
-s32 ixgbe_dcb_config_pfc_82598(struct ixgbe_hw *, u8 pfc_en);
+int ixgbe_dcb_config_pfc_82598(struct ixgbe_hw *, u8 pfc_en);
 
 /* DCB hw initialization */
-s32 ixgbe_dcb_config_rx_arbiter_82598(struct ixgbe_hw *hw,
-					u16 *refill,
-					u16 *max,
-					u8 *prio_type);
-
-s32 ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw,
-						u16 *refill,
-						u16 *max,
-						u8 *bwg_id,
-						u8 *prio_type);
-
-s32 ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw,
-						u16 *refill,
-						u16 *max,
-						u8 *bwg_id,
-						u8 *prio_type);
-
-s32 ixgbe_dcb_hw_config_82598(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
+int ixgbe_dcb_config_rx_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
+				      u16 *max, u8 *prio_type);
+
+int ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
+					   u16 *max, u8 *bwg_id, u8 *prio_type);
+
+int ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
+					   u16 *max, u8 *bwg_id, u8 *prio_type);
+
+int ixgbe_dcb_hw_config_82598(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
 			      u16 *max, u8 *bwg_id, u8 *prio_type);
 
 #endif /* _DCB_82598_CONFIG_H */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c
index 7948849840a5..c61bd9059541 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c
@@ -17,7 +17,7 @@
  *
  * Configure Rx Packet Arbiter and credits for each traffic class.
  */
-s32 ixgbe_dcb_config_rx_arbiter_82599(struct ixgbe_hw *hw,
+int ixgbe_dcb_config_rx_arbiter_82599(struct ixgbe_hw *hw,
 				      u16 *refill,
 				      u16 *max,
 				      u8 *bwg_id,
@@ -76,7 +76,7 @@ s32 ixgbe_dcb_config_rx_arbiter_82599(struct ixgbe_hw *hw,
  *
  * Configure Tx Descriptor Arbiter and credits for each traffic class.
  */
-s32 ixgbe_dcb_config_tx_desc_arbiter_82599(struct ixgbe_hw *hw,
+int ixgbe_dcb_config_tx_desc_arbiter_82599(struct ixgbe_hw *hw,
 					   u16 *refill,
 					   u16 *max,
 					   u8 *bwg_id,
@@ -128,7 +128,7 @@ s32 ixgbe_dcb_config_tx_desc_arbiter_82599(struct ixgbe_hw *hw,
  *
  * Configure Tx Packet Arbiter and credits for each traffic class.
  */
-s32 ixgbe_dcb_config_tx_data_arbiter_82599(struct ixgbe_hw *hw,
+int ixgbe_dcb_config_tx_data_arbiter_82599(struct ixgbe_hw *hw,
 					   u16 *refill,
 					   u16 *max,
 					   u8 *bwg_id,
@@ -187,7 +187,7 @@ s32 ixgbe_dcb_config_tx_data_arbiter_82599(struct ixgbe_hw *hw,
  *
  * Configure Priority Flow Control (PFC) for each traffic class.
  */
-s32 ixgbe_dcb_config_pfc_82599(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
+int ixgbe_dcb_config_pfc_82599(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
 {
 	u32 i, j, fcrtl, reg;
 	u8 max_tc = 0;
@@ -272,7 +272,7 @@ s32 ixgbe_dcb_config_pfc_82599(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
  * Configure queue statistics registers, all queues belonging to same traffic
  * class uses a single set of queue statistics counters.
  */
-static s32 ixgbe_dcb_config_tc_stats_82599(struct ixgbe_hw *hw)
+static int ixgbe_dcb_config_tc_stats_82599(struct ixgbe_hw *hw)
 {
 	u32 reg = 0;
 	u8  i   = 0;
@@ -330,7 +330,7 @@ static s32 ixgbe_dcb_config_tc_stats_82599(struct ixgbe_hw *hw)
  *
  * Configure dcb settings and enable dcb mode.
  */
-s32 ixgbe_dcb_hw_config_82599(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
+int ixgbe_dcb_hw_config_82599(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
 			      u16 *max, u8 *bwg_id, u8 *prio_type, u8 *prio_tc)
 {
 	ixgbe_dcb_config_rx_arbiter_82599(hw, refill, max, bwg_id,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.h
index c6f084883cab..f6e5a87c03e3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.h
@@ -70,30 +70,21 @@
 /* DCB hardware-specific driver APIs */
 
 /* DCB PFC functions */
-s32 ixgbe_dcb_config_pfc_82599(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc);
+int ixgbe_dcb_config_pfc_82599(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc);
 
 /* DCB hw initialization */
-s32 ixgbe_dcb_config_rx_arbiter_82599(struct ixgbe_hw *hw,
-					u16 *refill,
-					u16 *max,
-					u8 *bwg_id,
-					u8 *prio_type,
-					u8 *prio_tc);
-
-s32 ixgbe_dcb_config_tx_desc_arbiter_82599(struct ixgbe_hw *hw,
-						u16 *refill,
-						u16 *max,
-						u8 *bwg_id,
-						u8 *prio_type);
-
-s32 ixgbe_dcb_config_tx_data_arbiter_82599(struct ixgbe_hw *hw,
-						u16 *refill,
-						u16 *max,
-						u8 *bwg_id,
-						u8 *prio_type,
-						u8 *prio_tc);
-
-s32 ixgbe_dcb_hw_config_82599(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
+int ixgbe_dcb_config_rx_arbiter_82599(struct ixgbe_hw *hw, u16 *refill,
+				      u16 *max, u8 *bwg_id, u8 *prio_type,
+				      u8 *prio_tc);
+
+int ixgbe_dcb_config_tx_desc_arbiter_82599(struct ixgbe_hw *hw, u16 *refill,
+					   u16 *max, u8 *bwg_id, u8 *prio_type);
+
+int ixgbe_dcb_config_tx_data_arbiter_82599(struct ixgbe_hw *hw, u16 *refill,
+					   u16 *max, u8 *bwg_id, u8 *prio_type,
+					   u8 *prio_tc);
+
+int ixgbe_dcb_hw_config_82599(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
 			      u16 *max, u8 *bwg_id, u8 *prio_type,
 			      u8 *prio_tc);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 0bbad4a5cc2f..90b9bacc299b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -459,7 +459,7 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 advertised, old;
-	s32 err = 0;
+	int err = 0;
 
 	if ((hw->phy.media_type == ixgbe_media_type_copper) ||
 	    (hw->phy.multispeed_fiber)) {
@@ -3324,7 +3324,7 @@ static int ixgbe_get_module_info(struct net_device *dev,
 {
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
-	s32 status;
+	int status;
 	u8 sff8472_rev, addr_mode;
 	bool page_swap = false;
 
@@ -3370,7 +3370,7 @@ static int ixgbe_get_module_eeprom(struct net_device *dev,
 {
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
-	s32 status = IXGBE_ERR_PHY_ADDR_INVALID;
+	int status = IXGBE_ERR_PHY_ADDR_INVALID;
 	u8 databyte = 0xFF;
 	int i = 0;
 
@@ -3427,7 +3427,7 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_eee *edata)
 {
 	u32 info[FW_PHY_ACT_DATA_COUNT] = { 0 };
 	struct ixgbe_hw *hw = &adapter->hw;
-	s32 rc;
+	int rc;
 	u16 i;
 
 	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_UD_2, &info);
@@ -3479,7 +3479,7 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ethtool_eee eee_data;
-	s32 ret_val;
+	int ret_val;
 
 	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1726297f2e0d..257942f2aabe 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -205,7 +205,7 @@ static int ixgbe_read_pci_cfg_word_parent(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
-static s32 ixgbe_get_parent_bus_info(struct ixgbe_adapter *adapter)
+static int ixgbe_get_parent_bus_info(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	u16 link_status = 0;
@@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 eicr = adapter->interrupt_event;
-	s32 rc;
+	int rc;
 
 	if (test_bit(__IXGBE_DOWN, &adapter->state))
 		return;
@@ -7811,7 +7811,7 @@ static void ixgbe_watchdog_subtask(struct ixgbe_adapter *adapter)
 static void ixgbe_sfp_detection_subtask(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
-	s32 err;
+	int err;
 
 	/* not searching for SFP so there is nothing to do here */
 	if (!(adapter->flags2 & IXGBE_FLAG2_SEARCH_FOR_SFP) &&
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
index 5679293e53f7..b3739c96a05d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
@@ -15,7 +15,7 @@
  *
  *  returns SUCCESS if it successfully read message from buffer
  **/
-s32 ixgbe_read_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
+int ixgbe_read_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
@@ -38,7 +38,7 @@ s32 ixgbe_read_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
  *
  *  returns SUCCESS if it successfully copied message into the buffer
  **/
-s32 ixgbe_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
+int ixgbe_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
@@ -58,7 +58,7 @@ s32 ixgbe_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
  *
  *  returns SUCCESS if the Status bit was found or else ERR_MBX
  **/
-s32 ixgbe_check_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
+int ixgbe_check_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
@@ -75,7 +75,7 @@ s32 ixgbe_check_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
  *
  *  returns SUCCESS if the Status bit was found or else ERR_MBX
  **/
-s32 ixgbe_check_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
+int ixgbe_check_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
@@ -92,7 +92,7 @@ s32 ixgbe_check_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
  *
  *  returns SUCCESS if the Status bit was found or else ERR_MBX
  **/
-s32 ixgbe_check_for_rst(struct ixgbe_hw *hw, u16 mbx_id)
+int ixgbe_check_for_rst(struct ixgbe_hw *hw, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
@@ -109,7 +109,7 @@ s32 ixgbe_check_for_rst(struct ixgbe_hw *hw, u16 mbx_id)
  *
  *  returns SUCCESS if it successfully received a message notification
  **/
-static s32 ixgbe_poll_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
+static int ixgbe_poll_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 	int countdown = mbx->timeout;
@@ -134,7 +134,7 @@ static s32 ixgbe_poll_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
  *
  *  returns SUCCESS if it successfully received a message acknowledgement
  **/
-static s32 ixgbe_poll_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
+static int ixgbe_poll_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 	int countdown = mbx->timeout;
@@ -162,11 +162,11 @@ static s32 ixgbe_poll_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
  *  returns SUCCESS if it successfully received a message notification and
  *  copied it into the receive buffer.
  **/
-static s32 ixgbe_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
+static int ixgbe_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
 				 u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 ret_val;
+	int ret_val;
 
 	if (!mbx->ops)
 		return IXGBE_ERR_MBX;
@@ -189,11 +189,11 @@ static s32 ixgbe_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
  *  returns SUCCESS if it successfully copied message into the buffer and
  *  received an ack to that message within delay * timeout period
  **/
-static s32 ixgbe_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
-			   u16 mbx_id)
+static int ixgbe_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
+				  u16 mbx_id)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 ret_val;
+	int ret_val;
 
 	/* exit if either we can't write or there isn't a defined timeout */
 	if (!mbx->ops || !mbx->timeout)
@@ -208,7 +208,7 @@ static s32 ixgbe_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
 	return ixgbe_poll_for_ack(hw, mbx_id);
 }
 
-static s32 ixgbe_check_for_bit_pf(struct ixgbe_hw *hw, u32 mask, s32 index)
+static int ixgbe_check_for_bit_pf(struct ixgbe_hw *hw, u32 mask, int index)
 {
 	u32 mbvficr = IXGBE_READ_REG(hw, IXGBE_MBVFICR(index));
 
@@ -227,9 +227,9 @@ static s32 ixgbe_check_for_bit_pf(struct ixgbe_hw *hw, u32 mask, s32 index)
  *
  *  returns SUCCESS if the VF has set the Status bit or else ERR_MBX
  **/
-static s32 ixgbe_check_for_msg_pf(struct ixgbe_hw *hw, u16 vf_number)
+static int ixgbe_check_for_msg_pf(struct ixgbe_hw *hw, u16 vf_number)
 {
-	s32 index = IXGBE_MBVFICR_INDEX(vf_number);
+	int index = IXGBE_MBVFICR_INDEX(vf_number);
 	u32 vf_bit = vf_number % 16;
 
 	if (!ixgbe_check_for_bit_pf(hw, IXGBE_MBVFICR_VFREQ_VF1 << vf_bit,
@@ -248,9 +248,9 @@ static s32 ixgbe_check_for_msg_pf(struct ixgbe_hw *hw, u16 vf_number)
  *
  *  returns SUCCESS if the VF has set the Status bit or else ERR_MBX
  **/
-static s32 ixgbe_check_for_ack_pf(struct ixgbe_hw *hw, u16 vf_number)
+static int ixgbe_check_for_ack_pf(struct ixgbe_hw *hw, u16 vf_number)
 {
-	s32 index = IXGBE_MBVFICR_INDEX(vf_number);
+	int index = IXGBE_MBVFICR_INDEX(vf_number);
 	u32 vf_bit = vf_number % 16;
 
 	if (!ixgbe_check_for_bit_pf(hw, IXGBE_MBVFICR_VFACK_VF1 << vf_bit,
@@ -269,7 +269,7 @@ static s32 ixgbe_check_for_ack_pf(struct ixgbe_hw *hw, u16 vf_number)
  *
  *  returns SUCCESS if the VF has set the Status bit or else ERR_MBX
  **/
-static s32 ixgbe_check_for_rst_pf(struct ixgbe_hw *hw, u16 vf_number)
+static int ixgbe_check_for_rst_pf(struct ixgbe_hw *hw, u16 vf_number)
 {
 	u32 reg_offset = (vf_number < 32) ? 0 : 1;
 	u32 vf_shift = vf_number % 32;
@@ -305,7 +305,7 @@ static s32 ixgbe_check_for_rst_pf(struct ixgbe_hw *hw, u16 vf_number)
  *
  *  return SUCCESS if we obtained the mailbox lock
  **/
-static s32 ixgbe_obtain_mbx_lock_pf(struct ixgbe_hw *hw, u16 vf_number)
+static int ixgbe_obtain_mbx_lock_pf(struct ixgbe_hw *hw, u16 vf_number)
 {
 	u32 p2v_mailbox;
 
@@ -329,10 +329,10 @@ static s32 ixgbe_obtain_mbx_lock_pf(struct ixgbe_hw *hw, u16 vf_number)
  *
  *  returns SUCCESS if it successfully copied message into the buffer
  **/
-static s32 ixgbe_write_mbx_pf(struct ixgbe_hw *hw, u32 *msg, u16 size,
+static int ixgbe_write_mbx_pf(struct ixgbe_hw *hw, u32 *msg, u16 size,
 			      u16 vf_number)
 {
-	s32 ret_val;
+	int ret_val;
 	u16 i;
 
 	/* lock the mailbox to prevent pf/vf race condition */
@@ -368,10 +368,10 @@ static s32 ixgbe_write_mbx_pf(struct ixgbe_hw *hw, u32 *msg, u16 size,
  *  memory buffer.  The presumption is that the caller knows that there was
  *  a message due to a VF request so no polling for message is needed.
  **/
-static s32 ixgbe_read_mbx_pf(struct ixgbe_hw *hw, u32 *msg, u16 size,
+static int ixgbe_read_mbx_pf(struct ixgbe_hw *hw, u32 *msg, u16 size,
 			     u16 vf_number)
 {
-	s32 ret_val;
+	int ret_val;
 	u16 i;
 
 	/* lock the mailbox to prevent pf/vf race condition */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index 8f4316b19278..a5cf8ef2a4b8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -97,11 +97,11 @@ enum ixgbe_pfvf_api_rev {
 #define IXGBE_VF_MBX_INIT_TIMEOUT 2000 /* number of retries on mailbox */
 #define IXGBE_VF_MBX_INIT_DELAY   500  /* microseconds between retries */
 
-s32 ixgbe_read_mbx(struct ixgbe_hw *, u32 *, u16, u16);
-s32 ixgbe_write_mbx(struct ixgbe_hw *, u32 *, u16, u16);
-s32 ixgbe_check_for_msg(struct ixgbe_hw *, u16);
-s32 ixgbe_check_for_ack(struct ixgbe_hw *, u16);
-s32 ixgbe_check_for_rst(struct ixgbe_hw *, u16);
+int ixgbe_read_mbx(struct ixgbe_hw *, u32 *, u16, u16);
+int ixgbe_write_mbx(struct ixgbe_hw *, u32 *, u16, u16);
+int ixgbe_check_for_msg(struct ixgbe_hw *, u16);
+int ixgbe_check_for_ack(struct ixgbe_hw *, u16);
+int ixgbe_check_for_rst(struct ixgbe_hw *, u16);
 #ifdef CONFIG_PCI_IOV
 void ixgbe_init_mbx_params_pf(struct ixgbe_hw *);
 #endif /* CONFIG_PCI_IOV */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 689470c1e8ad..ed53e64bc246 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -11,19 +11,19 @@
 
 static void ixgbe_i2c_start(struct ixgbe_hw *hw);
 static void ixgbe_i2c_stop(struct ixgbe_hw *hw);
-static s32 ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data);
-static s32 ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data);
-static s32 ixgbe_get_i2c_ack(struct ixgbe_hw *hw);
-static s32 ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data);
-static s32 ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data);
+static int ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data);
+static int ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data);
+static int ixgbe_get_i2c_ack(struct ixgbe_hw *hw);
+static int ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data);
+static int ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data);
 static void ixgbe_raise_i2c_clk(struct ixgbe_hw *hw, u32 *i2cctl);
 static void ixgbe_lower_i2c_clk(struct ixgbe_hw *hw, u32 *i2cctl);
-static s32 ixgbe_set_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl, bool data);
+static int ixgbe_set_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl, bool data);
 static bool ixgbe_get_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl);
 static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw);
 static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id);
-static s32 ixgbe_get_phy_id(struct ixgbe_hw *hw);
-static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw);
+static int ixgbe_get_phy_id(struct ixgbe_hw *hw);
+static int ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw);
 
 /**
  *  ixgbe_out_i2c_byte_ack - Send I2C byte with ack
@@ -32,9 +32,9 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw);
  *
  *  Returns an error code on error.
  **/
-static s32 ixgbe_out_i2c_byte_ack(struct ixgbe_hw *hw, u8 byte)
+static int ixgbe_out_i2c_byte_ack(struct ixgbe_hw *hw, u8 byte)
 {
-	s32 status;
+	int status;
 
 	status = ixgbe_clock_out_i2c_byte(hw, byte);
 	if (status)
@@ -49,9 +49,9 @@ static s32 ixgbe_out_i2c_byte_ack(struct ixgbe_hw *hw, u8 byte)
  *
  *  Returns an error code on error.
  **/
-static s32 ixgbe_in_i2c_byte_ack(struct ixgbe_hw *hw, u8 *byte)
+static int ixgbe_in_i2c_byte_ack(struct ixgbe_hw *hw, u8 *byte)
 {
-	s32 status;
+	int status;
 
 	status = ixgbe_clock_in_i2c_byte(hw, byte);
 	if (status)
@@ -85,7 +85,7 @@ static u8 ixgbe_ones_comp_byte_add(u8 add1, u8 add2)
  *
  *  Returns an error code on error.
  */
-s32 ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
+int ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 					u16 reg, u16 *val, bool lock)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
@@ -163,7 +163,7 @@ s32 ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
  *
  *  Returns an error code on error.
  */
-s32 ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
+int ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 					 u16 reg, u16 val, bool lock)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
@@ -260,7 +260,7 @@ static bool ixgbe_probe_phy(struct ixgbe_hw *hw, u16 phy_addr)
  *
  *  Determines the physical layer module found on the current adapter.
  **/
-s32 ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
+int ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
 {
 	u32 phy_addr;
 	u32 status = IXGBE_ERR_PHY_ADDR_INVALID;
@@ -333,9 +333,9 @@ bool ixgbe_check_reset_blocked(struct ixgbe_hw *hw)
  *  @hw: pointer to hardware structure
  *
  **/
-static s32 ixgbe_get_phy_id(struct ixgbe_hw *hw)
+static int ixgbe_get_phy_id(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 phy_id_high = 0;
 	u16 phy_id_low = 0;
 
@@ -395,11 +395,11 @@ static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
  *  ixgbe_reset_phy_generic - Performs a PHY reset
  *  @hw: pointer to hardware structure
  **/
-s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
+int ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
 {
 	u32 i;
 	u16 ctrl = 0;
-	s32 status = 0;
+	int status = 0;
 
 	if (hw->phy.type == ixgbe_phy_unknown)
 		status = ixgbe_identify_phy_generic(hw);
@@ -472,8 +472,8 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
  *
  *  Reads a value from a specified PHY register without the SWFW lock
  **/
-s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
-		       u16 *phy_data)
+int ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
+			   u16 *phy_data)
 {
 	u32 i, data, command;
 
@@ -548,10 +548,10 @@ s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
  *  @device_type: 5 bit device type
  *  @phy_data: Pointer to read data from PHY register
  **/
-s32 ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
+int ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 			       u32 device_type, u16 *phy_data)
 {
-	s32 status;
+	int status;
 	u32 gssr = hw->phy.phy_semaphore_mask;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr) == 0) {
@@ -573,8 +573,8 @@ s32 ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
  *  @device_type: 5 bit device type
  *  @phy_data: Data to write to the PHY register
  **/
-s32 ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
-				u32 device_type, u16 phy_data)
+int ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
+			    u32 device_type, u16 phy_data)
 {
 	u32 i, command;
 
@@ -646,10 +646,10 @@ s32 ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
  *  @device_type: 5 bit device type
  *  @phy_data: Data to write to the PHY register
  **/
-s32 ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
+int ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 				u32 device_type, u16 phy_data)
 {
-	s32 status;
+	int status;
 	u32 gssr = hw->phy.phy_semaphore_mask;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr) == 0) {
@@ -670,7 +670,7 @@ s32 ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
  *  @hw: pointer to hardware structure
  *  @cmd: command register value to write
  **/
-static s32 ixgbe_msca_cmd(struct ixgbe_hw *hw, u32 cmd)
+static int ixgbe_msca_cmd(struct ixgbe_hw *hw, u32 cmd)
 {
 	IXGBE_WRITE_REG(hw, IXGBE_MSCA, cmd);
 
@@ -686,11 +686,11 @@ static s32 ixgbe_msca_cmd(struct ixgbe_hw *hw, u32 cmd)
  *  @regnum: register number
  *  @gssr: semaphore flags to acquire
  **/
-static s32 ixgbe_mii_bus_read_generic_c22(struct ixgbe_hw *hw, int addr,
+static int ixgbe_mii_bus_read_generic_c22(struct ixgbe_hw *hw, int addr,
 					  int regnum, u32 gssr)
 {
 	u32 hwaddr, cmd;
-	s32 data;
+	int data;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
 		return -EBUSY;
@@ -720,11 +720,11 @@ static s32 ixgbe_mii_bus_read_generic_c22(struct ixgbe_hw *hw, int addr,
  *  @regnum: register number
  *  @gssr: semaphore flags to acquire
  **/
-static s32 ixgbe_mii_bus_read_generic_c45(struct ixgbe_hw *hw, int addr,
+static int ixgbe_mii_bus_read_generic_c45(struct ixgbe_hw *hw, int addr,
 					  int devad, int regnum, u32 gssr)
 {
 	u32 hwaddr, cmd;
-	s32 data;
+	int data;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
 		return -EBUSY;
@@ -758,11 +758,11 @@ static s32 ixgbe_mii_bus_read_generic_c45(struct ixgbe_hw *hw, int addr,
  *  @val: value to write
  *  @gssr: semaphore flags to acquire
  **/
-static s32 ixgbe_mii_bus_write_generic_c22(struct ixgbe_hw *hw, int addr,
+static int ixgbe_mii_bus_write_generic_c22(struct ixgbe_hw *hw, int addr,
 					   int regnum, u16 val, u32 gssr)
 {
 	u32 hwaddr, cmd;
-	s32 err;
+	int err;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
 		return -EBUSY;
@@ -789,12 +789,12 @@ static s32 ixgbe_mii_bus_write_generic_c22(struct ixgbe_hw *hw, int addr,
  *  @val: value to write
  *  @gssr: semaphore flags to acquire
  **/
-static s32 ixgbe_mii_bus_write_generic_c45(struct ixgbe_hw *hw, int addr,
+static int ixgbe_mii_bus_write_generic_c45(struct ixgbe_hw *hw, int addr,
 					   int devad, int regnum, u16 val,
 					   u32 gssr)
 {
 	u32 hwaddr, cmd;
-	s32 err;
+	int err;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
 		return -EBUSY;
@@ -823,7 +823,7 @@ static s32 ixgbe_mii_bus_write_generic_c45(struct ixgbe_hw *hw, int addr,
  *  @addr: address
  *  @regnum: register number
  **/
-static s32 ixgbe_mii_bus_read_c22(struct mii_bus *bus, int addr, int regnum)
+static int ixgbe_mii_bus_read_c22(struct mii_bus *bus, int addr, int regnum)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -839,7 +839,7 @@ static s32 ixgbe_mii_bus_read_c22(struct mii_bus *bus, int addr, int regnum)
  *  @addr: address
  *  @regnum: register number
  **/
-static s32 ixgbe_mii_bus_read_c45(struct mii_bus *bus, int devad, int addr,
+static int ixgbe_mii_bus_read_c45(struct mii_bus *bus, int devad, int addr,
 				  int regnum)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -856,7 +856,7 @@ static s32 ixgbe_mii_bus_read_c45(struct mii_bus *bus, int devad, int addr,
  *  @regnum: register number
  *  @val: value to write
  **/
-static s32 ixgbe_mii_bus_write_c22(struct mii_bus *bus, int addr, int regnum,
+static int ixgbe_mii_bus_write_c22(struct mii_bus *bus, int addr, int regnum,
 				   u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -874,7 +874,7 @@ static s32 ixgbe_mii_bus_write_c22(struct mii_bus *bus, int addr, int regnum,
  *  @regnum: register number
  *  @val: value to write
  **/
-static s32 ixgbe_mii_bus_write_c45(struct mii_bus *bus, int addr, int devad,
+static int ixgbe_mii_bus_write_c45(struct mii_bus *bus, int addr, int devad,
 				   int regnum, u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -891,7 +891,7 @@ static s32 ixgbe_mii_bus_write_c45(struct mii_bus *bus, int addr, int devad,
  *  @addr: address
  *  @regnum: register number
  **/
-static s32 ixgbe_x550em_a_mii_bus_read_c22(struct mii_bus *bus, int addr,
+static int ixgbe_x550em_a_mii_bus_read_c22(struct mii_bus *bus, int addr,
 					   int regnum)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -909,7 +909,7 @@ static s32 ixgbe_x550em_a_mii_bus_read_c22(struct mii_bus *bus, int addr,
  *  @devad: device address to read
  *  @regnum: register number
  **/
-static s32 ixgbe_x550em_a_mii_bus_read_c45(struct mii_bus *bus, int addr,
+static int ixgbe_x550em_a_mii_bus_read_c45(struct mii_bus *bus, int addr,
 					   int devad, int regnum)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -927,7 +927,7 @@ static s32 ixgbe_x550em_a_mii_bus_read_c45(struct mii_bus *bus, int addr,
  *  @regnum: register number
  *  @val: value to write
  **/
-static s32 ixgbe_x550em_a_mii_bus_write_c22(struct mii_bus *bus, int addr,
+static int ixgbe_x550em_a_mii_bus_write_c22(struct mii_bus *bus, int addr,
 					    int regnum, u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -946,7 +946,7 @@ static s32 ixgbe_x550em_a_mii_bus_write_c22(struct mii_bus *bus, int addr,
  *  @regnum: register number
  *  @val: value to write
  **/
-static s32 ixgbe_x550em_a_mii_bus_write_c45(struct mii_bus *bus, int addr,
+static int ixgbe_x550em_a_mii_bus_write_c45(struct mii_bus *bus, int addr,
 					    int devad, int regnum, u16 val)
 {
 	struct ixgbe_adapter *adapter = bus->priv;
@@ -1025,13 +1025,13 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
  *
  * ixgbe_mii_bus_init initializes a mii_bus structure in adapter
  **/
-s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
+int ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 {
-	s32 (*write_c22)(struct mii_bus *bus, int addr, int regnum, u16 val);
-	s32 (*read_c22)(struct mii_bus *bus, int addr, int regnum);
-	s32 (*write_c45)(struct mii_bus *bus, int addr, int devad, int regnum,
+	int (*write_c22)(struct mii_bus *bus, int addr, int regnum, u16 val);
+	int (*read_c22)(struct mii_bus *bus, int addr, int regnum);
+	int (*write_c45)(struct mii_bus *bus, int addr, int devad, int regnum,
 			 u16 val);
-	s32 (*read_c45)(struct mii_bus *bus, int addr, int devad, int regnum);
+	int (*read_c45)(struct mii_bus *bus, int addr, int devad, int regnum);
 	struct ixgbe_adapter *adapter = hw->back;
 	struct pci_dev *pdev = adapter->pdev;
 	struct device *dev = &adapter->netdev->dev;
@@ -1097,9 +1097,9 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
  *
  *  Restart autonegotiation and PHY and waits for completion.
  **/
-s32 ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
+int ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
 {
-	s32 status = 0;
+	int status = 0;
 	u16 autoneg_reg = IXGBE_MII_AUTONEG_REG;
 	bool autoneg = false;
 	ixgbe_link_speed speed;
@@ -1175,7 +1175,7 @@ s32 ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
  *  @speed: new link speed
  *  @autoneg_wait_to_complete: unused
  **/
-s32 ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
+int ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
 				       ixgbe_link_speed speed,
 				       bool autoneg_wait_to_complete)
 {
@@ -1216,10 +1216,10 @@ s32 ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
  * Determines the supported link capabilities by reading the PHY auto
  * negotiation register.
  */
-static s32 ixgbe_get_copper_speeds_supported(struct ixgbe_hw *hw)
+static int ixgbe_get_copper_speeds_supported(struct ixgbe_hw *hw)
 {
 	u16 speed_ability;
-	s32 status;
+	int status;
 
 	status = hw->phy.ops.read_reg(hw, MDIO_SPEED, MDIO_MMD_PMAPMD,
 				      &speed_ability);
@@ -1255,11 +1255,11 @@ static s32 ixgbe_get_copper_speeds_supported(struct ixgbe_hw *hw)
  * @speed: pointer to link speed
  * @autoneg: boolean auto-negotiation value
  */
-s32 ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
+int ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
 					       ixgbe_link_speed *speed,
 					       bool *autoneg)
 {
-	s32 status = 0;
+	int status = 0;
 
 	*autoneg = true;
 	if (!hw->phy.speeds_supported)
@@ -1278,10 +1278,10 @@ s32 ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
  *  Reads the VS1 register to determine if link is up and the current speed for
  *  the PHY.
  **/
-s32 ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
+int ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
 			     bool *link_up)
 {
-	s32 status;
+	int status;
 	u32 time_out;
 	u32 max_time_out = 10;
 	u16 phy_link = 0;
@@ -1328,7 +1328,7 @@ s32 ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
  *	it is called via a function pointer that could call other
  *	functions that could return an error.
  **/
-s32 ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw)
+int ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw)
 {
 	u16 autoneg_reg = IXGBE_MII_AUTONEG_REG;
 	bool autoneg = false;
@@ -1401,13 +1401,13 @@ s32 ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw)
  *  ixgbe_reset_phy_nl - Performs a PHY reset
  *  @hw: pointer to hardware structure
  **/
-s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
+int ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
 {
 	u16 phy_offset, control, eword, edata, block_crc;
 	bool end_data = false;
 	u16 list_offset, data_offset;
 	u16 phy_data = 0;
-	s32 ret_val;
+	int ret_val;
 	u32 i;
 
 	/* Blocked by MNG FW so bail */
@@ -1509,7 +1509,7 @@ s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
  *
  *  Determines HW type and calls appropriate function.
  **/
-s32 ixgbe_identify_module_generic(struct ixgbe_hw *hw)
+int ixgbe_identify_module_generic(struct ixgbe_hw *hw)
 {
 	switch (hw->mac.ops.get_media_type(hw)) {
 	case ixgbe_media_type_fiber:
@@ -1530,10 +1530,10 @@ s32 ixgbe_identify_module_generic(struct ixgbe_hw *hw)
  *
  *  Searches for and identifies the SFP module and assigns appropriate PHY type.
  **/
-s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
+int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 {
 	struct ixgbe_adapter *adapter = hw->back;
-	s32 status;
+	int status;
 	u32 vendor_oui = 0;
 	enum ixgbe_sfp_type stored_sfp_type = hw->phy.sfp_type;
 	u8 identifier = 0;
@@ -1795,10 +1795,10 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
  *
  * Searches for and identifies the QSFP module and assigns appropriate PHY type
  **/
-static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
+static int ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
 {
 	struct ixgbe_adapter *adapter = hw->back;
-	s32 status;
+	int status;
 	u32 vendor_oui = 0;
 	enum ixgbe_sfp_type stored_sfp_type = hw->phy.sfp_type;
 	u8 identifier = 0;
@@ -1978,7 +1978,7 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
  *  Checks the MAC's EEPROM to see if it supports a given SFP+ module type, if
  *  so it returns the offsets to the phy init sequence block.
  **/
-s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
+int ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 					u16 *list_offset,
 					u16 *data_offset)
 {
@@ -2068,7 +2068,7 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
  *
  *  Performs byte read operation to SFP module's EEPROM over I2C interface.
  **/
-s32 ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				  u8 *eeprom_data)
 {
 	return hw->phy.ops.read_i2c_byte(hw, byte_offset,
@@ -2084,7 +2084,7 @@ s32 ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
  *
  *  Performs byte read operation to SFP module's SFF-8472 data over I2C
  **/
-s32 ixgbe_read_i2c_sff8472_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_sff8472_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				   u8 *sff8472_data)
 {
 	return hw->phy.ops.read_i2c_byte(hw, byte_offset,
@@ -2100,7 +2100,7 @@ s32 ixgbe_read_i2c_sff8472_generic(struct ixgbe_hw *hw, u8 byte_offset,
  *
  *  Performs byte write operation to SFP module's EEPROM over I2C interface.
  **/
-s32 ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				   u8 eeprom_data)
 {
 	return hw->phy.ops.write_i2c_byte(hw, byte_offset,
@@ -2134,10 +2134,10 @@ static bool ixgbe_is_sfp_probe(struct ixgbe_hw *hw, u8 offset, u8 addr)
  *  Performs byte read operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  */
-static s32 ixgbe_read_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_read_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 					   u8 dev_addr, u8 *data, bool lock)
 {
-	s32 status;
+	int status;
 	u32 max_retry = 10;
 	u32 retry = 0;
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
@@ -2224,7 +2224,7 @@ static s32 ixgbe_read_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
  *  Performs byte read operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  */
-s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				u8 dev_addr, u8 *data)
 {
 	return ixgbe_read_i2c_byte_generic_int(hw, byte_offset, dev_addr,
@@ -2241,7 +2241,7 @@ s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
  *  Performs byte read operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  */
-s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
 					 u8 dev_addr, u8 *data)
 {
 	return ixgbe_read_i2c_byte_generic_int(hw, byte_offset, dev_addr,
@@ -2259,10 +2259,10 @@ s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
  *  Performs byte write operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  */
-static s32 ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
+static int ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 					    u8 dev_addr, u8 data, bool lock)
 {
-	s32 status;
+	int status;
 	u32 max_retry = 1;
 	u32 retry = 0;
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
@@ -2327,7 +2327,7 @@ static s32 ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
  *  Performs byte write operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  */
-s32 ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				 u8 dev_addr, u8 data)
 {
 	return ixgbe_write_i2c_byte_generic_int(hw, byte_offset, dev_addr,
@@ -2344,7 +2344,7 @@ s32 ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
  *  Performs byte write operation to SFP module's EEPROM over I2C interface at
  *  a specified device address.
  */
-s32 ixgbe_write_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_write_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
 					  u8 dev_addr, u8 data)
 {
 	return ixgbe_write_i2c_byte_generic_int(hw, byte_offset, dev_addr,
@@ -2425,9 +2425,9 @@ static void ixgbe_i2c_stop(struct ixgbe_hw *hw)
  *
  *  Clocks in one byte data via I2C data/clock
  **/
-static s32 ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data)
+static int ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data)
 {
-	s32 i;
+	int i;
 	bool bit = false;
 
 	*data = 0;
@@ -2446,10 +2446,10 @@ static s32 ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data)
  *
  *  Clocks out one byte data via I2C data/clock
  **/
-static s32 ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data)
+static int ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data)
 {
-	s32 status;
-	s32 i;
+	int status;
+	int i;
 	u32 i2cctl;
 	bool bit = false;
 
@@ -2477,10 +2477,10 @@ static s32 ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data)
  *
  *  Clocks in/out one bit via I2C data/clock
  **/
-static s32 ixgbe_get_i2c_ack(struct ixgbe_hw *hw)
+static int ixgbe_get_i2c_ack(struct ixgbe_hw *hw)
 {
 	u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);
-	s32 status = 0;
+	int status = 0;
 	u32 i = 0;
 	u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
 	u32 timeout = 10;
@@ -2528,7 +2528,7 @@ static s32 ixgbe_get_i2c_ack(struct ixgbe_hw *hw)
  *
  *  Clocks in one bit via I2C data/clock
  **/
-static s32 ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data)
+static int ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data)
 {
 	u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
 	u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);
@@ -2562,9 +2562,9 @@ static s32 ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data)
  *
  *  Clocks out one bit via I2C data/clock
  **/
-static s32 ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data)
+static int ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data)
 {
-	s32 status;
+	int status;
 	u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
 
 	status = ixgbe_set_i2c_data(hw, &i2cctl, data);
@@ -2650,7 +2650,7 @@ static void ixgbe_lower_i2c_clk(struct ixgbe_hw *hw, u32 *i2cctl)
  *  Sets the I2C data bit
  *  Asserts the I2C data output enable on X550 hardware.
  **/
-static s32 ixgbe_set_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl, bool data)
+static int ixgbe_set_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl, bool data)
 {
 	u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);
 
@@ -2749,7 +2749,7 @@ static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw)
  *
  *  Checks if the LASI temp alarm status was triggered due to overtemp
  **/
-s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
+int ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
 {
 	u16 phy_data = 0;
 
@@ -2770,7 +2770,7 @@ s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
  *  @hw: pointer to hardware structure
  *  @on: true for on, false for off
  **/
-s32 ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, bool on)
+int ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, bool on)
 {
 	u32 status;
 	u16 reg;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
index 6544c4539c0d..8b6da318f003 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
@@ -121,57 +121,57 @@
 /* SFP+ SFF-8472 Compliance code */
 #define IXGBE_SFF_SFF_8472_UNSUP      0x00
 
-s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw);
+int ixgbe_mii_bus_init(struct ixgbe_hw *hw);
 
-s32 ixgbe_identify_phy_generic(struct ixgbe_hw *hw);
-s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw);
-s32 ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
+int ixgbe_identify_phy_generic(struct ixgbe_hw *hw);
+int ixgbe_reset_phy_generic(struct ixgbe_hw *hw);
+int ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 			       u32 device_type, u16 *phy_data);
-s32 ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
+int ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 				u32 device_type, u16 phy_data);
-s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
+int ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
 			   u32 device_type, u16 *phy_data);
-s32 ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
+int ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
 			    u32 device_type, u16 phy_data);
-s32 ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw);
-s32 ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
+int ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw);
+int ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
 				       ixgbe_link_speed speed,
 				       bool autoneg_wait_to_complete);
-s32 ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
+int ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
 					       ixgbe_link_speed *speed,
 					       bool *autoneg);
 bool ixgbe_check_reset_blocked(struct ixgbe_hw *hw);
 
 /* PHY specific */
-s32 ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw,
+int ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw,
 			     ixgbe_link_speed *speed,
 			     bool *link_up);
-s32 ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw);
+int ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw);
 
-s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw);
-s32 ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, bool on);
-s32 ixgbe_identify_module_generic(struct ixgbe_hw *hw);
-s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
-s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
+int ixgbe_reset_phy_nl(struct ixgbe_hw *hw);
+int ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, bool on);
+int ixgbe_identify_module_generic(struct ixgbe_hw *hw);
+int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
+int ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 					u16 *list_offset,
 					u16 *data_offset);
-s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
-s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
+int ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				u8 dev_addr, u8 *data);
-s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
 					 u8 dev_addr, u8 *data);
-s32 ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_write_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				 u8 dev_addr, u8 data);
-s32 ixgbe_write_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_write_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
 					  u8 dev_addr, u8 data);
-s32 ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				  u8 *eeprom_data);
-s32 ixgbe_read_i2c_sff8472_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_read_i2c_sff8472_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				   u8 *sff8472_data);
-s32 ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
+int ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				   u8 eeprom_data);
-s32 ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *, u8 addr, u16 reg,
+int ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *, u8 addr, u16 reg,
 					u16 *val, bool lock);
-s32 ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *, u8 addr, u16 reg,
+int ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *, u8 addr, u16 reg,
 					 u16 val, bool lock);
 #endif /* _IXGBE_PHY_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 29cc60988071..67a39a25c9e7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -492,7 +492,7 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 		struct net_device *dev = adapter->netdev;
 		int pf_max_frame = dev->mtu + ETH_HLEN;
 		u32 reg_offset, vf_shift, vfre;
-		s32 err = 0;
+		int err = 0;
 
 #ifdef CONFIG_FCOE
 		if (dev->features & NETIF_F_FCOE_MTU)
@@ -777,7 +777,7 @@ static void ixgbe_vf_clear_mbx(struct ixgbe_adapter *adapter, u32 vf)
 static int ixgbe_set_vf_mac(struct ixgbe_adapter *adapter,
 			    int vf, unsigned char *mac_addr)
 {
-	s32 retval;
+	int retval;
 
 	ixgbe_del_mac_filter(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
 	retval = ixgbe_add_mac_filter(adapter, mac_addr, vf);
@@ -1257,7 +1257,7 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
 	u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
 	struct ixgbe_hw *hw = &adapter->hw;
-	s32 retval;
+	int retval;
 
 	retval = ixgbe_read_mbx(hw, msgbuf, mbx_size, vf);
 
@@ -1421,7 +1421,7 @@ void ixgbe_set_all_vfs(struct ixgbe_adapter *adapter)
 int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
-	s32 retval;
+	int retval;
 
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2b00db92b08f..01b2070a63e9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3393,50 +3393,50 @@ struct ixgbe_hw;
 
 /* Function pointer table */
 struct ixgbe_eeprom_operations {
-	s32 (*init_params)(struct ixgbe_hw *);
-	s32 (*read)(struct ixgbe_hw *, u16, u16 *);
-	s32 (*read_buffer)(struct ixgbe_hw *, u16, u16, u16 *);
-	s32 (*write)(struct ixgbe_hw *, u16, u16);
-	s32 (*write_buffer)(struct ixgbe_hw *, u16, u16, u16 *);
-	s32 (*validate_checksum)(struct ixgbe_hw *, u16 *);
-	s32 (*update_checksum)(struct ixgbe_hw *);
-	s32 (*calc_checksum)(struct ixgbe_hw *);
+	int (*init_params)(struct ixgbe_hw *);
+	int (*read)(struct ixgbe_hw *, u16, u16 *);
+	int (*read_buffer)(struct ixgbe_hw *, u16, u16, u16 *);
+	int (*write)(struct ixgbe_hw *, u16, u16);
+	int (*write_buffer)(struct ixgbe_hw *, u16, u16, u16 *);
+	int (*validate_checksum)(struct ixgbe_hw *, u16 *);
+	int (*update_checksum)(struct ixgbe_hw *);
+	int (*calc_checksum)(struct ixgbe_hw *);
 };
 
 struct ixgbe_mac_operations {
-	s32 (*init_hw)(struct ixgbe_hw *);
-	s32 (*reset_hw)(struct ixgbe_hw *);
-	s32 (*start_hw)(struct ixgbe_hw *);
-	s32 (*clear_hw_cntrs)(struct ixgbe_hw *);
+	int (*init_hw)(struct ixgbe_hw *);
+	int (*reset_hw)(struct ixgbe_hw *);
+	int (*start_hw)(struct ixgbe_hw *);
+	int (*clear_hw_cntrs)(struct ixgbe_hw *);
 	enum ixgbe_media_type (*get_media_type)(struct ixgbe_hw *);
-	s32 (*get_mac_addr)(struct ixgbe_hw *, u8 *);
-	s32 (*get_san_mac_addr)(struct ixgbe_hw *, u8 *);
-	s32 (*get_device_caps)(struct ixgbe_hw *, u16 *);
-	s32 (*get_wwn_prefix)(struct ixgbe_hw *, u16 *, u16 *);
-	s32 (*stop_adapter)(struct ixgbe_hw *);
-	s32 (*get_bus_info)(struct ixgbe_hw *);
+	int (*get_mac_addr)(struct ixgbe_hw *, u8 *);
+	int (*get_san_mac_addr)(struct ixgbe_hw *, u8 *);
+	int (*get_device_caps)(struct ixgbe_hw *, u16 *);
+	int (*get_wwn_prefix)(struct ixgbe_hw *, u16 *, u16 *);
+	int (*stop_adapter)(struct ixgbe_hw *);
+	int (*get_bus_info)(struct ixgbe_hw *);
 	void (*set_lan_id)(struct ixgbe_hw *);
-	s32 (*read_analog_reg8)(struct ixgbe_hw*, u32, u8*);
-	s32 (*write_analog_reg8)(struct ixgbe_hw*, u32, u8);
-	s32 (*setup_sfp)(struct ixgbe_hw *);
-	s32 (*disable_rx_buff)(struct ixgbe_hw *);
-	s32 (*enable_rx_buff)(struct ixgbe_hw *);
-	s32 (*enable_rx_dma)(struct ixgbe_hw *, u32);
-	s32 (*acquire_swfw_sync)(struct ixgbe_hw *, u32);
+	int (*read_analog_reg8)(struct ixgbe_hw*, u32, u8*);
+	int (*write_analog_reg8)(struct ixgbe_hw*, u32, u8);
+	int (*setup_sfp)(struct ixgbe_hw *);
+	int (*disable_rx_buff)(struct ixgbe_hw *);
+	int (*enable_rx_buff)(struct ixgbe_hw *);
+	int (*enable_rx_dma)(struct ixgbe_hw *, u32);
+	int (*acquire_swfw_sync)(struct ixgbe_hw *, u32);
 	void (*release_swfw_sync)(struct ixgbe_hw *, u32);
 	void (*init_swfw_sync)(struct ixgbe_hw *);
-	s32 (*prot_autoc_read)(struct ixgbe_hw *, bool *, u32 *);
-	s32 (*prot_autoc_write)(struct ixgbe_hw *, u32, bool);
+	int (*prot_autoc_read)(struct ixgbe_hw *, bool *, u32 *);
+	int (*prot_autoc_write)(struct ixgbe_hw *, u32, bool);
 
 	/* Link */
 	void (*disable_tx_laser)(struct ixgbe_hw *);
 	void (*enable_tx_laser)(struct ixgbe_hw *);
 	void (*flap_tx_laser)(struct ixgbe_hw *);
 	void (*stop_link_on_d3)(struct ixgbe_hw *);
-	s32 (*setup_link)(struct ixgbe_hw *, ixgbe_link_speed, bool);
-	s32 (*setup_mac_link)(struct ixgbe_hw *, ixgbe_link_speed, bool);
-	s32 (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, bool *, bool);
-	s32 (*get_link_capabilities)(struct ixgbe_hw *, ixgbe_link_speed *,
+	int (*setup_link)(struct ixgbe_hw *, ixgbe_link_speed, bool);
+	int (*setup_mac_link)(struct ixgbe_hw *, ixgbe_link_speed, bool);
+	int (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, bool *, bool);
+	int (*get_link_capabilities)(struct ixgbe_hw *, ixgbe_link_speed *,
 				     bool *);
 	void (*set_rate_select_speed)(struct ixgbe_hw *, ixgbe_link_speed);
 
@@ -3444,38 +3444,38 @@ struct ixgbe_mac_operations {
 	void (*set_rxpba)(struct ixgbe_hw *, int, u32, int);
 
 	/* LED */
-	s32 (*led_on)(struct ixgbe_hw *, u32);
-	s32 (*led_off)(struct ixgbe_hw *, u32);
-	s32 (*blink_led_start)(struct ixgbe_hw *, u32);
-	s32 (*blink_led_stop)(struct ixgbe_hw *, u32);
-	s32 (*init_led_link_act)(struct ixgbe_hw *);
+	int (*led_on)(struct ixgbe_hw *, u32);
+	int (*led_off)(struct ixgbe_hw *, u32);
+	int (*blink_led_start)(struct ixgbe_hw *, u32);
+	int (*blink_led_stop)(struct ixgbe_hw *, u32);
+	int (*init_led_link_act)(struct ixgbe_hw *);
 
 	/* RAR, Multicast, VLAN */
-	s32 (*set_rar)(struct ixgbe_hw *, u32, u8 *, u32, u32);
-	s32 (*clear_rar)(struct ixgbe_hw *, u32);
-	s32 (*set_vmdq)(struct ixgbe_hw *, u32, u32);
-	s32 (*set_vmdq_san_mac)(struct ixgbe_hw *, u32);
-	s32 (*clear_vmdq)(struct ixgbe_hw *, u32, u32);
-	s32 (*init_rx_addrs)(struct ixgbe_hw *);
-	s32 (*update_mc_addr_list)(struct ixgbe_hw *, struct net_device *);
-	s32 (*enable_mc)(struct ixgbe_hw *);
-	s32 (*disable_mc)(struct ixgbe_hw *);
-	s32 (*clear_vfta)(struct ixgbe_hw *);
-	s32 (*set_vfta)(struct ixgbe_hw *, u32, u32, bool, bool);
-	s32 (*init_uta_tables)(struct ixgbe_hw *);
+	int (*set_rar)(struct ixgbe_hw *, u32, u8 *, u32, u32);
+	int (*clear_rar)(struct ixgbe_hw *, u32);
+	int (*set_vmdq)(struct ixgbe_hw *, u32, u32);
+	int (*set_vmdq_san_mac)(struct ixgbe_hw *, u32);
+	int (*clear_vmdq)(struct ixgbe_hw *, u32, u32);
+	int (*init_rx_addrs)(struct ixgbe_hw *);
+	int (*update_mc_addr_list)(struct ixgbe_hw *, struct net_device *);
+	int (*enable_mc)(struct ixgbe_hw *);
+	int (*disable_mc)(struct ixgbe_hw *);
+	int (*clear_vfta)(struct ixgbe_hw *);
+	int (*set_vfta)(struct ixgbe_hw *, u32, u32, bool, bool);
+	int (*init_uta_tables)(struct ixgbe_hw *);
 	void (*set_mac_anti_spoofing)(struct ixgbe_hw *, bool, int);
 	void (*set_vlan_anti_spoofing)(struct ixgbe_hw *, bool, int);
 
 	/* Flow Control */
-	s32 (*fc_enable)(struct ixgbe_hw *);
-	s32 (*setup_fc)(struct ixgbe_hw *);
+	int (*fc_enable)(struct ixgbe_hw *);
+	int (*setup_fc)(struct ixgbe_hw *);
 	void (*fc_autoneg)(struct ixgbe_hw *);
 
 	/* Manageability interface */
-	s32 (*set_fw_drv_ver)(struct ixgbe_hw *, u8, u8, u8, u8, u16,
+	int (*set_fw_drv_ver)(struct ixgbe_hw *, u8, u8, u8, u8, u16,
 			      const char *);
-	s32 (*get_thermal_sensor_data)(struct ixgbe_hw *);
-	s32 (*init_thermal_sensor_thresh)(struct ixgbe_hw *hw);
+	int (*get_thermal_sensor_data)(struct ixgbe_hw *);
+	int (*init_thermal_sensor_thresh)(struct ixgbe_hw *hw);
 	bool (*fw_recovery_mode)(struct ixgbe_hw *hw);
 	void (*disable_rx)(struct ixgbe_hw *hw);
 	void (*enable_rx)(struct ixgbe_hw *hw);
@@ -3484,47 +3484,47 @@ struct ixgbe_mac_operations {
 	void (*set_ethertype_anti_spoofing)(struct ixgbe_hw *, bool, int);
 
 	/* DMA Coalescing */
-	s32 (*dmac_config)(struct ixgbe_hw *hw);
-	s32 (*dmac_update_tcs)(struct ixgbe_hw *hw);
-	s32 (*dmac_config_tcs)(struct ixgbe_hw *hw);
-	s32 (*read_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32 *);
-	s32 (*write_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32);
+	int (*dmac_config)(struct ixgbe_hw *hw);
+	int (*dmac_update_tcs)(struct ixgbe_hw *hw);
+	int (*dmac_config_tcs)(struct ixgbe_hw *hw);
+	int (*read_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32 *);
+	int (*write_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32);
 };
 
 struct ixgbe_phy_operations {
-	s32 (*identify)(struct ixgbe_hw *);
-	s32 (*identify_sfp)(struct ixgbe_hw *);
-	s32 (*init)(struct ixgbe_hw *);
-	s32 (*reset)(struct ixgbe_hw *);
-	s32 (*read_reg)(struct ixgbe_hw *, u32, u32, u16 *);
-	s32 (*write_reg)(struct ixgbe_hw *, u32, u32, u16);
-	s32 (*read_reg_mdi)(struct ixgbe_hw *, u32, u32, u16 *);
-	s32 (*write_reg_mdi)(struct ixgbe_hw *, u32, u32, u16);
-	s32 (*setup_link)(struct ixgbe_hw *);
-	s32 (*setup_internal_link)(struct ixgbe_hw *);
-	s32 (*setup_link_speed)(struct ixgbe_hw *, ixgbe_link_speed, bool);
-	s32 (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, bool *);
-	s32 (*read_i2c_byte)(struct ixgbe_hw *, u8, u8, u8 *);
-	s32 (*write_i2c_byte)(struct ixgbe_hw *, u8, u8, u8);
-	s32 (*read_i2c_sff8472)(struct ixgbe_hw *, u8 , u8 *);
-	s32 (*read_i2c_eeprom)(struct ixgbe_hw *, u8 , u8 *);
-	s32 (*write_i2c_eeprom)(struct ixgbe_hw *, u8, u8);
-	s32 (*check_overtemp)(struct ixgbe_hw *);
-	s32 (*set_phy_power)(struct ixgbe_hw *, bool on);
-	s32 (*enter_lplu)(struct ixgbe_hw *);
-	s32 (*handle_lasi)(struct ixgbe_hw *hw);
-	s32 (*read_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
+	int (*identify)(struct ixgbe_hw *);
+	int (*identify_sfp)(struct ixgbe_hw *);
+	int (*init)(struct ixgbe_hw *);
+	int (*reset)(struct ixgbe_hw *);
+	int (*read_reg)(struct ixgbe_hw *, u32, u32, u16 *);
+	int (*write_reg)(struct ixgbe_hw *, u32, u32, u16);
+	int (*read_reg_mdi)(struct ixgbe_hw *, u32, u32, u16 *);
+	int (*write_reg_mdi)(struct ixgbe_hw *, u32, u32, u16);
+	int (*setup_link)(struct ixgbe_hw *);
+	int (*setup_internal_link)(struct ixgbe_hw *);
+	int (*setup_link_speed)(struct ixgbe_hw *, ixgbe_link_speed, bool);
+	int (*check_link)(struct ixgbe_hw *, ixgbe_link_speed *, bool *);
+	int (*read_i2c_byte)(struct ixgbe_hw *, u8, u8, u8 *);
+	int (*write_i2c_byte)(struct ixgbe_hw *, u8, u8, u8);
+	int (*read_i2c_sff8472)(struct ixgbe_hw *, u8, u8 *);
+	int (*read_i2c_eeprom)(struct ixgbe_hw *, u8, u8 *);
+	int (*write_i2c_eeprom)(struct ixgbe_hw *, u8, u8);
+	int (*check_overtemp)(struct ixgbe_hw *);
+	int (*set_phy_power)(struct ixgbe_hw *, bool on);
+	int (*enter_lplu)(struct ixgbe_hw *);
+	int (*handle_lasi)(struct ixgbe_hw *hw);
+	int (*read_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
 				      u8 *value);
-	s32 (*write_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
+	int (*write_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
 				       u8 value);
 };
 
 struct ixgbe_link_operations {
-	s32 (*read_link)(struct ixgbe_hw *, u8 addr, u16 reg, u16 *val);
-	s32 (*read_link_unlocked)(struct ixgbe_hw *, u8 addr, u16 reg,
+	int (*read_link)(struct ixgbe_hw *, u8 addr, u16 reg, u16 *val);
+	int (*read_link_unlocked)(struct ixgbe_hw *, u8 addr, u16 reg,
 				  u16 *val);
-	s32 (*write_link)(struct ixgbe_hw *, u8 addr, u16 reg, u16 val);
-	s32 (*write_link_unlocked)(struct ixgbe_hw *, u8 addr, u16 reg,
+	int (*write_link)(struct ixgbe_hw *, u8 addr, u16 reg, u16 val);
+	int (*write_link_unlocked)(struct ixgbe_hw *, u8 addr, u16 reg,
 				   u16 val);
 };
 
@@ -3557,7 +3557,7 @@ struct ixgbe_mac_info {
 	u16				max_msix_vectors;
 #define IXGBE_MAX_MTA			128
 	u32				mta_shadow[IXGBE_MAX_MTA];
-	s32                             mc_filter_type;
+	int                             mc_filter_type;
 	u32                             mcft_size;
 	u32                             vft_size;
 	u32                             num_rar_entries;
@@ -3602,14 +3602,14 @@ struct ixgbe_phy_info {
 #include "ixgbe_mbx.h"
 
 struct ixgbe_mbx_operations {
-	s32 (*init_params)(struct ixgbe_hw *hw);
-	s32 (*read)(struct ixgbe_hw *, u32 *, u16,  u16);
-	s32 (*write)(struct ixgbe_hw *, u32 *, u16, u16);
-	s32 (*read_posted)(struct ixgbe_hw *, u32 *, u16,  u16);
-	s32 (*write_posted)(struct ixgbe_hw *, u32 *, u16, u16);
-	s32 (*check_for_msg)(struct ixgbe_hw *, u16);
-	s32 (*check_for_ack)(struct ixgbe_hw *, u16);
-	s32 (*check_for_rst)(struct ixgbe_hw *, u16);
+	int (*init_params)(struct ixgbe_hw *hw);
+	int (*read)(struct ixgbe_hw *, u32 *, u16,  u16);
+	int (*write)(struct ixgbe_hw *, u32 *, u16, u16);
+	int (*read_posted)(struct ixgbe_hw *, u32 *, u16,  u16);
+	int (*write_posted)(struct ixgbe_hw *, u32 *, u16, u16);
+	int (*check_for_msg)(struct ixgbe_hw *, u16);
+	int (*check_for_ack)(struct ixgbe_hw *, u16);
+	int (*check_for_rst)(struct ixgbe_hw *, u16);
 };
 
 struct ixgbe_mbx_stats {
@@ -3656,7 +3656,7 @@ struct ixgbe_hw {
 
 struct ixgbe_info {
 	enum ixgbe_mac_type		mac;
-	s32 				(*get_invariants)(struct ixgbe_hw *);
+	int				(*get_invariants)(struct ixgbe_hw *);
 	const struct ixgbe_mac_operations	*mac_ops;
 	const struct ixgbe_eeprom_operations	*eeprom_ops;
 	const struct ixgbe_phy_operations	*phy_ops;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index d5cfb51ff648..aa03559b070f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -16,9 +16,9 @@
 #define IXGBE_X540_VFT_TBL_SIZE		128
 #define IXGBE_X540_RX_PB_SIZE		384
 
-static s32 ixgbe_update_flash_X540(struct ixgbe_hw *hw);
-static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw);
-static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw);
+static int ixgbe_update_flash_X540(struct ixgbe_hw *hw);
+static int ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw);
+static int ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw);
 static void ixgbe_release_swfw_sync_semaphore(struct ixgbe_hw *hw);
 
 enum ixgbe_media_type ixgbe_get_media_type_X540(struct ixgbe_hw *hw)
@@ -26,7 +26,7 @@ enum ixgbe_media_type ixgbe_get_media_type_X540(struct ixgbe_hw *hw)
 	return ixgbe_media_type_copper;
 }
 
-s32 ixgbe_get_invariants_X540(struct ixgbe_hw *hw)
+int ixgbe_get_invariants_X540(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	struct ixgbe_phy_info *phy = &hw->phy;
@@ -51,7 +51,7 @@ s32 ixgbe_get_invariants_X540(struct ixgbe_hw *hw)
  *  @speed: new link speed
  *  @autoneg_wait_to_complete: true when waiting for completion is needed
  **/
-s32 ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
+int ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 			      bool autoneg_wait_to_complete)
 {
 	return hw->phy.ops.setup_link_speed(hw, speed,
@@ -66,9 +66,9 @@ s32 ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  *  and clears all interrupts, perform a PHY reset, and perform a link (MAC)
  *  reset.
  **/
-s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
+int ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u32 ctrl, i;
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
 
@@ -166,9 +166,9 @@ s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
  *  and the generation start_hw function.
  *  Then performs revision-specific operations, if any.
  **/
-s32 ixgbe_start_hw_X540(struct ixgbe_hw *hw)
+int ixgbe_start_hw_X540(struct ixgbe_hw *hw)
 {
-	s32 ret_val;
+	int ret_val;
 
 	ret_val = ixgbe_start_hw_generic(hw);
 	if (ret_val)
@@ -184,7 +184,7 @@ s32 ixgbe_start_hw_X540(struct ixgbe_hw *hw)
  *  Initializes the EEPROM parameters ixgbe_eeprom_info within the
  *  ixgbe_hw struct in order to set up EEPROM access.
  **/
-s32 ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw)
+int ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 	u32 eec;
@@ -215,9 +215,9 @@ s32 ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw)
  *
  *  Reads a 16 bit word from the EEPROM using the EERD register.
  **/
-static s32 ixgbe_read_eerd_X540(struct ixgbe_hw *hw, u16 offset, u16 *data)
+static int ixgbe_read_eerd_X540(struct ixgbe_hw *hw, u16 offset, u16 *data)
 {
-	s32 status;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
 		return IXGBE_ERR_SWFW_SYNC;
@@ -237,10 +237,10 @@ static s32 ixgbe_read_eerd_X540(struct ixgbe_hw *hw, u16 offset, u16 *data)
  *
  *  Reads a 16 bit word(s) from the EEPROM using the EERD register.
  **/
-static s32 ixgbe_read_eerd_buffer_X540(struct ixgbe_hw *hw,
+static int ixgbe_read_eerd_buffer_X540(struct ixgbe_hw *hw,
 				       u16 offset, u16 words, u16 *data)
 {
-	s32 status;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
 		return IXGBE_ERR_SWFW_SYNC;
@@ -259,9 +259,9 @@ static s32 ixgbe_read_eerd_buffer_X540(struct ixgbe_hw *hw,
  *
  *  Write a 16 bit word to the EEPROM using the EEWR register.
  **/
-static s32 ixgbe_write_eewr_X540(struct ixgbe_hw *hw, u16 offset, u16 data)
+static int ixgbe_write_eewr_X540(struct ixgbe_hw *hw, u16 offset, u16 data)
 {
-	s32 status;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
 		return IXGBE_ERR_SWFW_SYNC;
@@ -281,10 +281,10 @@ static s32 ixgbe_write_eewr_X540(struct ixgbe_hw *hw, u16 offset, u16 data)
  *
  *  Write a 16 bit word(s) to the EEPROM using the EEWR register.
  **/
-static s32 ixgbe_write_eewr_buffer_X540(struct ixgbe_hw *hw,
+static int ixgbe_write_eewr_buffer_X540(struct ixgbe_hw *hw,
 					u16 offset, u16 words, u16 *data)
 {
-	s32 status;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
 		return IXGBE_ERR_SWFW_SYNC;
@@ -303,7 +303,7 @@ static s32 ixgbe_write_eewr_buffer_X540(struct ixgbe_hw *hw,
  *
  *  @hw: pointer to hardware structure
  **/
-static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
+static int ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 {
 	u16 i;
 	u16 j;
@@ -368,7 +368,7 @@ static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 
 	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
 
-	return (s32)checksum;
+	return (int)checksum;
 }
 
 /**
@@ -379,10 +379,10 @@ static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
  *  Performs checksum calculation and validates the EEPROM checksum.  If the
  *  caller does not need checksum_val, the value can be NULL.
  **/
-static s32 ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
+static int ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
 					       u16 *checksum_val)
 {
-	s32 status;
+	int status;
 	u16 checksum;
 	u16 read_checksum = 0;
 
@@ -439,9 +439,9 @@ static s32 ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
  * checksum and updates the EEPROM and instructs the hardware to update
  * the flash.
  **/
-static s32 ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
+static int ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 checksum;
 
 	/* Read the first word from the EEPROM. If this times out or fails, do
@@ -484,10 +484,10 @@ static s32 ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
  * Set FLUP (bit 23) of the EEC register to instruct Hardware to copy
  * EEPROM from shadow RAM to the flash device.
  **/
-static s32 ixgbe_update_flash_X540(struct ixgbe_hw *hw)
+static int ixgbe_update_flash_X540(struct ixgbe_hw *hw)
 {
 	u32 flup;
-	s32 status;
+	int status;
 
 	status = ixgbe_poll_flash_update_done_X540(hw);
 	if (status == IXGBE_ERR_EEPROM) {
@@ -529,7 +529,7 @@ static s32 ixgbe_update_flash_X540(struct ixgbe_hw *hw)
  * Polls the FLUDONE (bit 26) of the EEC Register to determine when the
  * flash update is done.
  **/
-static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
+static int ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
 {
 	u32 i;
 	u32 reg;
@@ -551,7 +551,7 @@ static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
  * Acquires the SWFW semaphore thought the SW_FW_SYNC register for
  * the specified function (CSR, PHY0, PHY1, NVM, Flash)
  **/
-s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
+int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
 {
 	u32 swmask = mask & IXGBE_GSSR_NVM_PHY_MASK;
 	u32 swi2c_mask = mask & IXGBE_GSSR_I2C_MASK;
@@ -660,7 +660,7 @@ void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
  *
  * Sets the hardware semaphores so SW/FW can gain control of shared resources
  */
-static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
+static int ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
 {
 	u32 timeout = 2000;
 	u32 i;
@@ -760,7 +760,7 @@ void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw)
  * Devices that implement the version 2 interface:
  *   X540
  **/
-s32 ixgbe_blink_led_start_X540(struct ixgbe_hw *hw, u32 index)
+int ixgbe_blink_led_start_X540(struct ixgbe_hw *hw, u32 index)
 {
 	u32 macc_reg;
 	u32 ledctl_reg;
@@ -798,7 +798,7 @@ s32 ixgbe_blink_led_start_X540(struct ixgbe_hw *hw, u32 index)
  * Devices that implement the version 2 interface:
  *   X540
  **/
-s32 ixgbe_blink_led_stop_X540(struct ixgbe_hw *hw, u32 index)
+int ixgbe_blink_led_stop_X540(struct ixgbe_hw *hw, u32 index)
 {
 	u32 macc_reg;
 	u32 ledctl_reg;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
index e246c0d2a427..b69a680d3ab5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
@@ -3,17 +3,17 @@
 
 #include "ixgbe_type.h"
 
-s32 ixgbe_get_invariants_X540(struct ixgbe_hw *hw);
-s32 ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
+int ixgbe_get_invariants_X540(struct ixgbe_hw *hw);
+int ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 			      bool autoneg_wait_to_complete);
-s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw);
-s32 ixgbe_start_hw_X540(struct ixgbe_hw *hw);
+int ixgbe_reset_hw_X540(struct ixgbe_hw *hw);
+int ixgbe_start_hw_X540(struct ixgbe_hw *hw);
 enum ixgbe_media_type ixgbe_get_media_type_X540(struct ixgbe_hw *hw);
-s32 ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
+int ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 			      bool autoneg_wait_to_complete);
-s32 ixgbe_blink_led_start_X540(struct ixgbe_hw *hw, u32 index);
-s32 ixgbe_blink_led_stop_X540(struct ixgbe_hw *hw, u32 index);
-s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
+int ixgbe_blink_led_start_X540(struct ixgbe_hw *hw, u32 index);
+int ixgbe_blink_led_stop_X540(struct ixgbe_hw *hw, u32 index);
+int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw);
-s32 ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw);
+int ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index aa4bf6c9a2f7..e1050eb37a8c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -6,13 +6,13 @@
 #include "ixgbe_common.h"
 #include "ixgbe_phy.h"
 
-static s32 ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *, ixgbe_link_speed);
-static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *);
+static int ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *, ixgbe_link_speed);
+static int ixgbe_setup_fc_x550em(struct ixgbe_hw *);
 static void ixgbe_fc_autoneg_fiber_x550em_a(struct ixgbe_hw *);
 static void ixgbe_fc_autoneg_backplane_x550em_a(struct ixgbe_hw *);
-static s32 ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *);
+static int ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *);
 
-static s32 ixgbe_get_invariants_X550_x(struct ixgbe_hw *hw)
+static int ixgbe_get_invariants_X550_x(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	struct ixgbe_phy_info *phy = &hw->phy;
@@ -29,7 +29,7 @@ static s32 ixgbe_get_invariants_X550_x(struct ixgbe_hw *hw)
 	return 0;
 }
 
-static s32 ixgbe_get_invariants_X550_x_fw(struct ixgbe_hw *hw)
+static int ixgbe_get_invariants_X550_x_fw(struct ixgbe_hw *hw)
 {
 	struct ixgbe_phy_info *phy = &hw->phy;
 
@@ -41,7 +41,7 @@ static s32 ixgbe_get_invariants_X550_x_fw(struct ixgbe_hw *hw)
 	return 0;
 }
 
-static s32 ixgbe_get_invariants_X550_a(struct ixgbe_hw *hw)
+static int ixgbe_get_invariants_X550_a(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	struct ixgbe_phy_info *phy = &hw->phy;
@@ -55,7 +55,7 @@ static s32 ixgbe_get_invariants_X550_a(struct ixgbe_hw *hw)
 	return 0;
 }
 
-static s32 ixgbe_get_invariants_X550_a_fw(struct ixgbe_hw *hw)
+static int ixgbe_get_invariants_X550_a_fw(struct ixgbe_hw *hw)
 {
 	struct ixgbe_phy_info *phy = &hw->phy;
 
@@ -91,7 +91,7 @@ static void ixgbe_setup_mux_ctl(struct ixgbe_hw *hw)
  *
  * Returns status code
  */
-static s32 ixgbe_read_cs4227(struct ixgbe_hw *hw, u16 reg, u16 *value)
+static int ixgbe_read_cs4227(struct ixgbe_hw *hw, u16 reg, u16 *value)
 {
 	return hw->link.ops.read_link_unlocked(hw, hw->link.addr, reg, value);
 }
@@ -104,7 +104,7 @@ static s32 ixgbe_read_cs4227(struct ixgbe_hw *hw, u16 reg, u16 *value)
  *
  * Returns status code
  */
-static s32 ixgbe_write_cs4227(struct ixgbe_hw *hw, u16 reg, u16 value)
+static int ixgbe_write_cs4227(struct ixgbe_hw *hw, u16 reg, u16 value)
 {
 	return hw->link.ops.write_link_unlocked(hw, hw->link.addr, reg, value);
 }
@@ -117,9 +117,9 @@ static s32 ixgbe_write_cs4227(struct ixgbe_hw *hw, u16 reg, u16 value)
  *
  * Returns status code
  */
-static s32 ixgbe_read_pe(struct ixgbe_hw *hw, u8 reg, u8 *value)
+static int ixgbe_read_pe(struct ixgbe_hw *hw, u8 reg, u8 *value)
 {
-	s32 status;
+	int status;
 
 	status = ixgbe_read_i2c_byte_generic_unlocked(hw, reg, IXGBE_PE, value);
 	if (status)
@@ -135,9 +135,9 @@ static s32 ixgbe_read_pe(struct ixgbe_hw *hw, u8 reg, u8 *value)
  *
  * Returns status code
  */
-static s32 ixgbe_write_pe(struct ixgbe_hw *hw, u8 reg, u8 value)
+static int ixgbe_write_pe(struct ixgbe_hw *hw, u8 reg, u8 value)
 {
-	s32 status;
+	int status;
 
 	status = ixgbe_write_i2c_byte_generic_unlocked(hw, reg, IXGBE_PE,
 						       value);
@@ -153,9 +153,9 @@ static s32 ixgbe_write_pe(struct ixgbe_hw *hw, u8 reg, u8 value)
  * This function assumes that the caller has acquired the proper semaphore.
  * Returns error code
  */
-static s32 ixgbe_reset_cs4227(struct ixgbe_hw *hw)
+static int ixgbe_reset_cs4227(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u32 retry;
 	u16 value;
 	u8 reg;
@@ -225,7 +225,7 @@ static s32 ixgbe_reset_cs4227(struct ixgbe_hw *hw)
 static void ixgbe_check_cs4227(struct ixgbe_hw *hw)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
-	s32 status;
+	int status;
 	u16 value;
 	u8 retry;
 
@@ -292,7 +292,7 @@ static void ixgbe_check_cs4227(struct ixgbe_hw *hw)
  *
  *  Returns error code
  */
-static s32 ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
+static int ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
 {
 	switch (hw->device_id) {
 	case IXGBE_DEV_ID_X550EM_A_SFP:
@@ -347,13 +347,13 @@ static s32 ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
 	return 0;
 }
 
-static s32 ixgbe_read_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_read_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
 				     u32 device_type, u16 *phy_data)
 {
 	return IXGBE_NOT_IMPLEMENTED;
 }
 
-static s32 ixgbe_write_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_write_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
 				      u32 device_type, u16 phy_data)
 {
 	return IXGBE_NOT_IMPLEMENTED;
@@ -368,7 +368,7 @@ static s32 ixgbe_write_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
  *
  * Returns an error code on error.
  **/
-static s32 ixgbe_read_i2c_combined_generic(struct ixgbe_hw *hw, u8 addr,
+static int ixgbe_read_i2c_combined_generic(struct ixgbe_hw *hw, u8 addr,
 					   u16 reg, u16 *val)
 {
 	return ixgbe_read_i2c_combined_generic_int(hw, addr, reg, val, true);
@@ -383,7 +383,7 @@ static s32 ixgbe_read_i2c_combined_generic(struct ixgbe_hw *hw, u8 addr,
  *
  * Returns an error code on error.
  **/
-static s32
+static int
 ixgbe_read_i2c_combined_generic_unlocked(struct ixgbe_hw *hw, u8 addr,
 					 u16 reg, u16 *val)
 {
@@ -399,7 +399,7 @@ ixgbe_read_i2c_combined_generic_unlocked(struct ixgbe_hw *hw, u8 addr,
  *
  * Returns an error code on error.
  **/
-static s32 ixgbe_write_i2c_combined_generic(struct ixgbe_hw *hw,
+static int ixgbe_write_i2c_combined_generic(struct ixgbe_hw *hw,
 					    u8 addr, u16 reg, u16 val)
 {
 	return ixgbe_write_i2c_combined_generic_int(hw, addr, reg, val, true);
@@ -414,7 +414,7 @@ static s32 ixgbe_write_i2c_combined_generic(struct ixgbe_hw *hw,
  *
  * Returns an error code on error.
  **/
-static s32
+static int
 ixgbe_write_i2c_combined_generic_unlocked(struct ixgbe_hw *hw,
 					  u8 addr, u16 reg, u16 val)
 {
@@ -427,7 +427,7 @@ ixgbe_write_i2c_combined_generic_unlocked(struct ixgbe_hw *hw,
  * @activity: activity to perform
  * @data: Pointer to 4 32-bit words of data
  */
-s32 ixgbe_fw_phy_activity(struct ixgbe_hw *hw, u16 activity,
+int ixgbe_fw_phy_activity(struct ixgbe_hw *hw, u16 activity,
 			  u32 (*data)[FW_PHY_ACT_DATA_COUNT])
 {
 	union {
@@ -435,7 +435,7 @@ s32 ixgbe_fw_phy_activity(struct ixgbe_hw *hw, u16 activity,
 		struct ixgbe_hic_phy_activity_resp rsp;
 	} hic;
 	u16 retries = FW_PHY_ACT_RETRIES;
-	s32 rc;
+	int rc;
 	u32 i;
 
 	do {
@@ -484,12 +484,12 @@ static const struct {
  *
  * Returns error code
  */
-static s32 ixgbe_get_phy_id_fw(struct ixgbe_hw *hw)
+static int ixgbe_get_phy_id_fw(struct ixgbe_hw *hw)
 {
 	u32 info[FW_PHY_ACT_DATA_COUNT] = { 0 };
 	u16 phy_speeds;
 	u16 phy_id_lo;
-	s32 rc;
+	int rc;
 	u16 i;
 
 	if (hw->phy.id)
@@ -526,7 +526,7 @@ static s32 ixgbe_get_phy_id_fw(struct ixgbe_hw *hw)
  *
  * Returns error code
  */
-static s32 ixgbe_identify_phy_fw(struct ixgbe_hw *hw)
+static int ixgbe_identify_phy_fw(struct ixgbe_hw *hw)
 {
 	if (hw->bus.lan_id)
 		hw->phy.phy_semaphore_mask = IXGBE_GSSR_PHY1_SM;
@@ -545,7 +545,7 @@ static s32 ixgbe_identify_phy_fw(struct ixgbe_hw *hw)
  *
  * Returns error code
  */
-static s32 ixgbe_shutdown_fw_phy(struct ixgbe_hw *hw)
+static int ixgbe_shutdown_fw_phy(struct ixgbe_hw *hw)
 {
 	u32 setup[FW_PHY_ACT_DATA_COUNT] = { 0 };
 
@@ -557,10 +557,10 @@ static s32 ixgbe_shutdown_fw_phy(struct ixgbe_hw *hw)
  * ixgbe_setup_fw_link - Setup firmware-controlled PHYs
  * @hw: pointer to hardware structure
  */
-static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
+static int ixgbe_setup_fw_link(struct ixgbe_hw *hw)
 {
 	u32 setup[FW_PHY_ACT_DATA_COUNT] = { 0 };
-	s32 rc;
+	int rc;
 	u16 i;
 
 	if (hw->phy.reset_disable || ixgbe_check_reset_blocked(hw))
@@ -611,7 +611,7 @@ static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
  *
  * Called at init time to set up flow control.
  */
-static s32 ixgbe_fc_autoneg_fw(struct ixgbe_hw *hw)
+static int ixgbe_fc_autoneg_fw(struct ixgbe_hw *hw)
 {
 	if (hw->fc.requested_mode == ixgbe_fc_default)
 		hw->fc.requested_mode = ixgbe_fc_full;
@@ -625,7 +625,7 @@ static s32 ixgbe_fc_autoneg_fw(struct ixgbe_hw *hw)
  *  Initializes the EEPROM parameters ixgbe_eeprom_info within the
  *  ixgbe_hw struct in order to set up EEPROM access.
  **/
-static s32 ixgbe_init_eeprom_params_X550(struct ixgbe_hw *hw)
+static int ixgbe_init_eeprom_params_X550(struct ixgbe_hw *hw)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 	u32 eec;
@@ -657,7 +657,7 @@ static s32 ixgbe_init_eeprom_params_X550(struct ixgbe_hw *hw)
  *
  * Note: ctrl can be NULL if the IOSF control register value is not needed
  */
-static s32 ixgbe_iosf_wait(struct ixgbe_hw *hw, u32 *ctrl)
+static int ixgbe_iosf_wait(struct ixgbe_hw *hw, u32 *ctrl)
 {
 	u32 i, command;
 
@@ -688,12 +688,12 @@ static s32 ixgbe_iosf_wait(struct ixgbe_hw *hw, u32 *ctrl)
  *  @device_type: 3 bit device type
  *  @phy_data: Pointer to read data from the register
  **/
-static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 				       u32 device_type, u32 *data)
 {
 	u32 gssr = IXGBE_GSSR_PHY1_SM | IXGBE_GSSR_PHY0_SM;
 	u32 command, error;
-	s32 ret;
+	int ret;
 
 	ret = hw->mac.ops.acquire_swfw_sync(hw, gssr);
 	if (ret)
@@ -730,10 +730,10 @@ static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
  * ixgbe_get_phy_token - Get the token for shared PHY access
  * @hw: Pointer to hardware structure
  */
-static s32 ixgbe_get_phy_token(struct ixgbe_hw *hw)
+static int ixgbe_get_phy_token(struct ixgbe_hw *hw)
 {
 	struct ixgbe_hic_phy_token_req token_cmd;
-	s32 status;
+	int status;
 
 	token_cmd.hdr.cmd = FW_PHY_TOKEN_REQ_CMD;
 	token_cmd.hdr.buf_len = FW_PHY_TOKEN_REQ_LEN;
@@ -759,10 +759,10 @@ static s32 ixgbe_get_phy_token(struct ixgbe_hw *hw)
  * ixgbe_put_phy_token - Put the token for shared PHY access
  * @hw: Pointer to hardware structure
  */
-static s32 ixgbe_put_phy_token(struct ixgbe_hw *hw)
+static int ixgbe_put_phy_token(struct ixgbe_hw *hw)
 {
 	struct ixgbe_hic_phy_token_req token_cmd;
-	s32 status;
+	int status;
 
 	token_cmd.hdr.cmd = FW_PHY_TOKEN_REQ_CMD;
 	token_cmd.hdr.buf_len = FW_PHY_TOKEN_REQ_LEN;
@@ -788,7 +788,7 @@ static s32 ixgbe_put_phy_token(struct ixgbe_hw *hw)
  *  @device_type: 3 bit device type
  *  @data: Data to write to the register
  **/
-static s32 ixgbe_write_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_write_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 					 __always_unused u32 device_type,
 					 u32 data)
 {
@@ -814,7 +814,7 @@ static s32 ixgbe_write_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
  *  @device_type: 3 bit device type
  *  @data: Pointer to read data from the register
  **/
-static s32 ixgbe_read_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_read_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 					__always_unused u32 device_type,
 					u32 *data)
 {
@@ -822,7 +822,7 @@ static s32 ixgbe_read_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 		struct ixgbe_hic_internal_phy_req cmd;
 		struct ixgbe_hic_internal_phy_resp rsp;
 	} hic;
-	s32 status;
+	int status;
 
 	memset(&hic, 0, sizeof(hic));
 	hic.cmd.hdr.cmd = FW_INT_PHY_REQ_CMD;
@@ -849,14 +849,14 @@ static s32 ixgbe_read_iosf_sb_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
  *
  *  Reads a 16 bit word(s) from the EEPROM using the hostif.
  **/
-static s32 ixgbe_read_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
+static int ixgbe_read_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
 					    u16 offset, u16 words, u16 *data)
 {
 	const u32 mask = IXGBE_GSSR_SW_MNG_SM | IXGBE_GSSR_EEP_SM;
 	struct ixgbe_hic_read_shadow_ram buffer;
 	u32 current_word = 0;
 	u16 words_to_read;
-	s32 status;
+	int status;
 	u32 i;
 
 	/* Take semaphore for the entire operation. */
@@ -921,12 +921,12 @@ static s32 ixgbe_read_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
  *
  *  Returns error status for any failure
  **/
-static s32 ixgbe_checksum_ptr_x550(struct ixgbe_hw *hw, u16 ptr,
+static int ixgbe_checksum_ptr_x550(struct ixgbe_hw *hw, u16 ptr,
 				   u16 size, u16 *csum, u16 *buffer,
 				   u32 buffer_size)
 {
 	u16 buf[256];
-	s32 status;
+	int status;
 	u16 length, bufsz, i, start;
 	u16 *local_buffer;
 
@@ -989,12 +989,12 @@ static s32 ixgbe_checksum_ptr_x550(struct ixgbe_hw *hw, u16 ptr,
  *
  *  Returns a negative error code on error, or the 16-bit checksum
  **/
-static s32 ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
+static int ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
 				    u32 buffer_size)
 {
 	u16 eeprom_ptrs[IXGBE_EEPROM_LAST_WORD + 1];
 	u16 *local_buffer;
-	s32 status;
+	int status;
 	u16 checksum = 0;
 	u16 pointer, i, size;
 
@@ -1058,7 +1058,7 @@ static s32 ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
 
 	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
 
-	return (s32)checksum;
+	return (int)checksum;
 }
 
 /** ixgbe_calc_eeprom_checksum_X550 - Calculates and returns the checksum
@@ -1066,7 +1066,7 @@ static s32 ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
  *
  *  Returns a negative error code on error, or the 16-bit checksum
  **/
-static s32 ixgbe_calc_eeprom_checksum_X550(struct ixgbe_hw *hw)
+static int ixgbe_calc_eeprom_checksum_X550(struct ixgbe_hw *hw)
 {
 	return ixgbe_calc_checksum_X550(hw, NULL, 0);
 }
@@ -1078,11 +1078,11 @@ static s32 ixgbe_calc_eeprom_checksum_X550(struct ixgbe_hw *hw)
  *
  *   Reads a 16 bit word from the EEPROM using the hostif.
  **/
-static s32 ixgbe_read_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 *data)
+static int ixgbe_read_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 *data)
 {
 	const u32 mask = IXGBE_GSSR_SW_MNG_SM | IXGBE_GSSR_EEP_SM;
 	struct ixgbe_hic_read_shadow_ram buffer;
-	s32 status;
+	int status;
 
 	buffer.hdr.req.cmd = FW_READ_SHADOW_RAM_CMD;
 	buffer.hdr.req.buf_lenh = 0;
@@ -1116,10 +1116,10 @@ static s32 ixgbe_read_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 *data)
  *  Performs checksum calculation and validates the EEPROM checksum.  If the
  *  caller does not need checksum_val, the value can be NULL.
  **/
-static s32 ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
+static int ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
 					       u16 *checksum_val)
 {
-	s32 status;
+	int status;
 	u16 checksum;
 	u16 read_checksum = 0;
 
@@ -1166,10 +1166,10 @@ static s32 ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
  *
  *  Write a 16 bit word to the EEPROM using the hostif.
  **/
-static s32 ixgbe_write_ee_hostif_data_X550(struct ixgbe_hw *hw, u16 offset,
+static int ixgbe_write_ee_hostif_data_X550(struct ixgbe_hw *hw, u16 offset,
 					   u16 data)
 {
-	s32 status;
+	int status;
 	struct ixgbe_hic_write_shadow_ram buffer;
 
 	buffer.hdr.req.cmd = FW_WRITE_SHADOW_RAM_CMD;
@@ -1194,9 +1194,9 @@ static s32 ixgbe_write_ee_hostif_data_X550(struct ixgbe_hw *hw, u16 offset,
  *
  *  Write a 16 bit word to the EEPROM using the hostif.
  **/
-static s32 ixgbe_write_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 data)
+static int ixgbe_write_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 data)
 {
-	s32 status = 0;
+	int status = 0;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) == 0) {
 		status = ixgbe_write_ee_hostif_data_X550(hw, offset, data);
@@ -1214,9 +1214,9 @@ static s32 ixgbe_write_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 data)
  *
  *  Issue a shadow RAM dump to FW to copy EEPROM from shadow RAM to the flash.
  **/
-static s32 ixgbe_update_flash_X550(struct ixgbe_hw *hw)
+static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
 {
-	s32 status = 0;
+	int status = 0;
 	union ixgbe_hic_hdr2 buffer;
 
 	buffer.req.cmd = FW_SHADOW_RAM_DUMP_CMD;
@@ -1236,7 +1236,7 @@ static s32 ixgbe_update_flash_X550(struct ixgbe_hw *hw)
  * Sets bus link width and speed to unknown because X550em is
  * not a PCI device.
  **/
-static s32 ixgbe_get_bus_info_X550em(struct ixgbe_hw *hw)
+static int ixgbe_get_bus_info_X550em(struct ixgbe_hw *hw)
 {
 	hw->bus.type  = ixgbe_bus_type_internal;
 	hw->bus.width = ixgbe_bus_width_unknown;
@@ -1268,7 +1268,7 @@ static bool ixgbe_fw_recovery_mode_X550(struct ixgbe_hw *hw)
 static void ixgbe_disable_rx_x550(struct ixgbe_hw *hw)
 {
 	u32 rxctrl, pfdtxgswc;
-	s32 status;
+	int status;
 	struct ixgbe_hic_disable_rxen fw_cmd;
 
 	rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
@@ -1309,9 +1309,9 @@ static void ixgbe_disable_rx_x550(struct ixgbe_hw *hw)
  *  checksum and updates the EEPROM and instructs the hardware to update
  *  the flash.
  **/
-static s32 ixgbe_update_eeprom_checksum_X550(struct ixgbe_hw *hw)
+static int ixgbe_update_eeprom_checksum_X550(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 checksum = 0;
 
 	/* Read the first word from the EEPROM. If this times out or fails, do
@@ -1349,11 +1349,11 @@ static s32 ixgbe_update_eeprom_checksum_X550(struct ixgbe_hw *hw)
  *
  *  Write a 16 bit word(s) to the EEPROM using the hostif.
  **/
-static s32 ixgbe_write_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
+static int ixgbe_write_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
 					     u16 offset, u16 words,
 					     u16 *data)
 {
-	s32 status = 0;
+	int status = 0;
 	u32 i = 0;
 
 	/* Take semaphore for the entire operation. */
@@ -1385,12 +1385,12 @@ static s32 ixgbe_write_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
  *  @device_type: 3 bit device type
  *  @data: Data to write to the register
  **/
-static s32 ixgbe_write_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_write_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 					u32 device_type, u32 data)
 {
 	u32 gssr = IXGBE_GSSR_PHY1_SM | IXGBE_GSSR_PHY0_SM;
 	u32 command, error;
-	s32 ret;
+	int ret;
 
 	ret = hw->mac.ops.acquire_swfw_sync(hw, gssr);
 	if (ret)
@@ -1429,9 +1429,9 @@ static s32 ixgbe_write_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
  *
  *  iXfI configuration needed for ixgbe_mac_X550EM_x devices.
  **/
-static s32 ixgbe_setup_ixfi_x550em_x(struct ixgbe_hw *hw)
+static int ixgbe_setup_ixfi_x550em_x(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u32 reg_val;
 
 	/* Disable training protocol FSM. */
@@ -1501,9 +1501,9 @@ static s32 ixgbe_setup_ixfi_x550em_x(struct ixgbe_hw *hw)
  *  internal PHY
  *  @hw: pointer to hardware structure
  **/
-static s32 ixgbe_restart_an_internal_phy_x550em(struct ixgbe_hw *hw)
+static int ixgbe_restart_an_internal_phy_x550em(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u32 link_ctrl;
 
 	/* Restart auto-negotiation. */
@@ -1550,10 +1550,10 @@ static s32 ixgbe_restart_an_internal_phy_x550em(struct ixgbe_hw *hw)
  *  Configures the integrated KR PHY to use iXFI mode. Used to connect an
  *  internal and external PHY at a specific speed, without autonegotiation.
  **/
-static s32 ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
+static int ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
-	s32 status;
+	int status;
 	u32 reg_val;
 
 	/* iXFI is only supported with X552 */
@@ -1607,7 +1607,7 @@ static s32 ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
  *  @hw: pointer to hardware structure
  *  @linear: true if SFP module is linear
  */
-static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
+static int ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
 {
 	switch (hw->phy.sfp_type) {
 	case ixgbe_sfp_type_not_present:
@@ -1644,12 +1644,12 @@ static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
  *
  * Configures the extern PHY and the integrated KR PHY for SFP support.
  */
-static s32
+static int
 ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
 				ixgbe_link_speed speed,
 				__always_unused bool autoneg_wait_to_complete)
 {
-	s32 status;
+	int status;
 	u16 reg_slice, reg_val;
 	bool setup_linear = false;
 
@@ -1690,10 +1690,10 @@ ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
  * Configures the integrated PHY for native SFI mode. Used to connect the
  * internal PHY directly to an SFP cage, without autonegotiation.
  **/
-static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
+static int ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
-	s32 status;
+	int status;
 	u32 reg_val;
 
 	/* Disable all AN and force speed to 10G Serial. */
@@ -1789,13 +1789,13 @@ static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
  *
  * Configure the integrated PHY for native SFP support.
  */
-static s32
+static int
 ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 			   __always_unused bool autoneg_wait_to_complete)
 {
 	bool setup_linear = false;
 	u32 reg_phy_int;
-	s32 ret_val;
+	int ret_val;
 
 	/* Check if SFP module is supported and linear */
 	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
@@ -1838,14 +1838,14 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  *
  * Configure the integrated PHY for SFP support.
  */
-static s32
+static int
 ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 			       __always_unused bool autoneg_wait_to_complete)
 {
 	u32 reg_slice, slice_offset;
 	bool setup_linear = false;
 	u16 reg_phy_ext;
-	s32 ret_val;
+	int ret_val;
 
 	/* Check if SFP module is supported and linear */
 	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
@@ -1917,11 +1917,11 @@ ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  *
  * Returns error status for any failure
  **/
-static s32 ixgbe_setup_mac_link_t_X550em(struct ixgbe_hw *hw,
+static int ixgbe_setup_mac_link_t_X550em(struct ixgbe_hw *hw,
 					 ixgbe_link_speed speed,
 					 bool autoneg_wait)
 {
-	s32 status;
+	int status;
 	ixgbe_link_speed force_speed;
 
 	/* Setup internal/external PHY link speed to iXFI (10G), unless
@@ -1953,7 +1953,7 @@ static s32 ixgbe_setup_mac_link_t_X550em(struct ixgbe_hw *hw,
   *
   * Check that both the MAC and X557 external PHY have link.
   **/
-static s32 ixgbe_check_link_t_X550em(struct ixgbe_hw *hw,
+static int ixgbe_check_link_t_X550em(struct ixgbe_hw *hw,
 				     ixgbe_link_speed *speed,
 				     bool *link_up,
 				     bool link_up_wait_to_complete)
@@ -1997,13 +1997,13 @@ static s32 ixgbe_check_link_t_X550em(struct ixgbe_hw *hw,
  * @speed: unused
  * @autoneg_wait_to_complete: unused
  */
-static s32
+static int
 ixgbe_setup_sgmii(struct ixgbe_hw *hw, __always_unused ixgbe_link_speed speed,
 		  __always_unused bool autoneg_wait_to_complete)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	u32 lval, sval, flx_val;
-	s32 rc;
+	int rc;
 
 	rc = mac->ops.read_iosf_sb_reg(hw,
 				       IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
@@ -2070,12 +2070,12 @@ ixgbe_setup_sgmii(struct ixgbe_hw *hw, __always_unused ixgbe_link_speed speed,
  * @speed: the link speed to force
  * @autoneg_wait: true when waiting for completion is needed
  */
-static s32 ixgbe_setup_sgmii_fw(struct ixgbe_hw *hw, ixgbe_link_speed speed,
+static int ixgbe_setup_sgmii_fw(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 				bool autoneg_wait)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	u32 lval, sval, flx_val;
-	s32 rc;
+	int rc;
 
 	rc = mac->ops.read_iosf_sb_reg(hw,
 				       IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
@@ -2145,7 +2145,7 @@ static s32 ixgbe_setup_sgmii_fw(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  */
 static void ixgbe_fc_autoneg_sgmii_x550em_a(struct ixgbe_hw *hw)
 {
-	s32 status = IXGBE_ERR_FC_NOT_NEGOTIATED;
+	int status = IXGBE_ERR_FC_NOT_NEGOTIATED;
 	u32 info[FW_PHY_ACT_DATA_COUNT] = { 0 };
 	ixgbe_link_speed speed;
 	bool link_up;
@@ -2275,9 +2275,9 @@ static void ixgbe_init_mac_link_ops_X550em(struct ixgbe_hw *hw)
 /** ixgbe_setup_sfp_modules_X550em - Setup SFP module
  * @hw: pointer to hardware structure
  */
-static s32 ixgbe_setup_sfp_modules_X550em(struct ixgbe_hw *hw)
+static int ixgbe_setup_sfp_modules_X550em(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	bool linear;
 
 	/* Check if SFP module is supported */
@@ -2296,7 +2296,7 @@ static s32 ixgbe_setup_sfp_modules_X550em(struct ixgbe_hw *hw)
  * @speed: pointer to link speed
  * @autoneg: true when autoneg or autotry is enabled
  **/
-static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
+static int ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
 					      ixgbe_link_speed *speed,
 					      bool *autoneg)
 {
@@ -2376,7 +2376,7 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
  * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
  * failure alarm, else return PHY access status.
  **/
-static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
+static int ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
 {
 	u32 status;
 	u16 reg;
@@ -2460,7 +2460,7 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
  *
  * Returns PHY access status
  **/
-static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
+static int ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
 {
 	u32 status;
 	u16 reg;
@@ -2554,7 +2554,7 @@ static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
  * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
  * failure alarm, else return PHY access status.
  **/
-static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
+static int ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
 {
 	struct ixgbe_phy_info *phy = &hw->phy;
 	bool lsc;
@@ -2577,10 +2577,10 @@ static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
  *
  * Configures the integrated KR PHY.
  **/
-static s32 ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *hw,
+static int ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *hw,
 				       ixgbe_link_speed speed)
 {
-	s32 status;
+	int status;
 	u32 reg_val;
 
 	status = hw->mac.ops.read_iosf_sb_reg(hw,
@@ -2632,7 +2632,7 @@ static s32 ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *hw,
  * ixgbe_setup_kr_x550em - Configure the KR PHY
  * @hw: pointer to hardware structure
  **/
-static s32 ixgbe_setup_kr_x550em(struct ixgbe_hw *hw)
+static int ixgbe_setup_kr_x550em(struct ixgbe_hw *hw)
 {
 	/* leave link alone for 2.5G */
 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL)
@@ -2650,7 +2650,7 @@ static s32 ixgbe_setup_kr_x550em(struct ixgbe_hw *hw)
  *
  *  Returns error code if unable to get link status.
  **/
-static s32 ixgbe_ext_phy_t_x550em_get_link(struct ixgbe_hw *hw, bool *link_up)
+static int ixgbe_ext_phy_t_x550em_get_link(struct ixgbe_hw *hw, bool *link_up)
 {
 	u32 ret;
 	u16 autoneg_status;
@@ -2684,7 +2684,7 @@ static s32 ixgbe_ext_phy_t_x550em_get_link(struct ixgbe_hw *hw, bool *link_up)
  * A return of a non-zero value indicates an error, and the base driver should
  * not report link up.
  **/
-static s32 ixgbe_setup_internal_phy_t_x550em(struct ixgbe_hw *hw)
+static int ixgbe_setup_internal_phy_t_x550em(struct ixgbe_hw *hw)
 {
 	ixgbe_link_speed force_speed;
 	bool link_up;
@@ -2744,9 +2744,9 @@ static s32 ixgbe_setup_internal_phy_t_x550em(struct ixgbe_hw *hw)
 /** ixgbe_reset_phy_t_X550em - Performs X557 PHY reset and enables LASI
  *  @hw: pointer to hardware structure
  **/
-static s32 ixgbe_reset_phy_t_X550em(struct ixgbe_hw *hw)
+static int ixgbe_reset_phy_t_X550em(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 
 	status = ixgbe_reset_phy_generic(hw);
 
@@ -2762,7 +2762,7 @@ static s32 ixgbe_reset_phy_t_X550em(struct ixgbe_hw *hw)
  *  @hw: pointer to hardware structure
  *  @led_idx: led number to turn on
  **/
-static s32 ixgbe_led_on_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
+static int ixgbe_led_on_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
 {
 	u16 phy_data;
 
@@ -2784,7 +2784,7 @@ static s32 ixgbe_led_on_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
  *  @hw: pointer to hardware structure
  *  @led_idx: led number to turn off
  **/
-static s32 ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
+static int ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
 {
 	u16 phy_data;
 
@@ -2816,12 +2816,12 @@ static s32 ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
  *  else returns IXGBE_ERR_SWFW_SYNC when encountering an error acquiring
  *  semaphore or IXGBE_ERR_HOST_INTERFACE_COMMAND when command fails.
  **/
-static s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
+static int ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
 				     u8 build, u8 sub, u16 len,
 				     const char *driver_ver)
 {
 	struct ixgbe_hic_drv_info2 fw_cmd;
-	s32 ret_val;
+	int ret_val;
 	int i;
 
 	if (!len || !driver_ver || (len > sizeof(fw_cmd.driver_string)))
@@ -2863,11 +2863,11 @@ static s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
  *
  *  Determine lowest common link speed with link partner.
  **/
-static s32 ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
+static int ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
 				  ixgbe_link_speed *lcd_speed)
 {
 	u16 an_lp_status;
-	s32 status;
+	int status;
 	u16 word = hw->eeprom.ctrl_word_3;
 
 	*lcd_speed = IXGBE_LINK_SPEED_UNKNOWN;
@@ -2898,11 +2898,11 @@ static s32 ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
  * ixgbe_setup_fc_x550em - Set up flow control
  * @hw: pointer to hardware structure
  */
-static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
+static int ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
 {
 	bool pause, asm_dir;
 	u32 reg_val;
-	s32 rc = 0;
+	int rc = 0;
 
 	/* Validate the requested mode */
 	if (hw->fc.strict_ieee && hw->fc.requested_mode == ixgbe_fc_rx_pause) {
@@ -2986,7 +2986,7 @@ static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
 static void ixgbe_fc_autoneg_backplane_x550em_a(struct ixgbe_hw *hw)
 {
 	u32 link_s1, lp_an_page_low, an_cntl_1;
-	s32 status = IXGBE_ERR_FC_NOT_NEGOTIATED;
+	int status = IXGBE_ERR_FC_NOT_NEGOTIATED;
 	ixgbe_link_speed speed;
 	bool link_up;
 
@@ -3070,10 +3070,10 @@ static void ixgbe_fc_autoneg_fiber_x550em_a(struct ixgbe_hw *hw)
  *  (from D0 to non-D0). Link is required to enter LPLU so avoid resetting
  *  the X557 PHY immediately prior to entering LPLU.
  **/
-static s32 ixgbe_enter_lplu_t_x550em(struct ixgbe_hw *hw)
+static int ixgbe_enter_lplu_t_x550em(struct ixgbe_hw *hw)
 {
 	u16 an_10g_cntl_reg, autoneg_reg, speed;
-	s32 status;
+	int status;
 	ixgbe_link_speed lcd_speed;
 	u32 save_autoneg;
 	bool link_up;
@@ -3164,10 +3164,10 @@ static s32 ixgbe_enter_lplu_t_x550em(struct ixgbe_hw *hw)
  * ixgbe_reset_phy_fw - Reset firmware-controlled PHYs
  * @hw: pointer to hardware structure
  */
-static s32 ixgbe_reset_phy_fw(struct ixgbe_hw *hw)
+static int ixgbe_reset_phy_fw(struct ixgbe_hw *hw)
 {
 	u32 store[FW_PHY_ACT_DATA_COUNT] = { 0 };
-	s32 rc;
+	int rc;
 
 	if (hw->phy.reset_disable || ixgbe_check_reset_blocked(hw))
 		return 0;
@@ -3188,10 +3188,10 @@ static s32 ixgbe_reset_phy_fw(struct ixgbe_hw *hw)
  * ixgbe_check_overtemp_fw - Check firmware-controlled PHYs for overtemp
  * @hw: pointer to hardware structure
  */
-static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
+static int ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
 {
 	u32 store[FW_PHY_ACT_DATA_COUNT] = { 0 };
-	s32 rc;
+	int rc;
 
 	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_GET_LINK_INFO, &store);
 	if (rc)
@@ -3235,10 +3235,10 @@ static void ixgbe_read_mng_if_sel_x550em(struct ixgbe_hw *hw)
  *  set during init_shared_code because the PHY/SFP type was
  *  not known.  Perform the SFP init if necessary.
  **/
-static s32 ixgbe_init_phy_ops_X550em(struct ixgbe_hw *hw)
+static int ixgbe_init_phy_ops_X550em(struct ixgbe_hw *hw)
 {
 	struct ixgbe_phy_info *phy = &hw->phy;
-	s32 ret_val;
+	int ret_val;
 
 	hw->mac.ops.set_lan_id(hw);
 
@@ -3364,9 +3364,9 @@ static enum ixgbe_media_type ixgbe_get_media_type_X550em(struct ixgbe_hw *hw)
 /** ixgbe_init_ext_t_x550em - Start (unstall) the external Base T PHY.
  ** @hw: pointer to hardware structure
  **/
-static s32 ixgbe_init_ext_t_x550em(struct ixgbe_hw *hw)
+static int ixgbe_init_ext_t_x550em(struct ixgbe_hw *hw)
 {
-	s32 status;
+	int status;
 	u16 reg;
 
 	status = hw->phy.ops.read_reg(hw,
@@ -3438,10 +3438,10 @@ static void ixgbe_set_mdio_speed(struct ixgbe_hw *hw)
  **  and clears all interrupts, perform a PHY reset, and perform a link (MAC)
  **  reset.
  **/
-static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
+static int ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 {
 	ixgbe_link_speed link_speed;
-	s32 status;
+	int status;
 	u32 ctrl = 0;
 	u32 i;
 	bool link_up = false;
@@ -3607,9 +3607,9 @@ static void ixgbe_set_source_address_pruning_X550(struct ixgbe_hw *hw,
  *
  *  Called at init time to set up flow control.
  **/
-static s32 ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *hw)
+static int ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *hw)
 {
-	s32 status = 0;
+	int status = 0;
 	u32 an_cntl = 0;
 
 	/* Validate the requested mode */
@@ -3712,9 +3712,9 @@ static void ixgbe_set_mux(struct ixgbe_hw *hw, u8 state)
  *
  * Acquires the SWFW semaphore and sets the I2C MUX
  */
-static s32 ixgbe_acquire_swfw_sync_X550em(struct ixgbe_hw *hw, u32 mask)
+static int ixgbe_acquire_swfw_sync_X550em(struct ixgbe_hw *hw, u32 mask)
 {
-	s32 status;
+	int status;
 
 	status = ixgbe_acquire_swfw_sync_X540(hw, mask);
 	if (status)
@@ -3748,11 +3748,11 @@ static void ixgbe_release_swfw_sync_X550em(struct ixgbe_hw *hw, u32 mask)
  *
  * Acquires the SWFW semaphore and get the shared PHY token as needed
  */
-static s32 ixgbe_acquire_swfw_sync_x550em_a(struct ixgbe_hw *hw, u32 mask)
+static int ixgbe_acquire_swfw_sync_x550em_a(struct ixgbe_hw *hw, u32 mask)
 {
 	u32 hmask = mask & ~IXGBE_GSSR_TOKEN_SM;
 	int retries = FW_PHY_TOKEN_RETRIES;
-	s32 status;
+	int status;
 
 	while (--retries) {
 		status = 0;
@@ -3805,11 +3805,11 @@ static void ixgbe_release_swfw_sync_x550em_a(struct ixgbe_hw *hw, u32 mask)
  * Token. The PHY Token is needed since the MDIO is shared between to MAC
  * instances.
  */
-static s32 ixgbe_read_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_read_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 				    u32 device_type, u16 *phy_data)
 {
 	u32 mask = hw->phy.phy_semaphore_mask | IXGBE_GSSR_TOKEN_SM;
-	s32 status;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, mask))
 		return IXGBE_ERR_SWFW_SYNC;
@@ -3831,11 +3831,11 @@ static s32 ixgbe_read_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
  * Writes a value to specified PHY register using the SWFW lock and PHY Token.
  * The PHY Token is needed since the MDIO is shared between to MAC instances.
  */
-static s32 ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
+static int ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 				     u32 device_type, u16 phy_data)
 {
 	u32 mask = hw->phy.phy_semaphore_mask | IXGBE_GSSR_TOKEN_SM;
-	s32 status;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, mask))
 		return IXGBE_ERR_SWFW_SYNC;
-- 
2.31.1


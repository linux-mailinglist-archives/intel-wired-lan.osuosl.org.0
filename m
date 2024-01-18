Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07638831ADE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 14:54:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 011526F576;
	Thu, 18 Jan 2024 13:53:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 011526F576
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705586038;
	bh=b8jmFLpTgBpmdGoUPwz3lQTUqstGyaDg8O1TicnQYcI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R4HU7ZYaJHfHAT8e9ezfokwHTt/iNTP1zb3vzd+ucnp3pL2DiNROJoFVjJSG83r6z
	 OwbMI/gtT1AjFrVghVDiFFZCqcFOAp7y7h+SsmlWq4wwygwBod04E3UhcAO03zBZ0W
	 Ffm1ox+f2O/WwtVOHbTOjuV7KxgTx9Qc8d+fralkqoYlCze1RwiFm/fDMQUtfbVpil
	 9N0c/oA64/KBvGEuwuiJivkxWzqNL4w+DgH4pHfUpZs0pJmvBlDPozp+sZBjO1+VrP
	 SRPAU/CiYBsALry73Kapk2Q0OEmsf6rZOWCg3gPwg1QnERzr2L8Pw5cfArDIth5y/8
	 Hp2TxzlcbQO9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRzVZPr7bkO1; Thu, 18 Jan 2024 13:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24D4C60BA0;
	Thu, 18 Jan 2024 13:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24D4C60BA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B844A1BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 13:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91AD160A95
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 13:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91AD160A95
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xc0XEbBYUP0o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 13:53:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EB486F539
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 13:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EB486F539
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="431607005"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="431607005"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 05:53:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="784802322"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="784802322"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga002.jf.intel.com with ESMTP; 18 Jan 2024 05:53:41 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jan 2024 14:43:32 +0100
Message-Id: <20240118134332.470907-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
References: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705586026; x=1737122026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AL/qZ0WD6J+GgqLI8FFUEgZnZeqP3RIQ+MZdN6saF58=;
 b=i6S9OGamgkEOU64Zo3CMqNk72FDT0S6fCSq2Vp9iHgp1IdWSvmhzjBK7
 EsVG/x8UmCNyjN2g5Gm/K/Y81hI5MMisTztjJmA9NbNOI5wcKkueqHy2Z
 cpG/TFU3nlYHer1WwAN01icvsZgelDTBGKftc6S48iI8Ng1VYJAaBGOkC
 TZ+eg/vlwyrIog+lAsSpSE42l1ignkJwjhQk1mQcxdAPW1kOLmSChZcQs
 x3RJsXaT2sDE2RKd5r3G2SxXpM3b3nNFiXFwly7BeZs2L72ju+P59ubBe
 Avr2egtgo8qDGUvsYTeyolQ3DqcuEYySx+/SFWq982bBzTHIJUXqBCIVI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i6S9OGam
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ixgbe: Cleanup after type
 convertion
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clean up code where touched during type convertion by the patch
8035560dbfaf. Rearrange to fix reverse Christmas tree.

Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    | 14 ++--
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    | 40 +++++------
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 66 +++++++++----------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 54 +++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 12 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 50 +++++++-------
 7 files changed, 119 insertions(+), 119 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 4e3fec1e47aa..76314ae58038 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -97,8 +97,8 @@ static int ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
 	struct ixgbe_phy_info *phy = &hw->phy;
-	int ret_val;
 	u16 list_offset, data_offset;
+	int ret_val;
 
 	/* Identify the PHY */
 	phy->ops.identify(hw);
@@ -414,10 +414,10 @@ static int ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
 static int ixgbe_start_mac_link_82598(struct ixgbe_hw *hw,
 				      bool autoneg_wait_to_complete)
 {
+	int status = 0;
 	u32 autoc_reg;
 	u32 links_reg;
 	u32 i;
-	int status = 0;
 
 	/* Restart link */
 	autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
@@ -649,13 +649,13 @@ static int ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
  **/
 static int ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
 {
-	int status;
 	int phy_status = 0;
-	u32 ctrl;
+	u8  analog_val;
 	u32 gheccr;
-	u32 i;
+	int status;
 	u32 autoc;
-	u8  analog_val;
+	u32 ctrl;
+	u32 i;
 
 	/* Call adapter stop to disable tx/rx and clear interrupts */
 	status = hw->mac.ops.stop_adapter(hw);
@@ -951,10 +951,10 @@ static int ixgbe_write_analog_reg8_82598(struct ixgbe_hw *hw, u32 reg, u8 val)
 static int ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
 				    u8 byte_offset, u8 *eeprom_data)
 {
-	int status = 0;
 	u16 sfp_addr = 0;
 	u16 sfp_data = 0;
 	u16 sfp_stat = 0;
+	int status = 0;
 	u16 gssr;
 	u32 i;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index f35378692ae9..f7cd2d3e30be 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -100,8 +100,8 @@ static void ixgbe_init_mac_link_ops_82599(struct ixgbe_hw *hw)
 
 static int ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
 {
-	int ret_val;
 	u16 list_offset, data_offset, data_value;
+	int ret_val;
 
 	if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
 		ixgbe_init_mac_link_ops_82599(hw);
@@ -503,11 +503,11 @@ static void ixgbe_stop_mac_link_on_d3_82599(struct ixgbe_hw *hw)
 static int ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
 			       bool autoneg_wait_to_complete)
 {
+	bool got_lock = false;
+	int status = 0;
 	u32 autoc_reg;
 	u32 links_reg;
 	u32 i;
-	int status = 0;
-	bool got_lock = false;
 
 	if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
 		status = hw->mac.ops.acquire_swfw_sync(hw,
@@ -661,11 +661,11 @@ static int ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
 				     ixgbe_link_speed speed,
 				     bool autoneg_wait_to_complete)
 {
-	int status = 0;
 	ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
-	s32 i, j;
-	bool link_up = false;
 	u32 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
+	bool link_up = false;
+	int status = 0;
+	s32 i, j;
 
 	 /* Set autoneg_advertised value based on input link speed */
 	hw->phy.autoneg_advertised = 0;
@@ -771,12 +771,12 @@ static int ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
 				      ixgbe_link_speed speed,
 				      bool autoneg_wait_to_complete)
 {
-	bool autoneg = false;
-	int status;
-	u32 pma_pmd_1g, link_mode, links_reg, i;
-	u32 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
 	u32 pma_pmd_10g_serial = autoc2 & IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK;
 	ixgbe_link_speed link_capabilities = IXGBE_LINK_SPEED_UNKNOWN;
+	u32 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
+	u32 pma_pmd_1g, link_mode, links_reg, i;
+	bool autoneg = false;
+	int status;
 
 	/* holds the value of AUTOC register at this current point in time */
 	u32 current_autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
@@ -908,10 +908,10 @@ static int ixgbe_setup_copper_link_82599(struct ixgbe_hw *hw,
 static int ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
 {
 	ixgbe_link_speed link_speed;
-	int status;
 	u32 ctrl, i, autoc, autoc2;
-	u32 curr_lms;
 	bool link_up = false;
+	u32 curr_lms;
+	int status;
 
 	/* Call adapter stop to disable tx/rx and clear interrupts */
 	status = hw->mac.ops.stop_adapter(hw);
@@ -1101,10 +1101,10 @@ static int ixgbe_fdir_check_cmd_complete(struct ixgbe_hw *hw, u32 *fdircmd)
  **/
 int ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw)
 {
-	int i;
 	u32 fdirctrl = IXGBE_READ_REG(hw, IXGBE_FDIRCTRL);
 	u32 fdircmd;
 	int err;
+	int i;
 
 	fdirctrl &= ~IXGBE_FDIRCTRL_INIT_DONE;
 
@@ -1869,8 +1869,8 @@ static int ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 {
 	u16 fw_offset, fw_ptp_cfg_offset;
 	int status = -EACCES;
-	u16 offset;
 	u16 fw_version = 0;
+	u16 offset;
 
 	/* firmware check is only necessary for SFI devices */
 	if (hw->phy.media_type != ixgbe_media_type_fiber)
@@ -2008,9 +2008,9 @@ static int ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
  **/
 static int ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
 {
-	int ret_val;
-	u32 anlp1_reg = 0;
 	u32 i, autoc_reg, autoc2_reg;
+	u32 anlp1_reg = 0;
+	int ret_val;
 
 	/* Enable link if disabled in NVM */
 	autoc2_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
@@ -2064,9 +2064,9 @@ static int ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
 static int ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 				     u8 dev_addr, u8 *data)
 {
-	u32 esdp;
-	int status;
 	s32 timeout = 200;
+	int status;
+	u32 esdp;
 
 	if (hw->phy.qsfp_shared_i2c_bus == true) {
 		/* Acquire I2C bus ownership. */
@@ -2118,9 +2118,9 @@ static int ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 static int ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 				      u8 dev_addr, u8 data)
 {
-	u32 esdp;
-	int status;
 	s32 timeout = 200;
+	int status;
+	u32 esdp;
 
 	if (hw->phy.qsfp_shared_i2c_bus == true) {
 		/* Acquire I2C bus ownership. */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 9a1d2601a739..a18d0b275b3e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -113,10 +113,10 @@ bool ixgbe_device_supports_autoneg_fc(struct ixgbe_hw *hw)
  **/
 int ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
 {
-	int ret_val = 0;
 	u32 reg = 0, reg_bp = 0;
-	u16 reg_cu = 0;
 	bool locked = false;
+	int ret_val = 0;
+	u16 reg_cu = 0;
 
 	/*
 	 * Validate the requested mode.  Strict IEEE mode does not allow
@@ -269,9 +269,9 @@ int ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
  **/
 int ixgbe_start_hw_generic(struct ixgbe_hw *hw)
 {
-	int ret_val;
-	u32 ctrl_ext;
 	u16 device_caps;
+	u32 ctrl_ext;
+	int ret_val;
 
 	/* Set the media type */
 	hw->phy.media_type = hw->mac.ops.get_media_type(hw);
@@ -493,10 +493,10 @@ int ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
 				  u32 pba_num_size)
 {
 	int ret_val;
-	u16 data;
 	u16 pba_ptr;
 	u16 offset;
 	u16 length;
+	u16 data;
 
 	if (pba_num == NULL) {
 		hw_dbg(hw, "PBA string buffer was null\n");
@@ -898,8 +898,8 @@ int ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw)
 int ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 					       u16 words, u16 *data)
 {
-	int status;
 	u16 i, count;
+	int status;
 
 	hw->eeprom.ops.init_params(hw);
 
@@ -945,11 +945,11 @@ int ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 static int ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 					      u16 words, u16 *data)
 {
+	u8 write_opcode = IXGBE_EEPROM_WRITE_OPCODE_SPI;
+	u16 page_size;
 	int status;
 	u16 word;
-	u16 page_size;
 	u16 i;
-	u8 write_opcode = IXGBE_EEPROM_WRITE_OPCODE_SPI;
 
 	/* Prepare the EEPROM for writing  */
 	status = ixgbe_acquire_eeprom(hw);
@@ -1041,8 +1041,8 @@ int ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
 int ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 					      u16 words, u16 *data)
 {
-	int status;
 	u16 i, count;
+	int status;
 
 	hw->eeprom.ops.init_params(hw);
 
@@ -1080,9 +1080,9 @@ int ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 static int ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 					     u16 words, u16 *data)
 {
-	int status;
-	u16 word_in;
 	u8 read_opcode = IXGBE_EEPROM_READ_OPCODE_SPI;
+	u16 word_in;
+	int status;
 	u16 i;
 
 	/* Prepare the EEPROM for reading  */
@@ -1152,8 +1152,8 @@ int ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 int ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 				   u16 words, u16 *data)
 {
-	u32 eerd;
 	int status;
+	u32 eerd;
 	u32 i;
 
 	hw->eeprom.ops.init_params(hw);
@@ -1246,8 +1246,8 @@ int ixgbe_read_eerd_generic(struct ixgbe_hw *hw, u16 offset, u16 *data)
 int ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 				    u16 words, u16 *data)
 {
-	u32 eewr;
 	int status;
+	u32 eewr;
 	u16 i;
 
 	hw->eeprom.ops.init_params(hw);
@@ -1742,9 +1742,9 @@ int ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 int ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
 					   u16 *checksum_val)
 {
-	int status;
-	u16 checksum;
 	u16 read_checksum = 0;
+	u16 checksum;
+	int status;
 
 	/*
 	 * Read the first word from the EEPROM. If this times out or fails, do
@@ -1788,8 +1788,8 @@ int ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
  **/
 int ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw)
 {
-	int status;
 	u16 checksum;
+	int status;
 
 	/*
 	 * Read the first word from the EEPROM. If this times out or fails, do
@@ -2736,10 +2736,10 @@ int ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval)
  **/
 int ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index)
 {
-	ixgbe_link_speed speed = 0;
-	bool link_up = false;
 	u32 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
+	ixgbe_link_speed speed = 0;
+	bool link_up = false;
 	bool locked = false;
 	int ret_val;
 
@@ -2784,9 +2784,9 @@ int ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index)
  **/
 int ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index)
 {
-	u32 autoc_reg = 0;
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 	bool locked = false;
+	u32 autoc_reg = 0;
 	int ret_val;
 
 	if (index > 3)
@@ -2852,8 +2852,8 @@ static int ixgbe_get_san_mac_addr_offset(struct ixgbe_hw *hw,
 int ixgbe_get_san_mac_addr_generic(struct ixgbe_hw *hw, u8 *san_mac_addr)
 {
 	u16 san_mac_data, san_mac_offset;
-	u8 i;
 	int ret_val;
+	u8 i;
 
 	/*
 	 * First read the EEPROM pointer to see if the MAC addresses are
@@ -3682,8 +3682,8 @@ int ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
 {
 	u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
 	struct ixgbe_hic_hdr *hdr = buffer;
-	u32 *u32arr = buffer;
 	u16 buf_len, dword_len;
+	u32 *u32arr = buffer;
 	int status;
 	u32 bi;
 
@@ -3758,8 +3758,8 @@ int ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
 				 __always_unused const char *driver_ver)
 {
 	struct ixgbe_hic_drv_info fw_cmd;
-	int i;
 	int ret_val;
+	int i;
 
 	fw_cmd.hdr.cmd = FW_CEM_CMD_DRIVER_INFO;
 	fw_cmd.hdr.buf_len = FW_CEM_CMD_DRIVER_INFO_LEN;
@@ -3905,11 +3905,11 @@ static int ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
  **/
 int ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
 {
-	int status;
 	u16 ets_offset;
-	u16 ets_cfg;
 	u16 ets_sensor;
 	u8  num_sensors;
+	u16 ets_cfg;
+	int status;
 	u8  i;
 	struct ixgbe_thermal_sensor_data *data = &hw->mac.thermal_sensor_data;
 
@@ -3961,15 +3961,15 @@ int ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
  **/
 int ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
 {
-	int status;
-	u16 ets_offset;
-	u16 ets_cfg;
-	u16 ets_sensor;
+	struct ixgbe_thermal_sensor_data *data = &hw->mac.thermal_sensor_data;
 	u8  low_thresh_delta;
 	u8  num_sensors;
 	u8  therm_limit;
+	u16 ets_sensor;
+	u16 ets_offset;
+	u16 ets_cfg;
+	int status;
 	u8  i;
-	struct ixgbe_thermal_sensor_data *data = &hw->mac.thermal_sensor_data;
 
 	memset(data, 0, sizeof(struct ixgbe_thermal_sensor_data));
 
@@ -4196,12 +4196,12 @@ int ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
 					  ixgbe_link_speed speed,
 					  bool autoneg_wait_to_complete)
 {
-	ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 	ixgbe_link_speed highest_link_speed = IXGBE_LINK_SPEED_UNKNOWN;
-	int status = 0;
+	ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
+	bool autoneg, link_up = false;
 	u32 speedcnt = 0;
+	int status = 0;
 	u32 i = 0;
-	bool autoneg, link_up = false;
 
 	/* Mask off requested but non-supported speeds */
 	status = hw->mac.ops.get_link_capabilities(hw, &link_speed, &autoneg);
@@ -4340,8 +4340,8 @@ int ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
 void ixgbe_set_soft_rate_select_speed(struct ixgbe_hw *hw,
 				      ixgbe_link_speed speed)
 {
-	int status;
 	u8 rs, eeprom_data;
+	int status;
 
 	switch (speed) {
 	case IXGBE_LINK_SPEED_10GB_FULL:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index dba2be48805a..98e3f0479fac 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3326,9 +3326,9 @@ static int ixgbe_get_module_info(struct net_device *dev,
 {
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
-	int status;
 	u8 sff8472_rev, addr_mode;
 	bool page_swap = false;
+	int status;
 
 	if (hw->phy.type == ixgbe_phy_fw)
 		return -ENXIO;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index e9c34061905a..2387657b4e77 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -334,9 +334,9 @@ bool ixgbe_check_reset_blocked(struct ixgbe_hw *hw)
  **/
 static int ixgbe_get_phy_id(struct ixgbe_hw *hw)
 {
-	int status;
 	u16 phy_id_high = 0;
 	u16 phy_id_low = 0;
+	int status;
 
 	status = hw->phy.ops.read_reg(hw, MDIO_DEVID1, MDIO_MMD_PMAPMD,
 				      &phy_id_high);
@@ -549,8 +549,8 @@ int ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
 int ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 			       u32 device_type, u16 *phy_data)
 {
-	int status;
 	u32 gssr = hw->phy.phy_semaphore_mask;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr) == 0) {
 		status = ixgbe_read_phy_reg_mdi(hw, reg_addr, device_type,
@@ -647,8 +647,8 @@ int ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
 int ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 				u32 device_type, u16 phy_data)
 {
-	int status;
 	u32 gssr = hw->phy.phy_semaphore_mask;
+	int status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr) == 0) {
 		status = ixgbe_write_phy_reg_mdi(hw, reg_addr, device_type,
@@ -1097,10 +1097,10 @@ int ixgbe_mii_bus_init(struct ixgbe_hw *hw)
  **/
 int ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
 {
-	int status = 0;
 	u16 autoneg_reg = IXGBE_MII_AUTONEG_REG;
-	bool autoneg = false;
 	ixgbe_link_speed speed;
+	bool autoneg = false;
+	int status = 0;
 
 	ixgbe_get_copper_link_capabilities_generic(hw, &speed, &autoneg);
 
@@ -1279,12 +1279,12 @@ int ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
 int ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
 			     bool *link_up)
 {
-	int status;
-	u32 time_out;
 	u32 max_time_out = 10;
-	u16 phy_link = 0;
 	u16 phy_speed = 0;
+	u16 phy_link = 0;
 	u16 phy_data = 0;
+	u32 time_out;
+	int status;
 
 	/* Initialize speed and link to default case */
 	*link_up = false;
@@ -1402,8 +1402,8 @@ int ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw)
 int ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
 {
 	u16 phy_offset, control, eword, edata, block_crc;
-	bool end_data = false;
 	u16 list_offset, data_offset;
+	bool end_data = false;
 	u16 phy_data = 0;
 	int ret_val;
 	u32 i;
@@ -1529,17 +1529,17 @@ int ixgbe_identify_module_generic(struct ixgbe_hw *hw)
  **/
 int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 {
+	enum ixgbe_sfp_type stored_sfp_type = hw->phy.sfp_type;
 	struct ixgbe_adapter *adapter = hw->back;
-	int status;
+	u8 oui_bytes[3] = {0, 0, 0};
+	u8 comp_codes_10g = 0;
+	u8 comp_codes_1g = 0;
+	u16 enforce_sfp = 0;
 	u32 vendor_oui = 0;
-	enum ixgbe_sfp_type stored_sfp_type = hw->phy.sfp_type;
 	u8 identifier = 0;
-	u8 comp_codes_1g = 0;
-	u8 comp_codes_10g = 0;
-	u8 oui_bytes[3] = {0, 0, 0};
 	u8 cable_tech = 0;
 	u8 cable_spec = 0;
-	u16 enforce_sfp = 0;
+	int status;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber) {
 		hw->phy.sfp_type = ixgbe_sfp_type_not_present;
@@ -2134,11 +2134,11 @@ static bool ixgbe_is_sfp_probe(struct ixgbe_hw *hw, u8 offset, u8 addr)
 static int ixgbe_read_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 					   u8 dev_addr, u8 *data, bool lock)
 {
-	int status;
-	u32 max_retry = 10;
-	u32 retry = 0;
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
+	u32 max_retry = 10;
 	bool nack = true;
+	u32 retry = 0;
+	int status;
 
 	if (hw->mac.type >= ixgbe_mac_X550)
 		max_retry = 3;
@@ -2259,10 +2259,10 @@ int ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
 static int ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 					    u8 dev_addr, u8 data, bool lock)
 {
-	int status;
+	u32 swfw_mask = hw->phy.phy_semaphore_mask;
 	u32 max_retry = 1;
 	u32 retry = 0;
-	u32 swfw_mask = hw->phy.phy_semaphore_mask;
+	int status;
 
 	if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
 		return -EBUSY;
@@ -2424,8 +2424,8 @@ static void ixgbe_i2c_stop(struct ixgbe_hw *hw)
  **/
 static int ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data)
 {
-	int i;
 	bool bit = false;
+	int i;
 
 	*data = 0;
 	for (i = 7; i >= 0; i--) {
@@ -2445,10 +2445,10 @@ static int ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data)
  **/
 static int ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data)
 {
+	bool bit = false;
 	int status;
-	int i;
 	u32 i2cctl;
-	bool bit = false;
+	int i;
 
 	for (i = 7; i >= 0; i--) {
 		bit = (data >> i) & 0x1;
@@ -2476,12 +2476,12 @@ static int ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data)
  **/
 static int ixgbe_get_i2c_ack(struct ixgbe_hw *hw)
 {
-	u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);
-	int status = 0;
-	u32 i = 0;
 	u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
+	u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);
 	u32 timeout = 10;
 	bool ack = true;
+	int status = 0;
+	u32 i = 0;
 
 	if (data_oe_bit) {
 		i2cctl |= IXGBE_I2C_DATA_OUT(hw);
@@ -2561,8 +2561,8 @@ static int ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data)
  **/
 static int ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data)
 {
-	int status;
 	u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
+	int status;
 
 	status = ixgbe_set_i2c_data(hw, &i2cctl, data);
 	if (status == 0) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index 39357af77c64..f1ffa398f6df 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -68,9 +68,9 @@ int ixgbe_setup_mac_link_X540(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  **/
 int ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
 {
-	int status;
-	u32 ctrl, i;
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
+	u32 ctrl, i;
+	int status;
 
 	/* Call adapter stop to disable tx/rx and clear interrupts */
 	status = hw->mac.ops.stop_adapter(hw);
@@ -382,9 +382,9 @@ static int ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 static int ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
 					       u16 *checksum_val)
 {
-	int status;
-	u16 checksum;
 	u16 read_checksum = 0;
+	u16 checksum;
+	int status;
 
 	/* Read the first word from the EEPROM. If this times out or fails, do
 	 * not continue or we could be in for a very long wait while every
@@ -441,8 +441,8 @@ static int ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
  **/
 static int ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
 {
-	int status;
 	u16 checksum;
+	int status;
 
 	/* Read the first word from the EEPROM. If this times out or fails, do
 	 * not continue or we could be in for a very long wait while every
@@ -486,8 +486,8 @@ static int ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
  **/
 static int ixgbe_update_flash_X540(struct ixgbe_hw *hw)
 {
-	u32 flup;
 	int status;
+	u32 flup;
 
 	status = ixgbe_poll_flash_update_done_X540(hw);
 	if (status == -EIO) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 56bc1ba184b5..bee1d2f554d3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -926,10 +926,10 @@ static int ixgbe_checksum_ptr_x550(struct ixgbe_hw *hw, u16 ptr,
 				   u16 size, u16 *csum, u16 *buffer,
 				   u32 buffer_size)
 {
-	u16 buf[256];
-	int status;
 	u16 length, bufsz, i, start;
 	u16 *local_buffer;
+	u16 buf[256];
+	int status;
 
 	bufsz = ARRAY_SIZE(buf);
 
@@ -994,10 +994,10 @@ static int ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
 				    u32 buffer_size)
 {
 	u16 eeprom_ptrs[IXGBE_EEPROM_LAST_WORD + 1];
+	u16 pointer, i, size;
 	u16 *local_buffer;
-	int status;
 	u16 checksum = 0;
-	u16 pointer, i, size;
+	int status;
 
 	hw->eeprom.ops.init_params(hw);
 
@@ -1120,9 +1120,9 @@ static int ixgbe_read_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 *data)
 static int ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
 					       u16 *checksum_val)
 {
-	int status;
-	u16 checksum;
 	u16 read_checksum = 0;
+	u16 checksum;
+	int status;
 
 	/* Read the first word from the EEPROM. If this times out or fails, do
 	 * not continue or we could be in for a very long wait while every
@@ -1170,8 +1170,8 @@ static int ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
 static int ixgbe_write_ee_hostif_data_X550(struct ixgbe_hw *hw, u16 offset,
 					   u16 data)
 {
-	int status;
 	struct ixgbe_hic_write_shadow_ram buffer;
+	int status;
 
 	buffer.hdr.req.cmd = FW_WRITE_SHADOW_RAM_CMD;
 	buffer.hdr.req.buf_lenh = 0;
@@ -1217,8 +1217,8 @@ static int ixgbe_write_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 data)
  **/
 static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
 {
-	int status = 0;
 	union ixgbe_hic_hdr2 buffer;
+	int status = 0;
 
 	buffer.req.cmd = FW_SHADOW_RAM_DUMP_CMD;
 	buffer.req.buf_lenh = 0;
@@ -1268,9 +1268,9 @@ static bool ixgbe_fw_recovery_mode_X550(struct ixgbe_hw *hw)
  **/
 static void ixgbe_disable_rx_x550(struct ixgbe_hw *hw)
 {
+	struct ixgbe_hic_disable_rxen fw_cmd;
 	u32 rxctrl, pfdtxgswc;
 	int status;
-	struct ixgbe_hic_disable_rxen fw_cmd;
 
 	rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
 	if (rxctrl & IXGBE_RXCTRL_RXEN) {
@@ -1312,8 +1312,8 @@ static void ixgbe_disable_rx_x550(struct ixgbe_hw *hw)
  **/
 static int ixgbe_update_eeprom_checksum_X550(struct ixgbe_hw *hw)
 {
-	int status;
 	u16 checksum = 0;
+	int status;
 
 	/* Read the first word from the EEPROM. If this times out or fails, do
 	 * not continue or we could be in for a very long wait while every
@@ -1431,8 +1431,8 @@ static int ixgbe_write_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
  **/
 static int ixgbe_setup_ixfi_x550em_x(struct ixgbe_hw *hw)
 {
-	int status;
 	u32 reg_val;
+	int status;
 
 	/* Disable training protocol FSM. */
 	status = ixgbe_read_iosf_sb_reg_x550(hw,
@@ -1503,8 +1503,8 @@ static int ixgbe_setup_ixfi_x550em_x(struct ixgbe_hw *hw)
  **/
 static int ixgbe_restart_an_internal_phy_x550em(struct ixgbe_hw *hw)
 {
-	int status;
 	u32 link_ctrl;
+	int status;
 
 	/* Restart auto-negotiation. */
 	status = hw->mac.ops.read_iosf_sb_reg(hw,
@@ -1553,8 +1553,8 @@ static int ixgbe_restart_an_internal_phy_x550em(struct ixgbe_hw *hw)
 static int ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
-	int status;
 	u32 reg_val;
+	int status;
 
 	/* iXFI is only supported with X552 */
 	if (mac->type != ixgbe_mac_X550EM_x)
@@ -1649,9 +1649,9 @@ ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
 				ixgbe_link_speed speed,
 				__always_unused bool autoneg_wait_to_complete)
 {
-	int status;
-	u16 reg_slice, reg_val;
 	bool setup_linear = false;
+	u16 reg_slice, reg_val;
+	int status;
 
 	/* Check if SFP module is supported and linear */
 	status = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
@@ -1693,8 +1693,8 @@ ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
 static int ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 {
 	struct ixgbe_mac_info *mac = &hw->mac;
-	int status;
 	u32 reg_val;
+	int status;
 
 	/* Disable all AN and force speed to 10G Serial. */
 	status = mac->ops.read_iosf_sb_reg(hw,
@@ -1921,8 +1921,8 @@ static int ixgbe_setup_mac_link_t_X550em(struct ixgbe_hw *hw,
 					 ixgbe_link_speed speed,
 					 bool autoneg_wait)
 {
-	int status;
 	ixgbe_link_speed force_speed;
+	int status;
 
 	/* Setup internal/external PHY link speed to iXFI (10G), unless
 	 * only 1G is auto advertised then setup KX link.
@@ -2277,8 +2277,8 @@ static void ixgbe_init_mac_link_ops_X550em(struct ixgbe_hw *hw)
  */
 static int ixgbe_setup_sfp_modules_X550em(struct ixgbe_hw *hw)
 {
-	int status;
 	bool linear;
+	int status;
 
 	/* Check if SFP module is supported */
 	status = ixgbe_supported_sfp_modules_X550em(hw, &linear);
@@ -2581,8 +2581,8 @@ static int ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw,
 static int ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *hw,
 				       ixgbe_link_speed speed)
 {
-	int status;
 	u32 reg_val;
+	int status;
 
 	status = hw->mac.ops.read_iosf_sb_reg(hw,
 					IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
@@ -2868,9 +2868,9 @@ static int ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
 static int ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
 				  ixgbe_link_speed *lcd_speed)
 {
+	u16 word = hw->eeprom.ctrl_word_3;
 	u16 an_lp_status;
 	int status;
-	u16 word = hw->eeprom.ctrl_word_3;
 
 	*lcd_speed = IXGBE_LINK_SPEED_UNKNOWN;
 
@@ -3075,10 +3075,10 @@ static void ixgbe_fc_autoneg_fiber_x550em_a(struct ixgbe_hw *hw)
 static int ixgbe_enter_lplu_t_x550em(struct ixgbe_hw *hw)
 {
 	u16 an_10g_cntl_reg, autoneg_reg, speed;
-	int status;
 	ixgbe_link_speed lcd_speed;
 	u32 save_autoneg;
 	bool link_up;
+	int status;
 
 	/* If blocked by MNG FW, then don't restart AN */
 	if (ixgbe_check_reset_blocked(hw))
@@ -3442,12 +3442,12 @@ static void ixgbe_set_mdio_speed(struct ixgbe_hw *hw)
  **/
 static int ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 {
+	u32 swfw_mask = hw->phy.phy_semaphore_mask;
 	ixgbe_link_speed link_speed;
-	int status;
+	bool link_up = false;
 	u32 ctrl = 0;
+	int status;
 	u32 i;
-	bool link_up = false;
-	u32 swfw_mask = hw->phy.phy_semaphore_mask;
 
 	/* Call adapter stop to disable Tx/Rx and clear interrupts */
 	status = hw->mac.ops.stop_adapter(hw);
@@ -3610,8 +3610,8 @@ static void ixgbe_set_source_address_pruning_X550(struct ixgbe_hw *hw,
  **/
 static int ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *hw)
 {
-	int status = 0;
 	u32 an_cntl = 0;
+	int status = 0;
 
 	/* Validate the requested mode */
 	if (hw->fc.strict_ieee && hw->fc.requested_mode == ixgbe_fc_rx_pause) {
-- 
2.31.1


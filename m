Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD41B96A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2DEC87FDE;
	Fri, 20 Sep 2019 17:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VyouML5je9CY; Fri, 20 Sep 2019 17:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81EC587BC2;
	Fri, 20 Sep 2019 17:39:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB9621BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6F0885852
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fj0khO77rYYZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1892857D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635332"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:51 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:19 -0700
Message-Id: <20190920091724.51767-5-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 05/10] i40e: Extend PHY access
 with page change flag
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
Cc: Piotr Azarewicz <piotr.azarewicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Azarewicz <piotr.azarewicz@intel.com>

Currently FW use MDIO I/F number corresponded with current PF for PHY
access. This code allow to specify used MDIO I/F number.

Add new field - command flags with only one flag for now. Added flag
tells FW that it shouldn't change page while accessing QSFP module, as
it was set manually.

Signed-off-by: Piotr Azarewicz <piotr.azarewicz@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  8 ++-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 70 +++++++++++++++----
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  8 +--
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 26 ++++---
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  1 +
 5 files changed, 87 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 530613f31527..a23f89fb33ee 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -2249,7 +2249,13 @@ struct i40e_aqc_phy_register_access {
 #define I40E_AQ_PHY_REG_ACCESS_EXTERNAL	1
 #define I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE	2
 	u8	dev_address;
-	u8	reserved1[2];
+	u8	cmd_flags;
+#define I40E_AQ_PHY_REG_ACCESS_DONT_CHANGE_QSFP_PAGE	0x01
+#define I40E_AQ_PHY_REG_ACCESS_SET_MDIO_IF_NUMBER	0x02
+#define I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_SHIFT	2
+#define I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_MASK	(0x3 << \
+		I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_SHIFT)
+	u8	reserved1;
 	__le32	reg_address;
 	__le32	reg_value;
 	u8	reserved2[4];
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index fe553bb23d7a..ed8608b874f4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -5046,7 +5046,7 @@ static enum i40e_status_code i40e_led_get_reg(struct i40e_hw *hw, u16 led_addr,
 		status =
 		       i40e_aq_get_phy_register(hw,
 						I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
-						I40E_PHY_COM_REG_PAGE,
+						I40E_PHY_COM_REG_PAGE, true,
 						I40E_PHY_LED_PROV_REG_1,
 						reg_val, NULL);
 	} else {
@@ -5079,7 +5079,7 @@ static enum i40e_status_code i40e_led_set_reg(struct i40e_hw *hw, u16 led_addr,
 		status =
 		       i40e_aq_set_phy_register(hw,
 						I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
-						I40E_PHY_COM_REG_PAGE,
+						I40E_PHY_COM_REG_PAGE, true,
 						I40E_PHY_LED_PROV_REG_1,
 						reg_val, NULL);
 	} else {
@@ -5118,7 +5118,7 @@ i40e_status i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
 		status =
 		      i40e_aq_get_phy_register(hw,
 					       I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
-					       I40E_PHY_COM_REG_PAGE,
+					       I40E_PHY_COM_REG_PAGE, true,
 					       I40E_PHY_LED_PROV_REG_1,
 					       &reg_val_aq, NULL);
 		if (status == I40E_SUCCESS)
@@ -5323,20 +5323,49 @@ void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val)
 }
 
 /**
- * i40e_aq_set_phy_register
+ * i40e_mdio_if_number_selection - MDIO I/F number selection
+ * @hw: pointer to the hw struct
+ * @set_mdio: use MDIO I/F number specified by mdio_num
+ * @mdio_num: MDIO I/F number
+ * @cmd: pointer to PHY Register command structure
+ **/
+static void i40e_mdio_if_number_selection(struct i40e_hw *hw, bool set_mdio,
+					  u8 mdio_num,
+					  struct i40e_aqc_phy_register_access *cmd)
+{
+	if (set_mdio && cmd->phy_interface == I40E_AQ_PHY_REG_ACCESS_EXTERNAL) {
+		if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED)
+			cmd->cmd_flags |=
+				I40E_AQ_PHY_REG_ACCESS_SET_MDIO_IF_NUMBER |
+				((mdio_num <<
+				I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_SHIFT) &
+				I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_MASK);
+		else
+			i40e_debug(hw, I40E_DEBUG_PHY,
+				   "MDIO I/F number selection not supported by current FW version.\n");
+	}
+}
+
+/**
+ * i40e_aq_set_phy_register_ext
  * @hw: pointer to the hw struct
  * @phy_select: select which phy should be accessed
  * @dev_addr: PHY device address
+ * @set_mdio: use MDIO I/F number specified by mdio_num
+ * @mdio_num: MDIO I/F number
  * @reg_addr: PHY register address
  * @reg_val: new register value
  * @cmd_details: pointer to command details structure or NULL
  *
  * Write the external PHY register.
+ * NOTE: In common cases MDIO I/F number should not be changed, thats why you
+ * may use simple wrapper i40e_aq_set_phy_register.
  **/
-i40e_status i40e_aq_set_phy_register(struct i40e_hw *hw,
-				     u8 phy_select, u8 dev_addr,
-				     u32 reg_addr, u32 reg_val,
-				     struct i40e_asq_cmd_details *cmd_details)
+enum i40e_status_code i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
+			     u8 phy_select, u8 dev_addr, bool page_change,
+			     bool set_mdio, u8 mdio_num,
+			     u32 reg_addr, u32 reg_val,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_phy_register_access *cmd =
@@ -5351,26 +5380,36 @@ i40e_status i40e_aq_set_phy_register(struct i40e_hw *hw,
 	cmd->reg_address = cpu_to_le32(reg_addr);
 	cmd->reg_value = cpu_to_le32(reg_val);
 
+	i40e_mdio_if_number_selection(hw, set_mdio, mdio_num, cmd);
+
+	if (!page_change)
+		cmd->cmd_flags = I40E_AQ_PHY_REG_ACCESS_DONT_CHANGE_QSFP_PAGE;
+
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
 
 	return status;
 }
 
 /**
- * i40e_aq_get_phy_register
+ * i40e_aq_get_phy_register_ext
  * @hw: pointer to the hw struct
  * @phy_select: select which phy should be accessed
  * @dev_addr: PHY device address
+ * @set_mdio: use MDIO I/F number specified by mdio_num
+ * @mdio_num: MDIO I/F number
  * @reg_addr: PHY register address
  * @reg_val: read register value
  * @cmd_details: pointer to command details structure or NULL
  *
  * Read the external PHY register.
+ * NOTE: In common cases MDIO I/F number should not be changed, thats why you
+ * may use simple wrapper i40e_aq_get_phy_register.
  **/
-i40e_status i40e_aq_get_phy_register(struct i40e_hw *hw,
-				     u8 phy_select, u8 dev_addr,
-				     u32 reg_addr, u32 *reg_val,
-				     struct i40e_asq_cmd_details *cmd_details)
+enum i40e_status_code i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
+			     u8 phy_select, u8 dev_addr, bool page_change,
+			     bool set_mdio, u8 mdio_num,
+			     u32 reg_addr, u32 *reg_val,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_phy_register_access *cmd =
@@ -5384,6 +5423,11 @@ i40e_status i40e_aq_get_phy_register(struct i40e_hw *hw,
 	cmd->dev_address = dev_addr;
 	cmd->reg_address = cpu_to_le32(reg_addr);
 
+	i40e_mdio_if_number_selection(hw, set_mdio, mdio_num, cmd);
+
+	if (!page_change)
+		cmd->cmd_flags = I40E_AQ_PHY_REG_ACCESS_DONT_CHANGE_QSFP_PAGE;
+
 	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
 	if (!status)
 		*reg_val = le32_to_cpu(cmd->reg_value);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 765bc5174ead..67a6bd52eb95 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5261,7 +5261,7 @@ static int i40e_get_module_info(struct net_device *netdev,
 	case I40E_MODULE_TYPE_SFP:
 		status = i40e_aq_get_phy_register(hw,
 				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
-				I40E_I2C_EEPROM_DEV_ADDR,
+				I40E_I2C_EEPROM_DEV_ADDR, true,
 				I40E_MODULE_SFF_8472_COMP,
 				&sff8472_comp, NULL);
 		if (status)
@@ -5269,7 +5269,7 @@ static int i40e_get_module_info(struct net_device *netdev,
 
 		status = i40e_aq_get_phy_register(hw,
 				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
-				I40E_I2C_EEPROM_DEV_ADDR,
+				I40E_I2C_EEPROM_DEV_ADDR, true,
 				I40E_MODULE_SFF_8472_SWAP,
 				&sff8472_swap, NULL);
 		if (status)
@@ -5301,7 +5301,7 @@ static int i40e_get_module_info(struct net_device *netdev,
 		/* Read from memory page 0. */
 		status = i40e_aq_get_phy_register(hw,
 				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
-				0,
+				0, true,
 				I40E_MODULE_REVISION_ADDR,
 				&sff8636_rev, NULL);
 		if (status)
@@ -5372,7 +5372,7 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
 
 		status = i40e_aq_get_phy_register(hw,
 				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
-				addr, offset, &value, NULL);
+				true, addr, offset, &value, NULL);
 		if (status)
 			return -EIO;
 		data[i] = value;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 7effe5010e32..bbb478f09093 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -411,14 +411,24 @@ i40e_status i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
 				u32 reg_addr, u32 reg_val,
 				struct i40e_asq_cmd_details *cmd_details);
 void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val);
-i40e_status i40e_aq_set_phy_register(struct i40e_hw *hw,
-				     u8 phy_select, u8 dev_addr,
-				     u32 reg_addr, u32 reg_val,
-				     struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_phy_register(struct i40e_hw *hw,
-				     u8 phy_select, u8 dev_addr,
-				     u32 reg_addr, u32 *reg_val,
-				     struct i40e_asq_cmd_details *cmd_details);
+enum i40e_status_code
+i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
+			     u8 phy_select, u8 dev_addr, bool page_change,
+			     bool set_mdio, u8 mdio_num,
+			     u32 reg_addr, u32 reg_val,
+			     struct i40e_asq_cmd_details *cmd_details);
+enum i40e_status_code
+i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
+			     u8 phy_select, u8 dev_addr, bool page_change,
+			     bool set_mdio, u8 mdio_num,
+			     u32 reg_addr, u32 *reg_val,
+			     struct i40e_asq_cmd_details *cmd_details);
+
+/* Convenience wrappers for most common use case */
+#define i40e_aq_set_phy_register(hw, ps, da, pc, ra, rv, cd)		\
+	i40e_aq_set_phy_register_ext(hw, ps, da, pc, false, 0, ra, rv, cd)
+#define i40e_aq_get_phy_register(hw, ps, da, pc, ra, rv, cd)		\
+	i40e_aq_get_phy_register_ext(hw, ps, da, pc, false, 0, ra, rv, cd)
 
 i40e_status i40e_read_phy_register_clause22(struct i40e_hw *hw,
 					    u16 reg, u8 phy_addr, u16 *value);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index b43ec94a0f29..6ea2867ff60f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -624,6 +624,7 @@ struct i40e_hw {
 #define I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK BIT_ULL(3)
 #define I40E_HW_FLAG_FW_LLDP_STOPPABLE      BIT_ULL(4)
 #define I40E_HW_FLAG_FW_LLDP_PERSISTENT     BIT_ULL(5)
+#define I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED BIT_ULL(6)
 #define I40E_HW_FLAG_DROP_MODE              BIT_ULL(7)
 	u64 flags;
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

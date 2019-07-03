Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AA65E24C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 12:45:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3097186489;
	Wed,  3 Jul 2019 10:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YlzTc7jraKK6; Wed,  3 Jul 2019 10:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37F3686141;
	Wed,  3 Jul 2019 10:45:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73D471BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 10:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FAEC82D57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 10:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTJcdk428MYD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 10:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B908381EB5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 10:45:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 03:45:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="157930768"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Jul 2019 03:45:17 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jul 2019 12:44:26 +0200
Message-Id: <20190703104426.3515-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.22.0.rc3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ixgbe: added support for NVM update via
 ixgbe driver
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
Cc: Piotr Skajewski <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When Secure Boot is enabled access to the /dev/mem is forbidden
for user-space applications and clients are reporting inability
to use tools in Secure Boot Mode. The way to perform NVM update
is to use ixgbe driver. Currently 10G Linux Base Driver has API
which allows only EEPROM access. There is a need to extend IOCTL
API to allow NVM and registers access.

Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  38 ++++++
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  17 +++
 .../net/ethernet/intel/ixgbe/ixgbe_common.h   |   3 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  74 +++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  50 +++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  41 ++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 129 ++++++++++++++++++
 8 files changed, 346 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index 109f8de5a1c2..fad82d27f958 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -2159,6 +2159,43 @@ static s32 ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 	return status;
 }
 
+/**
+ *  ixgbe_validate_register_82599 - Validate requested offset
+ *  @offset: offset to validate
+ *  @eeprom_len: EEPROM length
+ *
+ *  Validate requested offset for NVM Update API
+ *
+ *  Returns -ENOTTY if the offset is not available on the list
+ **/
+s32 ixgbe_validate_register_82599(u32 offset, u32 eeprom_len)
+{
+	switch (offset) {
+	case IXGBE_STATUS:
+	case IXGBE_ESDP:
+	case IXGBE_MSCA:
+	case IXGBE_MSRWD:
+	case IXGBE_AUTOC:
+	case IXGBE_EEC_8259X:
+	case IXGBE_EERD:
+	case IXGBE_FLA_8259X:
+	case IXGBE_FLOP:
+	case IXGBE_SWSM_8259X:
+	case IXGBE_FWSM_8259X:
+	case IXGBE_FACTPS_8259X:
+	case IXGBE_GSSR:
+	case IXGBE_BARCTRL:
+		return 0;
+	default:
+		if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
+		    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)) ||
+		    (offset >= 0x00020000 && offset <= eeprom_len))
+			return 0;
+	}
+
+	return -ENOTTY;
+}
+
 static const struct ixgbe_mac_operations mac_ops_82599 = {
 	.init_hw                = &ixgbe_init_hw_generic,
 	.reset_hw               = &ixgbe_reset_hw_82599,
@@ -2243,6 +2280,7 @@ static const struct ixgbe_phy_operations phy_ops_82599 = {
 	.read_i2c_eeprom	= &ixgbe_read_i2c_eeprom_generic,
 	.write_i2c_eeprom	= &ixgbe_write_i2c_eeprom_generic,
 	.check_overtemp		= &ixgbe_tn_check_overtemp,
+	.validate_register	= &ixgbe_validate_register_82599,
 };
 
 const struct ixgbe_info ixgbe_82599_info = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 0bd1294ba517..a4386c099841 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -837,6 +837,23 @@ s32 ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index)
 	return 0;
 }
 
+/**
+ *  ixgbe_init_nvmupd_features - Initialize NVM Update params
+ *  @hw: pointer to hardware structure
+ **/
+void ixgbe_init_nvmupd_features(struct ixgbe_hw *hw)
+{
+	hw->nvmupd_features.major = IXGBE_NVMUPD_FEATURES_API_VER_MAJOR;
+	hw->nvmupd_features.minor = IXGBE_NVMUPD_FEATURES_API_VER_MINOR;
+	hw->nvmupd_features.size = sizeof(hw->nvmupd_features);
+	memset(hw->nvmupd_features.features, 0x0,
+	       IXGBE_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN *
+	       sizeof(*hw->nvmupd_features.features));
+
+	hw->nvmupd_features.features[0] =
+		IXGBE_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT;
+}
+
 /**
  *  ixgbe_init_eeprom_params_generic - Initialize EEPROM params
  *  @hw: pointer to hardware structure
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
index 4b531e8ae38a..227515057ce3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
@@ -26,6 +26,7 @@ s32 ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index);
 s32 ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index);
 s32 ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw);
 
+void ixgbe_init_nvmupd_features(struct ixgbe_hw *hw);
 s32 ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw);
 s32 ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data);
 s32 ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
@@ -172,6 +173,8 @@ static inline void ixgbe_write_reg64(struct ixgbe_hw *hw, u32 reg, u64 value)
 
 u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg);
 #define IXGBE_READ_REG(a, reg) ixgbe_read_reg((a), (reg))
+#define IXGBE_R32(a, reg) ixgbe_read_reg((a), (reg))
+#define IXGBE_R8(a, reg) readb(READ_ONCE((a)->hw_addr) + (reg))
 
 #define IXGBE_WRITE_REG_ARRAY(a, reg, offset, value) \
 		ixgbe_write_reg((a), (reg) + ((offset) << 2), (value))
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index acba067cc15a..c845019fad66 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -889,7 +889,59 @@ static void ixgbe_get_regs(struct net_device *netdev,
 static int ixgbe_get_eeprom_len(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
-	return adapter->hw.eeprom.word_size * 2;
+	return pci_resource_len(adapter->pdev, 0);
+}
+
+static u8 ixgbe_nvmupd_get_module(u32 val)
+{
+	return (u8)(val & IXGBE_NVMUPD_MOD_PNT_MASK);
+}
+
+static int ixgbe_nvmupd_command(struct ixgbe_hw *hw,
+				struct ixgbe_nvm_access *nvm,
+				u8 *bytes)
+{
+	struct ixgbe_adapter *adapter = hw->back;
+	struct net_device *netdev = adapter->netdev;
+	u32 eeprom_len = ixgbe_get_eeprom_len(netdev);
+	u32 command;
+	int ret_val = 0;
+	u8 module;
+
+	command = nvm->command;
+	module = ixgbe_nvmupd_get_module(nvm->config);
+
+	switch (command) {
+	case IXGBE_NVMUPD_CMD_REG_READ:
+		switch (module) {
+		case IXGBE_NVMUPD_EXEC_FEATURES:
+			if (nvm->data_size == hw->nvmupd_features.size)
+				memcpy(bytes, &hw->nvmupd_features,
+				       hw->nvmupd_features.size);
+			else
+				ret_val = -ENOMEM;
+		break;
+		default:
+			if (hw->phy.ops.validate_register(nvm->offset,
+							  eeprom_len))
+				return -ENOTTY;
+
+			if (nvm->data_size == 1)
+				*((u8 *)bytes) = IXGBE_R8(hw, nvm->offset);
+			else
+				*((u32 *)bytes) = IXGBE_R32(hw, nvm->offset);
+		break;
+		}
+	break;
+	case IXGBE_NVMUPD_CMD_REG_WRITE:
+		if (hw->phy.ops.validate_register(nvm->offset, eeprom_len))
+			return -ENOTTY;
+
+		IXGBE_WRITE_REG(hw, nvm->offset, *((u32 *)bytes));
+	break;
+	}
+
+	return ret_val;
 }
 
 static int ixgbe_get_eeprom(struct net_device *netdev,
@@ -897,14 +949,24 @@ static int ixgbe_get_eeprom(struct net_device *netdev,
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_nvm_access *nvm;
 	u16 *eeprom_buff;
 	int first_word, last_word, eeprom_len;
 	int ret_val = 0;
+	u32 magic;
 	u16 i;
 
 	if (eeprom->len == 0)
 		return -EINVAL;
 
+	magic = hw->vendor_id | (hw->device_id << 16);
+	if (eeprom->magic && eeprom->magic != magic) {
+		nvm = (struct ixgbe_nvm_access *)eeprom;
+		ret_val = ixgbe_nvmupd_command(hw, nvm, bytes);
+		return ret_val;
+	}
+
+	/* normal ethtool get_eeprom support */
 	eeprom->magic = hw->vendor_id | (hw->device_id << 16);
 
 	first_word = eeprom->offset >> 1;
@@ -933,7 +995,9 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_nvm_access *nvm;
 	u16 *eeprom_buff;
+	u32 magic;
 	void *ptr;
 	int max_len, first_word, last_word, ret_val = 0;
 	u16 i;
@@ -941,6 +1005,14 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
 	if (eeprom->len == 0)
 		return -EINVAL;
 
+	magic = hw->vendor_id | (hw->device_id << 16);
+	if (eeprom->magic && eeprom->magic != magic) {
+		nvm = (struct ixgbe_nvm_access *)eeprom;
+		ret_val = ixgbe_nvmupd_command(hw, nvm, bytes);
+		return ret_val;
+	}
+
+	/* normal ethtool set_eeprom support */
 	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
 		return -EINVAL;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index b613e72c8ee4..de7b0aa5666e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6400,6 +6400,9 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 	/* set default work limits */
 	adapter->tx_work_limit = IXGBE_DEFAULT_TX_WORK;
 
+	/* NVM Update features initialization */
+	ixgbe_init_nvmupd_features(hw);
+
 	/* initialize eeprom parameters */
 	if (ixgbe_init_eeprom_params_generic(hw)) {
 		e_dev_err("EEPROM initialization failed\n");
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2be1c4c72435..f42e7879233b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -136,6 +136,7 @@
 
 #define IXGBE_VPDDIAG0  0x10204
 #define IXGBE_VPDDIAG1  0x10208
+#define IXGBE_SRAMREL   0x10210
 
 /* I2CCTL Bit Masks */
 #define IXGBE_I2C_CLK_IN_8259X		0x00000001
@@ -929,13 +930,15 @@ struct ixgbe_nvm_version {
 #define IXGBE_FWSM_FW_VAL_BIT	BIT(15)
 
 /* ARC Subsystem registers */
-#define IXGBE_HICR      0x15F00
-#define IXGBE_FWSTS     0x15F0C
-#define IXGBE_HSMC0R    0x15F04
-#define IXGBE_HSMC1R    0x15F08
-#define IXGBE_SWSR      0x15F10
-#define IXGBE_HFDR      0x15FE8
-#define IXGBE_FLEX_MNG  0x15800 /* 0x15800 - 0x15EFC */
+#define IXGBE_HICR		0x15F00
+#define IXGBE_FWSTS		0x15F0C
+#define IXGBE_HSMC0R		0x15F04
+#define IXGBE_HSMC1R		0x15F08
+#define IXGBE_SWSR		0x15F10
+#define IXGBE_FWRESETCNT	0x15F40
+#define IXGBE_HFDR		0x15FE8
+#define IXGBE_FLEX_MNG		0x15800 /* 0x15800 - 0x15EFC */
+#define IXGBE_FLEX_MNG_PTR(_i)	(IXGBE_FLEX_MNG + ((_i) * 4))
 
 #define IXGBE_HICR_EN              0x01  /* Enable bit - RO */
 /* Driver sets this bit when done to put command in RAM */
@@ -996,7 +999,7 @@ struct ixgbe_nvm_version {
 #define IXGBE_GSCL_8_82599      0x1103C
 #define IXGBE_PHYADR_82599      0x11040
 #define IXGBE_PHYDAT_82599      0x11044
-#define IXGBE_PHYCTL_82599      0x11048
+#define IXGBE_PHYCTL            0x11048
 #define IXGBE_PBACLR_82599      0x11068
 
 #define IXGBE_CIAA_8259X	0x11088
@@ -3513,6 +3516,7 @@ struct ixgbe_phy_operations {
 				      u8 *value);
 	s32 (*write_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
 				       u8 value);
+	s32 (*validate_register)(u32 offset, u32 eeprom_len);
 };
 
 struct ixgbe_link_operations {
@@ -3539,6 +3543,35 @@ struct ixgbe_eeprom_info {
 	u16				ctrl_word_3;
 };
 
+/* NVM Update commands */
+#define IXGBE_NVMUPD_CMD_REG_READ	0x0000000B
+#define IXGBE_NVMUPD_CMD_REG_WRITE	0x0000000C
+
+/* NVM Update features API */
+#define IXGBE_NVMUPD_FEATURES_API_VER_MAJOR		0
+#define IXGBE_NVMUPD_FEATURES_API_VER_MINOR		0
+#define IXGBE_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN	12
+#define IXGBE_NVMUPD_EXEC_FEATURES			0xe
+#define IXGBE_NVMUPD_FEATURE_FLAT_NVM_SUPPORT		BIT(0)
+#define IXGBE_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT	BIT(1)
+
+#define IXGBE_NVMUPD_MOD_PNT_MASK			0xFF
+
+struct ixgbe_nvm_access {
+	u32 command;
+	u32 config;
+	u32 offset;	/* in bytes */
+	u32 data_size;	/* in bytes */
+	u8 data[1];
+};
+
+struct ixgbe_nvm_features {
+	u8 major;
+	u8 minor;
+	u16 size;
+	u8 features[IXGBE_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN];
+};
+
 #define IXGBE_FLAGS_DOUBLE_RESET_REQUIRED	0x01
 struct ixgbe_mac_info {
 	struct ixgbe_mac_operations     ops;
@@ -3637,6 +3670,7 @@ struct ixgbe_hw {
 	struct ixgbe_eeprom_info	eeprom;
 	struct ixgbe_bus_info		bus;
 	struct ixgbe_mbx_info		mbx;
+	struct ixgbe_nvm_features	nvmupd_features;
 	const u32			*mvals;
 	u16				device_id;
 	u16				vendor_id;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index de563cfd294d..9f470fbdd84c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -822,6 +822,46 @@ s32 ixgbe_blink_led_stop_X540(struct ixgbe_hw *hw, u32 index)
 
 	return 0;
 }
+
+/**
+ *  ixgbe_validate_register_x540 - Validate requested offset
+ *  @offset: offset to validate
+ *  @eeprom_len: EEPROM length
+ *
+ *  Validate requested offset for NVM Update API
+ *
+ *  Returns -ENOTTY if the offset is not available on the list
+ **/
+s32 ixgbe_validate_register_x540(u32 offset, u32 eeprom_len)
+{
+	switch (offset) {
+	case IXGBE_STATUS:
+	case IXGBE_ESDP:
+	case IXGBE_MSCA:
+	case IXGBE_MSRWD:
+	case IXGBE_EEC_X540:
+	case IXGBE_EERD:
+	case IXGBE_EEWR:
+	case IXGBE_FLA_X540:
+	case IXGBE_FLOP:
+	case IXGBE_SWSM_X540:
+	case IXGBE_FWSM_X540:
+	case IXGBE_FACTPS_X540:
+	case IXGBE_GSSR:
+	case IXGBE_SRAMREL:
+	case IXGBE_BARCTRL:
+		return 0;
+	default:
+		if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
+		    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)) ||
+		    (offset >= 0x00020000 &&
+		     offset <= eeprom_len))
+			return 0;
+	}
+
+	return -ENOTTY;
+}
+
 static const struct ixgbe_mac_operations mac_ops_X540 = {
 	.init_hw                = &ixgbe_init_hw_generic,
 	.reset_hw               = &ixgbe_reset_hw_X540,
@@ -906,6 +946,7 @@ static const struct ixgbe_phy_operations phy_ops_X540 = {
 	.write_i2c_eeprom       = &ixgbe_write_i2c_eeprom_generic,
 	.check_overtemp         = &ixgbe_tn_check_overtemp,
 	.set_phy_power          = &ixgbe_set_copper_phy_power,
+	.validate_register	= &ixgbe_validate_register_x540,
 };
 
 static const u32 ixgbe_mvals_X540[IXGBE_MVALS_IDX_LIMIT] = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 9c42f741ed5e..99a5d327abcf 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -3793,6 +3793,132 @@ static s32 ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 	return status;
 }
 
+/**
+ *  ixgbe_validate_register_x550 - Validate requested offset
+ *  @offset: offset to validate
+ *  @eeprom_len: EEPROM length
+ *
+ *  Validate requested offset for NVM Update API
+ *
+ *  Returns -ENOTTY if the offset is not available on the list
+ **/
+s32 ixgbe_validate_register_x550(u32 offset, __always_unused u32 eeprom_len)
+{
+	switch (offset) {
+	case IXGBE_STATUS:
+	case IXGBE_ESDP:
+	case IXGBE_MSCA:
+	case IXGBE_MSRWD:
+	case IXGBE_EEC_X550:
+	case IXGBE_EEWR:
+	case IXGBE_FLA_X550:
+	case IXGBE_FLOP:
+	case IXGBE_SWSM_X550:
+	case IXGBE_FWSM_X550:
+	case IXGBE_FACTPS_X550:
+	case IXGBE_GSSR:
+	case IXGBE_SRAMREL:
+	case IXGBE_PHYCTL:
+	case IXGBE_HICR:
+	case IXGBE_FWSTS:
+	case IXGBE_FWRESETCNT:
+		return 0;
+	default:
+		if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
+		    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)) ||
+		    (offset >= IXGBE_FLEX_MNG_PTR(0) &&
+		     offset <= IXGBE_FLEX_MNG_PTR(447)))
+			return 0;
+	}
+
+	return -ENOTTY;
+}
+
+/**
+ *  ixgbe_validate_register_x550em_x - Validate requested offset
+ *  @offset: offset to validate
+ *  @eeprom_len: EEPROM length
+ *
+ *  Validate requested offset for NVM Update API
+ *
+ *  Returns -ENOTTY if the offset is not available on the list
+ **/
+s32 ixgbe_validate_register_x550em_x(u32 offset, __always_unused u32 eeprom_len)
+{
+	switch (offset) {
+	case IXGBE_STATUS:
+	case IXGBE_ESDP:
+	case IXGBE_MSCA:
+	case IXGBE_MSRWD:
+	case IXGBE_EEC_X550EM_x:
+	case IXGBE_FLA_X550EM_x:
+	case IXGBE_FLOP:
+	case IXGBE_SWSM_X550EM_x:
+	case IXGBE_FWSM_X550EM_x:
+	case IXGBE_FACTPS_X550EM_x:
+	case IXGBE_GSSR:
+	case IXGBE_PHYCTL:
+	case IXGBE_NW_MNG_IF_SEL:
+	case IXGBE_HICR:
+	case IXGBE_FWSTS:
+	case IXGBE_FWRESETCNT:
+	case IXGBE_I2CCTL_X550EM_x:
+		return 0;
+	default:
+		if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
+		    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)) ||
+		    (offset >= IXGBE_FLEX_MNG_PTR(0) &&
+		     offset <= IXGBE_FLEX_MNG_PTR(447)) ||
+		    (offset >= IXGBE_FUSES0_GROUP(0) &&
+		     offset <= IXGBE_FUSES0_GROUP(7)))
+			return 0;
+	}
+
+	return -ENOTTY;
+}
+
+/**
+ *  ixgbe_validate_register_x550em_a - Validate requested offset
+ *  @offset: offset to validate
+ *  @eeprom_len: EEPROM length
+ *
+ *  Validate requested offset for NVM Update API
+ *
+ *  Returns -ENOTTY if the offset is not available on the list
+ **/
+s32 ixgbe_validate_register_x550em_a(u32 offset, __always_unused u32 eeprom_len)
+{
+	switch (offset) {
+	case IXGBE_STATUS:
+	case IXGBE_ESDP:
+	case IXGBE_MSCA:
+	case IXGBE_MSRWD:
+	case IXGBE_EEC_X550EM_a:
+	case IXGBE_FLA_X550EM_a:
+	case IXGBE_FLOP:
+	case IXGBE_SWSM_X550EM_a:
+	case IXGBE_FWSM_X550EM_a:
+	case IXGBE_SWFW_SYNC_X550EM_a:
+	case IXGBE_FACTPS_X550EM_a:
+	case IXGBE_GSSR:
+	case IXGBE_PHYCTL:
+	case IXGBE_NW_MNG_IF_SEL:
+	case IXGBE_HICR:
+	case IXGBE_FWSTS:
+	case IXGBE_FWRESETCNT:
+	case IXGBE_I2CCTL_X550EM_a:
+		return 0;
+	default:
+		if ((offset >= IXGBE_MAVTV(0) && offset <= IXGBE_MAVTV(7)) ||
+		    (offset >= IXGBE_RAL(0) && offset <= IXGBE_RAH(15)) ||
+		    (offset >= IXGBE_FLEX_MNG_PTR(0) &&
+		     offset <= IXGBE_FLEX_MNG_PTR(447)))
+			return 0;
+	}
+
+	return -ENOTTY;
+}
+
 #define X550_COMMON_MAC \
 	.init_hw			= &ixgbe_init_hw_generic, \
 	.start_hw			= &ixgbe_start_hw_X540, \
@@ -3982,6 +4108,7 @@ static const struct ixgbe_phy_operations phy_ops_X550 = {
 	.identify		= &ixgbe_identify_phy_generic,
 	.read_reg		= &ixgbe_read_phy_reg_generic,
 	.write_reg		= &ixgbe_write_phy_reg_generic,
+	.validate_register	= &ixgbe_validate_register_x550,
 };
 
 static const struct ixgbe_phy_operations phy_ops_X550EM_x = {
@@ -3991,6 +4118,7 @@ static const struct ixgbe_phy_operations phy_ops_X550EM_x = {
 	.identify		= &ixgbe_identify_phy_x550em,
 	.read_reg		= &ixgbe_read_phy_reg_generic,
 	.write_reg		= &ixgbe_write_phy_reg_generic,
+	.validate_register	= &ixgbe_validate_register_x550em_x,
 };
 
 static const struct ixgbe_phy_operations phy_ops_x550em_x_fw = {
@@ -4013,6 +4141,7 @@ static const struct ixgbe_phy_operations phy_ops_x550em_a = {
 	.write_reg		= &ixgbe_write_phy_reg_x550a,
 	.read_reg_mdi		= &ixgbe_read_phy_reg_mdi,
 	.write_reg_mdi		= &ixgbe_write_phy_reg_mdi,
+	.validate_register	= &ixgbe_validate_register_x550em_a,
 };
 
 static const struct ixgbe_phy_operations phy_ops_x550em_a_fw = {
-- 
2.22.0.rc3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

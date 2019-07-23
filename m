Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 464DF71F20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:22:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7ED33203F0;
	Tue, 23 Jul 2019 18:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hLlOymvUUVIP; Tue, 23 Jul 2019 18:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 22EE5204F7;
	Tue, 23 Jul 2019 18:22:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12C991BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0FD56857E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tqq3_dSjUkWT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:22:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1DDE7857D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="172037679"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga003.jf.intel.com with ESMTP; 23 Jul 2019 11:22:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:01:43 -0400
Message-Id: <20190723100144.57435-11-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723100144.57435-1-alice.michael@intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 11/12] i40e: Persistent lldp
 support
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
Cc: Sylwia Wnuczko <sylwia.wnuczko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwia Wnuczko <sylwia.wnuczko@intel.com>

This patch adds a function to read nvm module data and uses it to
read current lldp agent configuration from nvm api version 1.8.

Title: i40e-shared: Persistent lldp support
Change-type: FeatureImplementation

Signed-off-by: Sylwia Wnuczko <sylwia.wnuczko@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  18 +++-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |   2 +
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    | 101 ++++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   6 ++
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 +
 5 files changed, 127 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 292eeb3def10..200a1cb3b536 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -877,7 +877,23 @@ i40e_status i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 		return I40E_NOT_SUPPORTED;
 
 	/* Read LLDP NVM area */
-	ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
+	if (hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT) {
+		u8 offset = 0;
+
+		if (hw->mac.type == I40E_MAC_XL710)
+			offset = I40E_LLDP_CURRENT_STATUS_XL710_OFFSET;
+		else if (hw->mac.type == I40E_MAC_X722)
+			offset = I40E_LLDP_CURRENT_STATUS_X722_OFFSET;
+		else
+			return I40E_NOT_SUPPORTED;
+
+		ret = i40e_read_nvm_module_data(hw,
+						I40E_SR_EMP_SR_SETTINGS_PTR,
+						offset, 1,
+						&lldp_cfg.adminstatus);
+	} else {
+		ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
+	}
 	if (ret)
 		return I40E_ERR_NOT_READY;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.h b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
index ddb48ae7cce4..2a80c5daa376 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
@@ -30,6 +30,8 @@
 #define I40E_CEE_SUBTYPE_APP_PRI	4
 
 #define I40E_CEE_MAX_FEAT_TYPE		3
+#define I40E_LLDP_CURRENT_STATUS_XL710_OFFSET	0x2B
+#define I40E_LLDP_CURRENT_STATUS_X722_OFFSET	0x31
 /* Defines for LLDP TLV header */
 #define I40E_LLDP_TLV_LEN_SHIFT		0
 #define I40E_LLDP_TLV_LEN_MASK		(0x01FF << I40E_LLDP_TLV_LEN_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index a60ab9d48065..28ea53d910ad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -321,6 +321,77 @@ i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
 	return ret_code;
 }
 
+/**
+ * i40e_read_nvm_module_data - Reads NVM Buffer to specified memory location
+ * @hw: pointer to the HW structure
+ * @module_ptr: Pointer to module in words with respect to NVM beginning
+ * @offset: offset in words from module start
+ * @words_data_size: Words to read from NVM
+ * @data_ptr: Pointer to memory location where resulting buffer will be stored
+ **/
+i40e_status i40e_read_nvm_module_data(struct i40e_hw *hw,
+						u8 module_ptr, u16 offset,
+						u16 words_data_size,
+						u16 *data_ptr)
+{
+	i40e_status status;
+	u16 ptr_value = 0;
+	u32 flat_offset;
+
+	if (module_ptr != 0) {
+		status = i40e_read_nvm_word(hw, module_ptr, &ptr_value);
+		if (status) {
+			i40e_debug(hw, I40E_DEBUG_ALL,
+				   "Reading nvm word failed.Error code: %d.\n",
+				   status);
+			return I40E_ERR_NVM;
+		}
+	}
+#define I40E_NVM_INVALID_PTR_VAL 0x7FFF
+#define I40E_NVM_INVALID_VAL 0xFFFF
+
+	/* Pointer not initialized */
+	if (ptr_value == I40E_NVM_INVALID_PTR_VAL ||
+	    ptr_value == I40E_NVM_INVALID_VAL)
+		return I40E_ERR_BAD_PTR;
+
+	/* Check whether the module is in SR mapped area or outside */
+	if (ptr_value & I40E_PTR_TYPE) {
+		/* Pointer points outside of the Shared RAM mapped area */
+		ptr_value &= ~I40E_PTR_TYPE;
+
+		/* PtrValue in 4kB units, need to convert to words */
+		ptr_value /= 2;
+		flat_offset = ((u32)ptr_value * 0x1000) + (u32)offset;
+		status = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
+		if (!status) {
+			status = i40e_aq_read_nvm(hw, 0, 2 * flat_offset,
+						  2 * words_data_size,
+						  data_ptr, true, NULL);
+			i40e_release_nvm(hw);
+			if (status) {
+				i40e_debug(hw, I40E_DEBUG_ALL,
+					   "Reading nvm aq failed.Error code: %d.\n",
+					   status);
+				return I40E_ERR_NVM;
+			}
+		} else {
+			return I40E_ERR_NVM;
+		}
+	} else {
+		/* Read from the Shadow RAM */
+		status = i40e_read_nvm_buffer(hw, ptr_value + offset,
+					      &words_data_size, data_ptr);
+		if (status) {
+			i40e_debug(hw, I40E_DEBUG_ALL,
+				   "Reading nvm buffer failed.Error code: %d.\n",
+				   status);
+		}
+	}
+
+	return status;
+}
+
 /**
  * i40e_read_nvm_buffer_srctl - Reads Shadow RAM buffer via SRCTL register
  * @hw: pointer to the HW structure
@@ -429,6 +500,36 @@ static i40e_status __i40e_read_nvm_buffer(struct i40e_hw *hw,
 	return i40e_read_nvm_buffer_srctl(hw, offset, words, data);
 }
 
+/**
+ * i40e_read_nvm_buffer - Reads Shadow RAM buffer and acquire lock if necessary
+ * @hw: pointer to the HW structure
+ * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF).
+ * @words: (in) number of words to read; (out) number of words actually read
+ * @data: words read from the Shadow RAM
+ *
+ * Reads 16 bit words (data buffer) from the SR using the i40e_read_nvm_srrd()
+ * method. The buffer read is preceded by the NVM ownership take
+ * and followed by the release.
+ **/
+i40e_status i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
+					   u16 *words, u16 *data)
+{
+	i40e_status ret_code = 0;
+
+	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE) {
+		ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
+		if (!ret_code) {
+			ret_code = i40e_read_nvm_buffer_aq(hw, offset, words,
+							 data);
+			i40e_release_nvm(hw);
+		}
+	} else {
+		ret_code = i40e_read_nvm_buffer_srctl(hw, offset, words, data);
+	}
+
+	return ret_code;
+}
+
 /**
  * i40e_write_nvm_aq - Writes Shadow RAM.
  * @hw: pointer to the HW structure.
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 9c810d54df1c..33945fb2dd2d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -315,6 +315,12 @@ i40e_status i40e_acquire_nvm(struct i40e_hw *hw,
 void i40e_release_nvm(struct i40e_hw *hw);
 i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
 					 u16 *data);
+i40e_status i40e_read_nvm_module_data(struct i40e_hw *hw,
+						u8 module_ptr, u16 offset,
+						u16 words_data_size,
+						u16 *data_ptr);
+i40e_status i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
+					   u16 *words, u16 *data);
 i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw);
 i40e_status i40e_validate_nvm_checksum(struct i40e_hw *hw,
 						 u16 *checksum);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 06e2499de363..0f4994bd089a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1318,6 +1318,7 @@ struct i40e_hw_port_stats {
 #define I40E_SR_VPD_PTR				0x2F
 #define I40E_SR_PCIE_ALT_AUTO_LOAD_PTR		0x3E
 #define I40E_SR_SW_CHECKSUM_WORD		0x3F
+#define I40E_SR_EMP_SR_SETTINGS_PTR		0x48
 
 /* Auxiliary field, mask and shift definition for Shadow RAM and NVM Flash */
 #define I40E_SR_VPD_MODULE_MAX_SIZE		1024
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

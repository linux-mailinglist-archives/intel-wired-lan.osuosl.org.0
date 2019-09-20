Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C172DB96A2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:39:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 740B9871E0;
	Fri, 20 Sep 2019 17:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R-hDbD+DSOet; Fri, 20 Sep 2019 17:39:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03C1586FEF;
	Fri, 20 Sep 2019 17:39:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3041BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3870F85852
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYwVcgz0lRcU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D45685764
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635320"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:50 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:15 -0700
Message-Id: <20190920091724.51767-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 01/10] i40e: Fix for persistent
 lldp support
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

This patch fixes function to read nvm module data and uses it to
read current lldp agent configuration from nvm api version 1.8.

Signed-off-by: Sylwia Wnuczko <sylwia.wnuczko@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |  3 +
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    | 61 ++++++++++---------
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 10 +--
 4 files changed, 44 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 200a1cb3b536..9de503c5f99b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -889,7 +889,9 @@ i40e_status i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 
 		ret = i40e_read_nvm_module_data(hw,
 						I40E_SR_EMP_SR_SETTINGS_PTR,
-						offset, 1,
+						offset,
+						I40E_LLDP_CURRENT_STATUS_OFFSET,
+						I40E_LLDP_CURRENT_STATUS_SIZE,
 						&lldp_cfg.adminstatus);
 	} else {
 		ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.h b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
index 2a80c5daa376..ba86ad833bee 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
@@ -32,6 +32,9 @@
 #define I40E_CEE_MAX_FEAT_TYPE		3
 #define I40E_LLDP_CURRENT_STATUS_XL710_OFFSET	0x2B
 #define I40E_LLDP_CURRENT_STATUS_X722_OFFSET	0x31
+#define I40E_LLDP_CURRENT_STATUS_OFFSET		1
+#define I40E_LLDP_CURRENT_STATUS_SIZE		1
+
 /* Defines for LLDP TLV header */
 #define I40E_LLDP_TLV_LEN_SHIFT		0
 #define I40E_LLDP_TLV_LEN_MASK		(0x01FF << I40E_LLDP_TLV_LEN_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index b30acab1314c..e5cfd0178b7c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -323,20 +323,24 @@ i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
 
 /**
  * i40e_read_nvm_module_data - Reads NVM Buffer to specified memory location
- * @hw: pointer to the HW structure
+ * @hw: Pointer to the HW structure
  * @module_ptr: Pointer to module in words with respect to NVM beginning
- * @offset: offset in words from module start
+ * @module_offset: Offset in words from module start
+ * @data_offset: Offset in words from reading data area start
  * @words_data_size: Words to read from NVM
  * @data_ptr: Pointer to memory location where resulting buffer will be stored
  **/
-i40e_status i40e_read_nvm_module_data(struct i40e_hw *hw,
-				      u8 module_ptr, u16 offset,
-				      u16 words_data_size,
-				      u16 *data_ptr)
+enum i40e_status_code i40e_read_nvm_module_data(struct i40e_hw *hw,
+						u8 module_ptr,
+						u16 module_offset,
+						u16 data_offset,
+						u16 words_data_size,
+						u16 *data_ptr)
 {
 	i40e_status status;
+	u16 specific_ptr = 0;
 	u16 ptr_value = 0;
-	u32 flat_offset;
+	u32 offset = 0;
 
 	if (module_ptr != 0) {
 		status = i40e_read_nvm_word(hw, module_ptr, &ptr_value);
@@ -352,36 +356,35 @@ i40e_status i40e_read_nvm_module_data(struct i40e_hw *hw,
 
 	/* Pointer not initialized */
 	if (ptr_value == I40E_NVM_INVALID_PTR_VAL ||
-	    ptr_value == I40E_NVM_INVALID_VAL)
+	    ptr_value == I40E_NVM_INVALID_VAL) {
+		i40e_debug(hw, I40E_DEBUG_ALL, "Pointer not initialized.\n");
 		return I40E_ERR_BAD_PTR;
+	}
 
 	/* Check whether the module is in SR mapped area or outside */
 	if (ptr_value & I40E_PTR_TYPE) {
 		/* Pointer points outside of the Shared RAM mapped area */
-		ptr_value &= ~I40E_PTR_TYPE;
+		i40e_debug(hw, I40E_DEBUG_ALL,
+			   "Reading nvm data failed. Pointer points outside of the Shared RAM mapped area.\n");
 
-		/* PtrValue in 4kB units, need to convert to words */
-		ptr_value /= 2;
-		flat_offset = ((u32)ptr_value * 0x1000) + (u32)offset;
-		status = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
-		if (!status) {
-			status = i40e_aq_read_nvm(hw, 0, 2 * flat_offset,
-						  2 * words_data_size,
-						  data_ptr, true, NULL);
-			i40e_release_nvm(hw);
-			if (status) {
-				i40e_debug(hw, I40E_DEBUG_ALL,
-					   "Reading nvm aq failed.Error code: %d.\n",
-					   status);
-				return I40E_ERR_NVM;
-			}
-		} else {
-			return I40E_ERR_NVM;
-		}
+		return I40E_ERR_PARAM;
 	} else {
 		/* Read from the Shadow RAM */
-		status = i40e_read_nvm_buffer(hw, ptr_value + offset,
-					      &words_data_size, data_ptr);
+
+		status = i40e_read_nvm_word(hw, ptr_value + module_offset,
+					    &specific_ptr);
+		if (status) {
+			i40e_debug(hw, I40E_DEBUG_ALL,
+				   "Reading nvm word failed.Error code: %d.\n",
+				   status);
+			return I40E_ERR_NVM;
+		}
+
+		offset = ptr_value + module_offset + specific_ptr +
+			data_offset;
+
+		status = i40e_read_nvm_buffer(hw, offset, &words_data_size,
+					      data_ptr);
 		if (status) {
 			i40e_debug(hw, I40E_DEBUG_ALL,
 				   "Reading nvm buffer failed.Error code: %d.\n",
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 5250441bf75b..7effe5010e32 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -315,10 +315,12 @@ i40e_status i40e_acquire_nvm(struct i40e_hw *hw,
 void i40e_release_nvm(struct i40e_hw *hw);
 i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
 					 u16 *data);
-i40e_status i40e_read_nvm_module_data(struct i40e_hw *hw,
-				      u8 module_ptr, u16 offset,
-				      u16 words_data_size,
-				      u16 *data_ptr);
+enum i40e_status_code i40e_read_nvm_module_data(struct i40e_hw *hw,
+						u8 module_ptr,
+						u16 module_offset,
+						u16 data_offset,
+						u16 words_data_size,
+						u16 *data_ptr);
 i40e_status i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
 				 u16 *words, u16 *data);
 i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw);
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

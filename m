Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FC818269A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFA2888D8B;
	Thu, 12 Mar 2020 01:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlrTNLulTQiw; Thu, 12 Mar 2020 01:27:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6514888E0B;
	Thu, 12 Mar 2020 01:27:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3109A1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E03C2634A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IB3xTHYNYIJm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:27:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 5DE38261F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242867053"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 18:27:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:27:26 -0700
Message-Id: <20200312012726.973301-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312012726.973301-1-jacob.e.keller@intel.com>
References: <20200312012726.973301-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 9/9] ice: add board identifier info to
 devlink .info_get
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Export a unique board identifier using "board.id" for devlink's
.info_get command.

Obtain this by reading the NVM for the PBA identification string.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
---
 Documentation/networking/devlink/ice.rst     |   4 +
 drivers/net/ethernet/intel/ice/ice_common.c  |  66 ----------
 drivers/net/ethernet/intel/ice/ice_common.h  |   3 -
 drivers/net/ethernet/intel/ice/ice_devlink.c |  16 ++-
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 125 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_type.h    |   1 +
 7 files changed, 150 insertions(+), 70 deletions(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 56739a51cdfe..37fbbd40a5e5 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -19,6 +19,10 @@ The ``ice`` driver reports the following versions
       - Type
       - Example
       - Description
+    * - ``board.id``
+      - fixed
+      - K65390-000
+      - The Product Board Assembly (PBA) identifier of the board.
     * - ``fw.mgmt``
       - running
       - 2.1.7
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a16ec5c6a0bc..c760fae4aed4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -935,72 +935,6 @@ enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req)
 	return ice_check_reset(hw);
 }
 
-/**
- * ice_get_pfa_module_tlv - Reads sub module TLV from NVM PFA
- * @hw: pointer to hardware structure
- * @module_tlv: pointer to module TLV to return
- * @module_tlv_len: pointer to module TLV length to return
- * @module_type: module type requested
- *
- * Finds the requested sub module TLV type from the Preserved Field
- * Area (PFA) and returns the TLV pointer and length. The caller can
- * use these to read the variable length TLV value.
- */
-enum ice_status
-ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
-		       u16 module_type)
-{
-	enum ice_status status;
-	u16 pfa_len, pfa_ptr;
-	u16 next_tlv;
-
-	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Preserved Field Array pointer.\n");
-		return status;
-	}
-	status = ice_read_sr_word(hw, pfa_ptr, &pfa_len);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
-		return status;
-	}
-	/* Starting with first TLV after PFA length, iterate through the list
-	 * of TLVs to find the requested one.
-	 */
-	next_tlv = pfa_ptr + 1;
-	while (next_tlv < pfa_ptr + pfa_len) {
-		u16 tlv_sub_module_type;
-		u16 tlv_len;
-
-		/* Read TLV type */
-		status = ice_read_sr_word(hw, next_tlv, &tlv_sub_module_type);
-		if (status) {
-			ice_debug(hw, ICE_DBG_INIT, "Failed to read TLV type.\n");
-			break;
-		}
-		/* Read TLV length */
-		status = ice_read_sr_word(hw, next_tlv + 1, &tlv_len);
-		if (status) {
-			ice_debug(hw, ICE_DBG_INIT, "Failed to read TLV length.\n");
-			break;
-		}
-		if (tlv_sub_module_type == module_type) {
-			if (tlv_len) {
-				*module_tlv = next_tlv;
-				*module_tlv_len = tlv_len;
-				return 0;
-			}
-			return ICE_ERR_INVAL_SIZE;
-		}
-		/* Check next TLV, i.e. current TLV pointer + length + 2 words
-		 * (for current TLV's type and length)
-		 */
-		next_tlv = next_tlv + tlv_len + 2;
-	}
-	/* Module does not exist */
-	return ICE_ERR_DOES_NOT_EXIST;
-}
-
 /**
  * ice_copy_rxq_ctx_to_hw
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index ded704236643..db63fd6b5608 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -15,9 +15,6 @@ enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw);
 
 enum ice_status ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
-enum ice_status
-ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
-		       u16 module_type);
 enum ice_status ice_check_reset(struct ice_hw *hw);
 enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req);
 enum ice_status ice_create_all_ctrlq(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 410e2b531e5d..27c5034c039a 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -19,6 +19,18 @@ static int ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
 	return 0;
 }
 
+static int ice_info_pba(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_hw *hw = &pf->hw;
+	enum ice_status status;
+
+	status = ice_read_pba_string(hw, (u8 *)buf, len);
+	if (status)
+		return -EIO;
+
+	return 0;
+}
+
 static int ice_info_fw_mgmt(struct ice_pf *pf, char *buf, size_t len)
 {
 	struct ice_hw *hw = &pf->hw;
@@ -93,6 +105,7 @@ static int ice_info_ddp_pkg_version(struct ice_pf *pf, char *buf, size_t len)
 	return 0;
 }
 
+#define fixed(key, getter) { ICE_VERSION_FIXED, key, getter }
 #define running(key, getter) { ICE_VERSION_RUNNING, key, getter }
 
 enum ice_version_type {
@@ -106,6 +119,7 @@ static const struct ice_devlink_version {
 	const char *key;
 	int (*getter)(struct ice_pf *pf, char *buf, size_t len);
 } ice_devlink_versions[] = {
+	fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt),
 	running("fw.mgmt.api", ice_info_fw_api),
 	running("fw.mgmt.build", ice_info_fw_build),
@@ -125,7 +139,7 @@ static const struct ice_devlink_version {
  * Callback for the devlink .info_get operation. Reports information about the
  * device.
  *
- * @returns zero on success or an error code on failure.
+ * Return: zero on success or an error code on failure.
  */
 static int ice_devlink_info_get(struct devlink *devlink,
 				struct devlink_info_req *req,
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 08909d1c7cce..8beb675d676b 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -185,6 +185,131 @@ enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
 	return status;
 }
 
+/**
+ * ice_get_pfa_module_tlv - Reads sub module TLV from NVM PFA
+ * @hw: pointer to hardware structure
+ * @module_tlv: pointer to module TLV to return
+ * @module_tlv_len: pointer to module TLV length to return
+ * @module_type: module type requested
+ *
+ * Finds the requested sub module TLV type from the Preserved Field
+ * Area (PFA) and returns the TLV pointer and length. The caller can
+ * use these to read the variable length TLV value.
+ */
+enum ice_status
+ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
+		       u16 module_type)
+{
+	enum ice_status status;
+	u16 pfa_len, pfa_ptr;
+	u16 next_tlv;
+
+	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Preserved Field Array pointer.\n");
+		return status;
+	}
+	status = ice_read_sr_word(hw, pfa_ptr, &pfa_len);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
+		return status;
+	}
+	/* Starting with first TLV after PFA length, iterate through the list
+	 * of TLVs to find the requested one.
+	 */
+	next_tlv = pfa_ptr + 1;
+	while (next_tlv < pfa_ptr + pfa_len) {
+		u16 tlv_sub_module_type;
+		u16 tlv_len;
+
+		/* Read TLV type */
+		status = ice_read_sr_word(hw, next_tlv, &tlv_sub_module_type);
+		if (status) {
+			ice_debug(hw, ICE_DBG_INIT, "Failed to read TLV type.\n");
+			break;
+		}
+		/* Read TLV length */
+		status = ice_read_sr_word(hw, next_tlv + 1, &tlv_len);
+		if (status) {
+			ice_debug(hw, ICE_DBG_INIT, "Failed to read TLV length.\n");
+			break;
+		}
+		if (tlv_sub_module_type == module_type) {
+			if (tlv_len) {
+				*module_tlv = next_tlv;
+				*module_tlv_len = tlv_len;
+				return 0;
+			}
+			return ICE_ERR_INVAL_SIZE;
+		}
+		/* Check next TLV, i.e. current TLV pointer + length + 2 words
+		 * (for current TLV's type and length)
+		 */
+		next_tlv = next_tlv + tlv_len + 2;
+	}
+	/* Module does not exist */
+	return ICE_ERR_DOES_NOT_EXIST;
+}
+
+/**
+ * ice_read_pba_string - Reads part number string from NVM
+ * @hw: pointer to hardware structure
+ * @pba_num: stores the part number string from the NVM
+ * @pba_num_size: part number string buffer length
+ *
+ * Reads the part number string from the NVM.
+ */
+enum ice_status
+ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
+{
+	u16 pba_tlv, pba_tlv_len;
+	enum ice_status status;
+	u16 pba_word, pba_size;
+	u16 i;
+
+	status = ice_get_pfa_module_tlv(hw, &pba_tlv, &pba_tlv_len,
+					ICE_SR_PBA_BLOCK_PTR);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read PBA Block TLV.\n");
+		return status;
+	}
+
+	/* pba_size is the next word */
+	status = ice_read_sr_word(hw, (pba_tlv + 2), &pba_size);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read PBA Section size.\n");
+		return status;
+	}
+
+	if (pba_tlv_len < pba_size) {
+		ice_debug(hw, ICE_DBG_INIT, "Invalid PBA Block TLV size.\n");
+		return ICE_ERR_INVAL_SIZE;
+	}
+
+	/* Subtract one to get PBA word count (PBA Size word is included in
+	 * total size)
+	 */
+	pba_size--;
+	if (pba_num_size < (((u32)pba_size * 2) + 1)) {
+		ice_debug(hw, ICE_DBG_INIT, "Buffer too small for PBA data.\n");
+		return ICE_ERR_PARAM;
+	}
+
+	for (i = 0; i < pba_size; i++) {
+		status = ice_read_sr_word(hw, (pba_tlv + 2 + 1) + i, &pba_word);
+		if (status) {
+			ice_debug(hw, ICE_DBG_INIT, "Failed to read PBA Block word %d.\n", i);
+			return status;
+		}
+
+		pba_num[(i * 2)] = (pba_word >> 8) & 0xFF;
+		pba_num[(i * 2) + 1] = pba_word & 0xFF;
+	}
+	pba_num[(pba_size * 2)] = '\0';
+
+	return status;
+}
+
 /**
  * ice_get_orom_ver_info - Read Option ROM version information
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 7375f6b96919..999f273ba6ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -10,6 +10,11 @@ void ice_release_nvm(struct ice_hw *hw);
 enum ice_status
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
+enum ice_status
+ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
+		       u16 module_type);
+enum ice_status
+ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size);
 enum ice_status ice_init_nvm(struct ice_hw *hw);
 enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
 #endif /* _ICE_NVM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 200aceae4323..26e00f41dd89 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -643,6 +643,7 @@ struct ice_hw_port_stats {
 /* Checksum and Shadow RAM pointers */
 #define ICE_SR_BOOT_CFG_PTR		0x132
 #define ICE_NVM_OROM_VER_OFF		0x02
+#define ICE_SR_PBA_BLOCK_PTR		0x16
 #define ICE_SR_NVM_DEV_STARTER_VER	0x18
 #define ICE_SR_NVM_EETRACK_LO		0x2D
 #define ICE_SR_NVM_EETRACK_HI		0x2E
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

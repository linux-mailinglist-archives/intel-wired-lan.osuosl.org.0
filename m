Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4008AD1BE8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:40:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE19587A18;
	Wed,  9 Oct 2019 22:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dCoWP7ZmS+bN; Wed,  9 Oct 2019 22:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF83D87CB1;
	Wed,  9 Oct 2019 22:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 543441BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 514E8883A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyJmWNOyYd+n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 855FA8837F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="197052253"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2019 15:40:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:42 -0700
Message-Id: <20191009140953.14087-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S31 04/15] ice: Update Boot Configuration
 Section read of NVM
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

From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>

The Boot Configuration Section Block has been moved to the Preserved Field
Area (PFA) of NVM. Update the NVM reads that involves Boot Configuration
Section.

Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 66 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c    | 51 +++++++++++++---
 drivers/net/ethernet/intel/ice/ice_nvm.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_type.h   |  3 +
 5 files changed, 115 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 494e51be2eac..003790d2822c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1088,6 +1088,72 @@ enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req)
 	return ice_check_reset(hw);
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
 /**
  * ice_copy_rxq_ctx_to_hw
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e416721f5d9a..1972f397cf97 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -24,6 +24,9 @@ void
 ice_debug_cq(struct ice_hw *hw, u32 mask, void *desc, void *buf, u16 buf_len);
 enum ice_status ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
+enum ice_status
+ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
+		       u16 module_type);
 enum ice_status ice_check_reset(struct ice_hw *hw);
 enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req);
 enum ice_status ice_create_all_ctrlq(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index bd19ce9b5bfd..28e1972e2bc9 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -168,8 +168,7 @@ void ice_release_nvm(struct ice_hw *hw)
  *
  * Reads one 16 bit word from the Shadow RAM using the ice_read_sr_word_aq.
  */
-static enum
-ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
+enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
 {
 	enum ice_status status;
 
@@ -191,9 +190,10 @@ ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
  */
 enum ice_status ice_init_nvm(struct ice_hw *hw)
 {
+	u16 oem_hi, oem_lo, boot_cfg_tlv, boot_cfg_tlv_len;
 	struct ice_nvm_info *nvm = &hw->nvm;
 	u16 eetrack_lo, eetrack_hi;
-	enum ice_status status = 0;
+	enum ice_status status;
 	u32 fla, gens_stat;
 	u8 sr_size;
 
@@ -210,15 +210,15 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 	fla = rd32(hw, GLNVM_FLA);
 	if (fla & GLNVM_FLA_LOCKED_M) { /* Normal programming mode */
 		nvm->blank_nvm_mode = false;
-	} else { /* Blank programming mode */
+	} else {
+		/* Blank programming mode */
 		nvm->blank_nvm_mode = true;
-		status = ICE_ERR_NVM_BLANK_MODE;
 		ice_debug(hw, ICE_DBG_NVM,
 			  "NVM init error: unsupported blank mode.\n");
-		return status;
+		return ICE_ERR_NVM_BLANK_MODE;
 	}
 
-	status = ice_read_sr_word(hw, ICE_SR_NVM_DEV_STARTER_VER, &hw->nvm.ver);
+	status = ice_read_sr_word(hw, ICE_SR_NVM_DEV_STARTER_VER, &nvm->ver);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT,
 			  "Failed to read DEV starter version.\n");
@@ -236,9 +236,42 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		return status;
 	}
 
-	hw->nvm.eetrack = (eetrack_hi << 16) | eetrack_lo;
+	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
 
-	return status;
+	status = ice_get_pfa_module_tlv(hw, &boot_cfg_tlv, &boot_cfg_tlv_len,
+					ICE_SR_BOOT_CFG_PTR);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT,
+			  "Failed to read Boot Configuration Block TLV.\n");
+		return status;
+	}
+
+	/* Boot Configuration Block must have length at least 2 words
+	 * (Combo Image Version High and Combo Image Version Low)
+	 */
+	if (boot_cfg_tlv_len < 2) {
+		ice_debug(hw, ICE_DBG_INIT,
+			  "Invalid Boot Configuration Block TLV size.\n");
+		return ICE_ERR_INVAL_SIZE;
+	}
+
+	status = ice_read_sr_word(hw, (boot_cfg_tlv + ICE_NVM_OEM_VER_OFF),
+				  &oem_hi);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read OEM_VER hi.\n");
+		return status;
+	}
+
+	status = ice_read_sr_word(hw, (boot_cfg_tlv + ICE_NVM_OEM_VER_OFF + 1),
+				  &oem_lo);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read OEM_VER lo.\n");
+		return status;
+	}
+
+	nvm->oem_ver = ((u32)oem_hi << 16) | oem_lo;
+
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 75d167b7ebe3..b6dd6226e81c 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -76,4 +76,5 @@ ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 		void *data, bool last_command, bool read_shadow_ram,
 		struct ice_sq_cd *cd);
 enum ice_status ice_init_nvm(struct ice_hw *hw);
+enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
 #endif /* _ICE_NVM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 53fcb9b18e78..8fa27030fdf2 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -559,6 +559,8 @@ struct ice_hw_port_stats {
 };
 
 /* Checksum and Shadow RAM pointers */
+#define ICE_SR_BOOT_CFG_PTR		0x132
+#define ICE_NVM_OEM_VER_OFF		0x02
 #define ICE_SR_NVM_DEV_STARTER_VER	0x18
 #define ICE_SR_NVM_EETRACK_LO		0x2D
 #define ICE_SR_NVM_EETRACK_HI		0x2E
@@ -572,6 +574,7 @@ struct ice_hw_port_stats {
 #define ICE_OEM_VER_BUILD_MASK		(0xffff << ICE_OEM_VER_BUILD_SHIFT)
 #define ICE_OEM_VER_SHIFT		24
 #define ICE_OEM_VER_MASK		(0xff << ICE_OEM_VER_SHIFT)
+#define ICE_SR_PFA_PTR			0x40
 #define ICE_SR_SECTOR_SIZE_IN_WORDS	0x800
 #define ICE_SR_WORDS_IN_1KB		512
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

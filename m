Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DAE2AFBD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:45:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDBF686C8C;
	Thu, 12 Nov 2020 00:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yns1eIPjGL25; Thu, 12 Nov 2020 00:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0572486C9A;
	Thu, 12 Nov 2020 00:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 405441BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3BF9B86226
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfERINicLP2x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:45:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 139B986191
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:14 +0000 (UTC)
IronPort-SDR: 6LmUfC8txKgwcRsegIY5AnIHa7uEaAjZQyrfxzFRbbzJQ2EttR6nVlgRIPb6EXq/+2qNgIoODj
 QEHxDzwV6CRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170347634"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="170347634"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:07 -0800
IronPort-SDR: hxk97bT8gCxKZHGTyMMWwi4NEBx4f5tfdDk9AQgBYdebdA4Jhvb0xW4LIUkkqqff6vRonxVFSl
 Rxn7jrdeQpkw==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="309015624"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:07 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 16:43:30 -0800
Message-Id: <20201112004330.2896993-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201112004330.2896993-1-jacob.e.keller@intel.com>
References: <20201112004330.2896993-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 7/7] ice: display stored UNDI
 firmware version via devlink info
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

Just as we recently added support for other stored firmware flash
versions, support display of the stored UNDI Option ROM version via
devlink info.

To do this, we need to introduce a new ice_get_inactive_orom_ver
function. This is a little trickier than with other flash versions. The
Option ROM version data was being read from a special "Boot
Configuration" block of the NVM Preserved Field Area. This block only
contains the *active* Option ROM version data. It is populated when the
device firmware finishes updating the Option ROM.

This method is ineffective at reading the stored Option ROM version
data. Instead of reading from this section of the flash, replace this
version extraction with one which locates the Combo Version information
from within the Option ROM binary.

This data is stored within the Option ROM at a 512 byte offset, in
a simple structured format. The structure uses a simple modulo 256
checksum for integrity verification. Scan through the Option ROM to
locate the CIVD data section, and extract the Combo Version.

Refactor ice_get_orom_ver_info so that it takes the bank select
enumeration parameter. Use this to implement ice_get_inactive_orom_ver.

Although all ice devices have a Boot Configuration block in the NVM PFA,
not all devices have a valid Option ROM. In this case, the old
ice_get_orom_ver_info would "succeed" but report a version of all
zeros. The new implementation would fail to locate the $CIV section in
the Option ROM and report an error. Thus, we must ensure that
ice_init_nvm does not fail if ice_get_orom_ver_info fails.

Use the new ice_get_inactive_orom_ver to allow reporting the Option ROM
versions for a pending update via devlink info.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c |  35 +++++
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 127 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_nvm.h     |  10 ++
 3 files changed, 130 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 392b90e58add..b56d35bea7b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -9,6 +9,7 @@
 /* context for devlink info version reporting */
 struct ice_info_ctx {
 	char buf[128];
+	struct ice_orom_info pending_orom;
 	struct ice_nvm_info pending_nvm;
 	struct ice_netlist_info pending_netlist;
 	struct ice_hw_dev_caps dev_caps;
@@ -102,6 +103,17 @@ static int ice_info_orom_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	return 0;
 }
 
+static int ice_info_pending_orom_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_orom_info *orom = &ctx->pending_orom;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_orom)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
+			 orom->major, orom->build, orom->patch);
+
+	return 0;
+}
+
 static int ice_info_orom_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_orom_info *orom = &pf->hw.flash.orom;
@@ -111,6 +123,16 @@ static int ice_info_orom_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	return 0;
 }
 
+static int ice_info_pending_orom_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_orom_info *orom = &ctx->pending_orom;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_orom)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
+
+	return 0;
+}
+
 static int ice_info_nvm_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
@@ -242,7 +264,9 @@ static const struct ice_devlink_version {
 	running("fw.mgmt.srev", ice_info_fw_srev),
 	stored("fw.mgmt.srev", ice_info_pending_fw_srev),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_UNDI, ice_info_orom_ver),
+	stored(DEVLINK_INFO_VERSION_GENERIC_FW_UNDI, ice_info_pending_orom_ver),
 	running("fw.undi.srev", ice_info_orom_srev),
+	stored("fw.undi.srev", ice_info_pending_orom_srev),
 	running("fw.psid.api", ice_info_nvm_ver),
 	stored("fw.psid.api", ice_info_pending_nvm_ver),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID, ice_info_eetrack),
@@ -290,6 +314,17 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		goto out_free_ctx;
 	}
 
+	if (ctx->dev_caps.common_cap.nvm_update_pending_orom) {
+		status = ice_get_inactive_orom_ver(hw, &ctx->pending_orom);
+		if (status) {
+			dev_dbg(dev, "Unable to read inactive Option ROM version data, status %s aq_err %s\n",
+				ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+
+			/* disable display of pending Option ROM */
+			ctx->dev_caps.common_cap.nvm_update_pending_orom = false;
+		}
+	}
+
 	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm) {
 		status = ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
 		if (status) {
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 8bc2df09a11a..916ab2504a07 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -703,64 +703,109 @@ static enum ice_status ice_get_orom_srev(struct ice_hw *hw, enum ice_bank_select
 }
 
 /**
- * ice_get_orom_ver_info - Read Option ROM version information
+ * ice_get_orom_civd_data - Get the combo version information from Option ROM
  * @hw: pointer to the HW struct
- * @orom: pointer to Option ROM info structure
+ * @bank: whether to read from the active or inactive flash module
+ * @civd: storage for the Option ROM CIVD data.
  *
- * Read the Combo Image version data from the Boot Configuration TLV and fill
- * in the option ROM version data.
+ * Searches through the Option ROM flash contents to locate the CIVD data for
+ * the image.
  */
 static enum ice_status
-ice_get_orom_ver_info(struct ice_hw *hw, struct ice_orom_info *orom)
+ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
+		       struct ice_orom_civd_info *civd)
 {
-	u16 combo_hi, combo_lo, boot_cfg_tlv, boot_cfg_tlv_len;
+	struct ice_orom_civd_info tmp;
+	enum ice_status status;
+	u32 offset;
+
+	/* The CIVD section is located in the Option ROM aligned to 512 bytes.
+	 * The first 4 bytes must contain the ASCII characters "$CIV".
+	 * A simple modulo 256 sum of all of the bytes of the structure must
+	 * equal 0.
+	 */
+	for (offset = 0; (offset + 512) <= hw->flash.banks.orom_size; offset += 512) {
+		u8 sum = 0, i;
+
+		status = ice_read_flash_module(hw, bank, ICE_SR_1ST_OROM_BANK_PTR,
+					       offset, (u8 *)&tmp, sizeof(tmp));
+		if (status) {
+			ice_debug(hw, ICE_DBG_NVM, "Unable to read Option ROM CIVD data\n");
+			return status;
+		}
+
+		/* Skip forward until we find a matching signature */
+		if (memcmp("$CIV", tmp.signature, sizeof(tmp.signature)) != 0)
+			continue;
+
+		/* Verify that the simple checksum is zero */
+		for (i = 0; i < sizeof(tmp); i++)
+			sum += ((u8 *)&tmp)[i];
+
+		if (sum) {
+			ice_debug(hw, ICE_DBG_NVM, "Found CIVD data with invalid checksum of %u\n",
+				  sum);
+			return ICE_ERR_NVM;
+		}
+
+		*civd = tmp;
+		return 0;
+	}
+
+	return ICE_ERR_NVM;
+}
+
+/**
+ * ice_get_orom_ver_info - Read Option ROM version information
+ * @hw: pointer to the HW struct
+ * @bank: whether to read from the active or inactive flash module
+ * @orom: pointer to Option ROM info structure
+ *
+ * Read Option ROM version and security revision from the Option ROM flash
+ * section.
+ */
+static enum ice_status
+ice_get_orom_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_orom_info *orom)
+{
+	struct ice_orom_civd_info civd;
 	enum ice_status status;
 	u32 combo_ver;
 
-	status = ice_get_pfa_module_tlv(hw, &boot_cfg_tlv, &boot_cfg_tlv_len,
-					ICE_SR_BOOT_CFG_PTR);
+	status = ice_get_orom_civd_data(hw, bank, &civd);
 	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed to read Boot Configuration Block TLV.\n");
+		ice_debug(hw, ICE_DBG_NVM, "Failed to locate valid Option ROM CIVD data\n");
 		return status;
 	}
 
-	/* Boot Configuration Block must have length at least 2 words
-	 * (Combo Image Version High and Combo Image Version Low)
-	 */
-	if (boot_cfg_tlv_len < 2) {
-		ice_debug(hw, ICE_DBG_INIT, "Invalid Boot Configuration Block TLV size.\n");
-		return ICE_ERR_INVAL_SIZE;
-	}
+	combo_ver = le32_to_cpu(civd.combo_ver);
 
-	status = ice_read_sr_word(hw, (boot_cfg_tlv + ICE_NVM_OROM_VER_OFF),
-				  &combo_hi);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed to read OROM_VER hi.\n");
-		return status;
-	}
-
-	status = ice_read_sr_word(hw, (boot_cfg_tlv + ICE_NVM_OROM_VER_OFF + 1),
-				  &combo_lo);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed to read OROM_VER lo.\n");
-		return status;
-	}
-
-	combo_ver = ((u32)combo_hi << 16) | combo_lo;
-
-	orom->major = (u8)((combo_ver & ICE_OROM_VER_MASK) >>
-			   ICE_OROM_VER_SHIFT);
+	orom->major = (u8)((combo_ver & ICE_OROM_VER_MASK) >> ICE_OROM_VER_SHIFT);
 	orom->patch = (u8)(combo_ver & ICE_OROM_VER_PATCH_MASK);
-	orom->build = (u16)((combo_ver & ICE_OROM_VER_BUILD_MASK) >>
-			    ICE_OROM_VER_BUILD_SHIFT);
+	orom->build = (u16)((combo_ver & ICE_OROM_VER_BUILD_MASK) >> ICE_OROM_VER_BUILD_SHIFT);
 
-	status = ice_get_orom_srev(hw, ICE_ACTIVE_FLASH_BANK, &orom->srev);
-	if (status)
+	status = ice_get_orom_srev(hw, bank, &orom->srev);
+	if (status) {
 		ice_debug(hw, ICE_DBG_NVM, "Failed to read Option ROM security revision.\n");
+		return status;
+	}
 
 	return 0;
 }
 
+/**
+ * ice_get_inactive_orom_ver - Read Option ROM version from the inactive bank
+ * @hw: pointer to the HW structure
+ * @orom: storage for Option ROM version information
+ *
+ * Reads the Option ROM version and security revision data for the inactive
+ * section of flash. Used to access version data for a pending update that has
+ * not yet been activated.
+ */
+enum ice_status ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom)
+{
+	return ice_get_orom_ver_info(hw, ICE_INACTIVE_FLASH_BANK, orom);
+}
+
 /**
  * ice_get_netlist_info
  * @hw: pointer to the HW struct
@@ -1098,11 +1143,9 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		return status;
 	}
 
-	status = ice_get_orom_ver_info(hw, &flash->orom);
-	if (status) {
+	status = ice_get_orom_ver_info(hw, ICE_ACTIVE_FLASH_BANK, &flash->orom);
+	if (status)
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read Option ROM info.\n");
-		return status;
-	}
 
 	/* read the netlist version information */
 	status = ice_get_netlist_info(hw, ICE_ACTIVE_FLASH_BANK, &flash->netlist);
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 34b5d9589ecc..905f6893e0b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -4,6 +4,14 @@
 #ifndef _ICE_NVM_H_
 #define _ICE_NVM_H_
 
+struct ice_orom_civd_info {
+	u8 signature[4];	/* Must match ASCII '$CIV' characters */
+	u8 checksum;		/* Simple modulo 256 sum of all structure bytes must equal 0 */
+	__le32 combo_ver;	/* Combo Image Version number */
+	u8 combo_name_len;	/* Length of the unicode combo image version string, max of 32 */
+	__le16 combo_name[32];	/* Unicode string representing the Combo Image version */
+} __packed;
+
 enum ice_status
 ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
@@ -18,6 +26,8 @@ ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
 enum ice_status
 ice_update_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
 enum ice_status
+ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom);
+enum ice_status
 ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm);
 enum ice_status
 ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *netlist);
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

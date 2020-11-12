Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96B92AFBD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08CEB875FA;
	Thu, 12 Nov 2020 00:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X0eyPzXbxgwp; Thu, 12 Nov 2020 00:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D01EE875F6;
	Thu, 12 Nov 2020 00:45:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AF971BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7763886C8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XObmiwJ6urXF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5A2686C55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:13 +0000 (UTC)
IronPort-SDR: aCpLGqisje+9Lx0RM0HPOigI42GhzT6oqka1ksGsS3N22TW1RLLRRR7BK3gfJkdYetrOhf9g8V
 n6vQ64CO6gCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="169454569"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="169454569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:06 -0800
IronPort-SDR: 2xTIbdqWuwr7fgR6chfEI87RFHgLjLr04+YR+HGR/NVlM+fTofBbijXX8DHDuSEnZWvMYK+4VY
 4NhEGGaYPxIg==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="309015617"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:06 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 16:43:28 -0800
Message-Id: <20201112004330.2896993-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201112004330.2896993-1-jacob.e.keller@intel.com>
References: <20201112004330.2896993-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 5/7] ice: display some stored NVM
 versions via devlink info
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

The devlink info interface supports drivers reporting "stored" versions.
These versions indicate the version of an update that has been
downloaded to the device, but is not yet active.

Add a new function to read some of the fw.mgmt version data from the
inactive flash section. This function, ice_get_inactive_nvm_ver, will
read the NVM version data from the inactive section of flash.

To avoid code duplication, we refactor ice_get_nvm_ver_info so that it
takes the bank parameter for specifying which flash bank to read from.
Instead of reading from the copy stored in the Shadow RAM, always read
from the copy of the specified flash bank.

Note that the start of the Shadow RAM copy is not directly following the
CSS header, but is actually aligned to the next 64-byte boundary. The
correct word offset must be rounded up to 32-bytes.

When reporting the versions via devlink info, first read the device
capabilities. If there is a pending flash update, use this new function
to extract the inactive flash versions. Add the stored fields to the
flash version map structure so that they will be displayed when
available.

It should be noted that it is not currently feasible to extract all of
the related versions for the management firmware. This patch adds
support for displaying "fw.mgmt.srev", "fw.psid.api", and
"fw.bundle_id". The management firmware versions are more difficult to
extract from the binary and have not been implemented in this change.

Future changes will introduce support for reading the UNDI Option ROM
version and the version associated with the Netlist module.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 57 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 44 ++++++++++++---
 drivers/net/ethernet/intel/ice/ice_nvm.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_type.h    |  8 ++-
 4 files changed, 104 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 31cbb0fbd429..26bee486997f 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -9,6 +9,8 @@
 /* context for devlink info version reporting */
 struct ice_info_ctx {
 	char buf[128];
+	struct ice_nvm_info pending_nvm;
+	struct ice_hw_dev_caps dev_caps;
 };
 
 /* The following functions are used to format specific strings for various
@@ -80,6 +82,16 @@ static int ice_info_fw_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	return 0;
 }
 
+static int ice_info_pending_fw_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_nvm_info *nvm = &ctx->pending_nvm;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
+
+	return 0;
+}
+
 static int ice_info_orom_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_orom_info *orom = &pf->hw.flash.orom;
@@ -107,6 +119,16 @@ static int ice_info_nvm_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	return 0;
 }
 
+static int ice_info_pending_nvm_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_nvm_info *nvm = &ctx->pending_nvm;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
+
+	return 0;
+}
+
 static int ice_info_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
@@ -116,6 +138,16 @@ static int ice_info_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	return 0;
 }
 
+static int ice_info_pending_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_nvm_info *nvm = &ctx->pending_nvm;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm->eetrack);
+
+	return 0;
+}
+
 static int ice_info_ddp_pkg_name(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
@@ -165,6 +197,7 @@ static int ice_info_netlist_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
 
 #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter }
 #define running(key, getter) { ICE_VERSION_RUNNING, key, getter }
+#define stored(key, getter) { ICE_VERSION_STORED, key, getter }
 
 enum ice_version_type {
 	ICE_VERSION_FIXED,
@@ -182,10 +215,13 @@ static const struct ice_devlink_version {
 	running("fw.mgmt.api", ice_info_fw_api),
 	running("fw.mgmt.build", ice_info_fw_build),
 	running("fw.mgmt.srev", ice_info_fw_srev),
+	stored("fw.mgmt.srev", ice_info_pending_fw_srev),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_UNDI, ice_info_orom_ver),
 	running("fw.undi.srev", ice_info_orom_srev),
 	running("fw.psid.api", ice_info_nvm_ver),
+	stored("fw.psid.api", ice_info_pending_nvm_ver),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID, ice_info_eetrack),
+	stored(DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID, ice_info_pending_eetrack),
 	running("fw.app.name", ice_info_ddp_pkg_name),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_APP, ice_info_ddp_pkg_version),
 	running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
@@ -209,7 +245,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
 				struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
 	struct ice_info_ctx *ctx;
+	enum ice_status status;
 	size_t i;
 	int err;
 
@@ -217,6 +256,24 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	if (!ctx)
 		return -ENOMEM;
 
+	/* discover capabilities first */
+	status = ice_discover_dev_caps(hw, &ctx->dev_caps);
+	if (status) {
+		err = -EIO;
+		goto out_free_ctx;
+	}
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm) {
+		status = ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
+		if (status) {
+			dev_dbg(dev, "Unable to read inactive NVM version data, status %s aq_err %s\n",
+				ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+
+			/* disable display of pending Option ROM */
+			ctx->dev_caps.common_cap.nvm_update_pending_nvm = false;
+		}
+	}
+
 	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack, "Unable to set driver name");
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index ff99815402d1..9613d24eaa06 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -367,6 +367,22 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
 	return status;
 }
 
+/**
+ * ice_read_nvm_sr_copy - Read a word from the Shadow RAM copy in the NVM bank
+ * @hw: pointer to the HW structure
+ * @bank: whether to read from the active or inactive NVM module
+ * @offset: offset into the Shadow RAM copy to read, in words
+ * @data: storage for returned word value
+ *
+ * Read the specified word from the copy of the Shadow RAM found in the
+ * specified NVM module.
+ */
+static enum ice_status
+ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
+{
+	return ice_read_nvm_module(hw, bank, ICE_NVM_SR_COPY_WORD_OFFSET + offset, data);
+}
+
 /**
  * ice_read_orom_module - Read from the active Option ROM module
  * @hw: pointer to the HW structure
@@ -568,31 +584,33 @@ static enum ice_status ice_get_nvm_srev(struct ice_hw *hw, enum ice_bank_select
 /**
  * ice_get_nvm_ver_info - Read NVM version information
  * @hw: pointer to the HW struct
+ * @bank: whether to read from the active or inactive flash bank
  * @nvm: pointer to NVM info structure
  *
  * Read the NVM EETRACK ID and map version of the main NVM image bank, filling
  * in the nvm info structure.
  */
 static enum ice_status
-ice_get_nvm_ver_info(struct ice_hw *hw, struct ice_nvm_info *nvm)
+ice_get_nvm_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_nvm_info *nvm)
 {
 	u16 eetrack_lo, eetrack_hi, ver;
 	enum ice_status status;
 
-	status = ice_read_sr_word(hw, ICE_SR_NVM_DEV_STARTER_VER, &ver);
+	status = ice_read_nvm_sr_copy(hw, bank, ICE_SR_NVM_DEV_STARTER_VER, &ver);
 	if (status) {
 		ice_debug(hw, ICE_DBG_NVM, "Failed to read DEV starter version.\n");
 		return status;
 	}
+
 	nvm->major = (ver & ICE_NVM_VER_HI_MASK) >> ICE_NVM_VER_HI_SHIFT;
 	nvm->minor = (ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT;
 
-	status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_LO, &eetrack_lo);
+	status = ice_read_nvm_sr_copy(hw, bank, ICE_SR_NVM_EETRACK_LO, &eetrack_lo);
 	if (status) {
 		ice_debug(hw, ICE_DBG_NVM, "Failed to read EETRACK lo.\n");
 		return status;
 	}
-	status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_HI, &eetrack_hi);
+	status = ice_read_nvm_sr_copy(hw, bank, ICE_SR_NVM_EETRACK_HI, &eetrack_hi);
 	if (status) {
 		ice_debug(hw, ICE_DBG_NVM, "Failed to read EETRACK hi.\n");
 		return status;
@@ -600,13 +618,27 @@ ice_get_nvm_ver_info(struct ice_hw *hw, struct ice_nvm_info *nvm)
 
 	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
 
-	status = ice_get_nvm_srev(hw, ICE_ACTIVE_FLASH_BANK, &nvm->srev);
+	status = ice_get_nvm_srev(hw, bank, &nvm->srev);
 	if (status)
 		ice_debug(hw, ICE_DBG_NVM, "Failed to read NVM security revision.\n");
 
 	return 0;
 }
 
+/**
+ * ice_get_inactive_nvm_ver - Read Option ROM version from the inactive bank
+ * @hw: pointer to the HW structure
+ * @nvm: storage for Option ROM version information
+ *
+ * Reads the NVM EETRACK ID, Map version, and security revision of the
+ * inactive NVM bank. Used to access version data for a pending update that
+ * has not yet been activated.
+ */
+enum ice_status ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm)
+{
+	return ice_get_nvm_ver_info(hw, ICE_INACTIVE_FLASH_BANK, nvm);
+}
+
 /**
  * ice_get_orom_srev - Read the security revision from the OROM CSS header
  * @hw: pointer to the HW struct
@@ -1028,7 +1060,7 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		return status;
 	}
 
-	status = ice_get_nvm_ver_info(hw, &flash->nvm);
+	status = ice_get_nvm_ver_info(hw, ICE_ACTIVE_FLASH_BANK, &flash->nvm);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read NVM info.\n");
 		return status;
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 8cfb9b9ac638..c5c737b7b062 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -18,6 +18,8 @@ ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
 enum ice_status
 ice_update_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
 enum ice_status
+ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm);
+enum ice_status
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size);
 enum ice_status ice_init_nvm(struct ice_hw *hw);
 enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b9230c9158e1..a9832b85f157 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -848,8 +848,14 @@ struct ice_hw_port_stats {
 #define ICE_NVM_CSS_SREV_L			0x14
 #define ICE_NVM_CSS_SREV_H			0x15
 
+/* Length of CSS header section in words */
+#define ICE_CSS_HEADER_LENGTH			330
+
+/* Offset of Shadow RAM copy in the NVM bank area. */
+#define ICE_NVM_SR_COPY_WORD_OFFSET		roundup(ICE_CSS_HEADER_LENGTH, 32)
+
 /* Size in bytes of Option ROM trailer */
-#define ICE_NVM_OROM_TRAILER_LENGTH		660
+#define ICE_NVM_OROM_TRAILER_LENGTH		(2 * ICE_CSS_HEADER_LENGTH)
 
 /* Auxiliary field, mask, and shift definition for Shadow RAM and NVM Flash */
 #define ICE_SR_CTRL_WORD_1_S		0x06
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

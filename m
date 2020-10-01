Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB1C280550
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 19:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D9F420379;
	Thu,  1 Oct 2020 17:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J+IqqXtkn+1I; Thu,  1 Oct 2020 17:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7335F27236;
	Thu,  1 Oct 2020 17:32:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 455C21BF857
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F6C986AFE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opvx3dBksVaQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 17:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F4B486B02
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:43 +0000 (UTC)
IronPort-SDR: CKkLMZFAza8icKt418FEDXv9g6ZRKyz30MmUIywha84QztpZgSkDSY0e9cVeMWJ71RpHurgCyI
 pIg3wFda34ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162870720"
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="162870720"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:40 -0700
IronPort-SDR: LQSGBDnqzinfFnmeHB+ruYs8adV5Q3D8Tu4ImNIMd98SdVTJWqb6p5+57PYZACdM4wPWoSbXzG
 MseYkzgu49LA==
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="514815534"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Oct 2020 10:31:41 -0700
Message-Id: <20201001173144.712615-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.497.g54e85e7af1ac
In-Reply-To: <20201001173144.712615-1-jacob.e.keller@intel.com>
References: <20201001173144.712615-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [intel-wired-lan 1/4] ice: create flash_info
 structure and separate NVM version
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

The ice_nvm_info structure has become somewhat of a dumping ground for
all of the fields related to flash version. It holds the NVM version and
EETRACK id, the OptionROM info structure, the flash size, the ShadowRAM
size, and more.

A future change is going to add the ability to read the NVM version and
EETRACK ID from the inactive NVM bank. To make this simpler, it is
useful to have these NVM version info fields extracted to their own
structure.

Rename ice_nvm_info into ice_flash_info, and create a separate
ice_nvm_info structure that will contain the eetrack and NVM map
version. Move the netlist_ver structure into ice_flash_info and rename it
ice_netlist_info for consistency.

Modify the static ice_get_orom_ver_info to take the option rom structure
as a pointer. This makes it more obvious what portion of the hw struct
is being modified. Do the same for ice_get_netlist_ver_info.

Introduce a new ice_get_nvm_ver_info function, which will be similar to
ice_get_orom_ver_info and ice_get_netlist_ver_info, used to keep the NVM
version extraction code co-located.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 16 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 +-
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 97 ++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_type.h    | 37 ++++----
 4 files changed, 93 insertions(+), 65 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index e17b44059eae..ee7d220153ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -62,7 +62,7 @@ static int ice_info_fw_build(struct ice_pf *pf, char *buf, size_t len)
 
 static int ice_info_orom_ver(struct ice_pf *pf, char *buf, size_t len)
 {
-	struct ice_orom_info *orom = &pf->hw.nvm.orom;
+	struct ice_orom_info *orom = &pf->hw.flash.orom;
 
 	snprintf(buf, len, "%u.%u.%u", orom->major, orom->build, orom->patch);
 
@@ -71,16 +71,16 @@ static int ice_info_orom_ver(struct ice_pf *pf, char *buf, size_t len)
 
 static int ice_info_nvm_ver(struct ice_pf *pf, char *buf, size_t len)
 {
-	struct ice_nvm_info *nvm = &pf->hw.nvm;
+	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
-	snprintf(buf, len, "%x.%02x", nvm->major_ver, nvm->minor_ver);
+	snprintf(buf, len, "%x.%02x", nvm->major, nvm->minor);
 
 	return 0;
 }
 
 static int ice_info_eetrack(struct ice_pf *pf, char *buf, size_t len)
 {
-	struct ice_nvm_info *nvm = &pf->hw.nvm;
+	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
 	snprintf(buf, len, "0x%08x", nvm->eetrack);
 
@@ -108,7 +108,7 @@ static int ice_info_ddp_pkg_version(struct ice_pf *pf, char *buf, size_t len)
 
 static int ice_info_netlist_ver(struct ice_pf *pf, char *buf, size_t len)
 {
-	struct ice_netlist_ver_info *netlist = &pf->hw.netlist_ver;
+	struct ice_netlist_info *netlist = &pf->hw.flash.netlist;
 
 	/* The netlist version fields are BCD formatted */
 	snprintf(buf, len, "%x.%x.%x-%x.%x.%x", netlist->major, netlist->minor,
@@ -120,7 +120,7 @@ static int ice_info_netlist_ver(struct ice_pf *pf, char *buf, size_t len)
 
 static int ice_info_netlist_build(struct ice_pf *pf, char *buf, size_t len)
 {
-	struct ice_netlist_ver_info *netlist = &pf->hw.netlist_ver;
+	struct ice_netlist_info *netlist = &pf->hw.flash.netlist;
 
 	snprintf(buf, len, "0x%08x", netlist->hash);
 
@@ -436,7 +436,7 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	void *nvm_data;
 	u32 nvm_size;
 
-	nvm_size = hw->nvm.flash_size;
+	nvm_size = hw->flash.flash_size;
 	nvm_data = vzalloc(nvm_size);
 	if (!nvm_data)
 		return -ENOMEM;
@@ -536,7 +536,7 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	u64 nvm_size;
 
-	nvm_size = pf->hw.nvm.flash_size;
+	nvm_size = pf->hw.flash.flash_size;
 	pf->nvm_region = devlink_region_create(devlink, &ice_nvm_region_ops, 1,
 					       nvm_size);
 	if (IS_ERR(pf->nvm_region)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9e8e9531cd87..78698e84fe40 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -179,8 +179,8 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 	struct ice_orom_info *orom;
 	struct ice_nvm_info *nvm;
 
-	nvm = &hw->nvm;
-	orom = &nvm->orom;
+	nvm = &hw->flash.nvm;
+	orom = &hw->flash.orom;
 
 	strscpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
 
@@ -188,7 +188,7 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 	 * determined) which contains more pertinent information.
 	 */
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
-		 "%x.%02x 0x%x %d.%d.%d", nvm->major_ver, nvm->minor_ver,
+		 "%x.%02x 0x%x %d.%d.%d", nvm->major, nvm->minor,
 		 nvm->eetrack, orom->major, orom->build, orom->patch);
 
 	strscpy(drvinfo->bus_info, pci_name(pf->pdev),
@@ -250,7 +250,7 @@ static int ice_get_eeprom_len(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_pf *pf = np->vsi->back;
 
-	return (int)pf->hw.nvm.flash_size;
+	return (int)pf->hw.flash.flash_size;
 }
 
 static int
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 5903a36763de..0f6d864a1af6 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -72,7 +72,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 	*length = 0;
 
 	/* Verify the length of the read if this is for the Shadow RAM */
-	if (read_shadow_ram && ((offset + inlen) > (hw->nvm.sr_words * 2u))) {
+	if (read_shadow_ram && ((offset + inlen) > (hw->flash.sr_words * 2u))) {
 		ice_debug(hw, ICE_DBG_NVM,
 			  "NVM error: requested offset is beyond Shadow RAM limit\n");
 		return ICE_ERR_PARAM;
@@ -214,7 +214,7 @@ ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 enum ice_status
 ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access)
 {
-	if (hw->nvm.blank_nvm_mode)
+	if (hw->flash.blank_nvm_mode)
 		return 0;
 
 	return ice_acquire_res(hw, ICE_NVM_RES_ID, access, ICE_NVM_TIMEOUT);
@@ -228,7 +228,7 @@ ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access)
  */
 void ice_release_nvm(struct ice_hw *hw)
 {
-	if (hw->nvm.blank_nvm_mode)
+	if (hw->flash.blank_nvm_mode)
 		return;
 
 	ice_release_res(hw, ICE_NVM_RES_ID);
@@ -380,17 +380,56 @@ ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
 	return status;
 }
 
+/**
+ * ice_get_nvm_ver_info - Read NVM version information
+ * @hw: pointer to the HW struct
+ * @nvm: pointer to NVM info structure
+ *
+ * Read the NVM EETRACK ID and map version of the main NVM image bank, filling
+ * in the nvm info structure.
+ */
+static enum ice_status
+ice_get_nvm_ver_info(struct ice_hw *hw, struct ice_nvm_info *nvm)
+{
+	u16 eetrack_lo, eetrack_hi, ver;
+	enum ice_status status;
+
+	status = ice_read_sr_word(hw, ICE_SR_NVM_DEV_STARTER_VER, &ver);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read DEV starter version.\n");
+		return status;
+	}
+	nvm->major = (ver & ICE_NVM_VER_HI_MASK) >> ICE_NVM_VER_HI_SHIFT;
+	nvm->minor = (ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT;
+
+	status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_LO, &eetrack_lo);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read EETRACK lo.\n");
+		return status;
+	}
+	status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_HI, &eetrack_hi);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read EETRACK hi.\n");
+		return status;
+	}
+
+	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
+
+	return 0;
+}
+
 /**
  * ice_get_orom_ver_info - Read Option ROM version information
  * @hw: pointer to the HW struct
+ * @orom: pointer to Option ROM info structure
  *
  * Read the Combo Image version data from the Boot Configuration TLV and fill
  * in the option ROM version data.
  */
-static enum ice_status ice_get_orom_ver_info(struct ice_hw *hw)
+static enum ice_status
+ice_get_orom_ver_info(struct ice_hw *hw, struct ice_orom_info *orom)
 {
 	u16 combo_hi, combo_lo, boot_cfg_tlv, boot_cfg_tlv_len;
-	struct ice_orom_info *orom = &hw->nvm.orom;
 	enum ice_status status;
 	u32 combo_ver;
 
@@ -439,12 +478,13 @@ static enum ice_status ice_get_orom_ver_info(struct ice_hw *hw)
 /**
  * ice_get_netlist_ver_info
  * @hw: pointer to the HW struct
+ * @ver: pointer to netlist version info structure
  *
  * Get the netlist version information
  */
-static enum ice_status ice_get_netlist_ver_info(struct ice_hw *hw)
+static enum ice_status
+ice_get_netlist_ver_info(struct ice_hw *hw, struct ice_netlist_info *ver)
 {
-	struct ice_netlist_ver_info *ver = &hw->netlist_ver;
 	enum ice_status ret;
 	u32 id_blk_start;
 	__le16 raw_data;
@@ -561,7 +601,7 @@ static enum ice_status ice_discover_flash_size(struct ice_hw *hw)
 	ice_debug(hw, ICE_DBG_NVM,
 		  "Predicted flash size is %u bytes\n", max_size);
 
-	hw->nvm.flash_size = max_size;
+	hw->flash.flash_size = max_size;
 
 err_read_flat_nvm:
 	ice_release_nvm(hw);
@@ -578,8 +618,7 @@ static enum ice_status ice_discover_flash_size(struct ice_hw *hw)
  */
 enum ice_status ice_init_nvm(struct ice_hw *hw)
 {
-	struct ice_nvm_info *nvm = &hw->nvm;
-	u16 eetrack_lo, eetrack_hi, ver;
+	struct ice_flash_info *flash = &hw->flash;
 	enum ice_status status;
 	u32 fla, gens_stat;
 	u8 sr_size;
@@ -591,42 +630,20 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 	sr_size = (gens_stat & GLNVM_GENS_SR_SIZE_M) >> GLNVM_GENS_SR_SIZE_S;
 
 	/* Switching to words (sr_size contains power of 2) */
-	nvm->sr_words = BIT(sr_size) * ICE_SR_WORDS_IN_1KB;
+	flash->sr_words = BIT(sr_size) * ICE_SR_WORDS_IN_1KB;
 
 	/* Check if we are in the normal or blank NVM programming mode */
 	fla = rd32(hw, GLNVM_FLA);
 	if (fla & GLNVM_FLA_LOCKED_M) { /* Normal programming mode */
-		nvm->blank_nvm_mode = false;
+		flash->blank_nvm_mode = false;
 	} else {
 		/* Blank programming mode */
-		nvm->blank_nvm_mode = true;
+		flash->blank_nvm_mode = true;
 		ice_debug(hw, ICE_DBG_NVM,
 			  "NVM init error: unsupported blank mode.\n");
 		return ICE_ERR_NVM_BLANK_MODE;
 	}
 
-	status = ice_read_sr_word(hw, ICE_SR_NVM_DEV_STARTER_VER, &ver);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT,
-			  "Failed to read DEV starter version.\n");
-		return status;
-	}
-	nvm->major_ver = (ver & ICE_NVM_VER_HI_MASK) >> ICE_NVM_VER_HI_SHIFT;
-	nvm->minor_ver = (ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT;
-
-	status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_LO, &eetrack_lo);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed to read EETRACK lo.\n");
-		return status;
-	}
-	status = ice_read_sr_word(hw, ICE_SR_NVM_EETRACK_HI, &eetrack_hi);
-	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed to read EETRACK hi.\n");
-		return status;
-	}
-
-	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
-
 	status = ice_discover_flash_size(hw);
 	if (status) {
 		ice_debug(hw, ICE_DBG_NVM,
@@ -634,6 +651,12 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		return status;
 	}
 
+	status = ice_get_nvm_ver_info(hw, &flash->nvm);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read NVM info.\n");
+		return status;
+	}
+
 	switch (hw->device_id) {
 	/* the following devices do not have boot_cfg_tlv yet */
 	case ICE_DEV_ID_E823C_BACKPLANE:
@@ -660,14 +683,14 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		break;
 	}
 
-	status = ice_get_orom_ver_info(hw);
+	status = ice_get_orom_ver_info(hw, &flash->orom);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read Option ROM info.\n");
 		return status;
 	}
 
 	/* read the netlist version information */
-	status = ice_get_netlist_ver_info(hw);
+	status = ice_get_netlist_ver_info(hw, &flash->netlist);
 	if (status)
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read netlist info.\n");
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 2226a291a394..7af7758374d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -313,14 +313,30 @@ struct ice_orom_info {
 	u16 build;			/* Build version of OROM */
 };
 
-/* NVM Information */
+/* NVM version information */
 struct ice_nvm_info {
+	u32 eetrack;
+	u8 major;
+	u8 minor;
+};
+
+/* netlist version information */
+struct ice_netlist_info {
+	u32 major;			/* major high/low */
+	u32 minor;			/* minor high/low */
+	u32 type;			/* type high/low */
+	u32 rev;			/* revision high/low */
+	u32 hash;			/* SHA-1 hash word */
+	u16 cust_ver;			/* customer version */
+};
+
+/* Flash Chip Information */
+struct ice_flash_info {
 	struct ice_orom_info orom;	/* Option ROM version info */
-	u32 eetrack;			/* NVM data version */
+	struct ice_nvm_info nvm;	/* NVM version information */
+	struct ice_netlist_info netlist;/* Netlist version info */
 	u16 sr_words;			/* Shadow RAM size in words */
 	u32 flash_size;			/* Size of available flash in bytes */
-	u8 major_ver;			/* major version of NVM package */
-	u8 minor_ver;			/* minor version of dev starter */
 	u8 blank_nvm_mode;		/* is NVM empty (no FW present) */
 };
 
@@ -348,16 +364,6 @@ struct ice_link_default_override_tlv {
 
 #define ICE_NVM_VER_LEN	32
 
-/* netlist version information */
-struct ice_netlist_ver_info {
-	u32 major;			/* major high/low */
-	u32 minor;			/* minor high/low */
-	u32 type;			/* type high/low */
-	u32 rev;			/* revision high/low */
-	u32 hash;			/* SHA-1 hash word */
-	u16 cust_ver;			/* customer version */
-};
-
 /* Max number of port to queue branches w.r.t topology */
 #define ICE_MAX_TRAFFIC_CLASS 8
 #define ICE_TXSCHED_MAX_BRANCHES ICE_MAX_TRAFFIC_CLASS
@@ -605,10 +611,9 @@ struct ice_hw {
 	u8 evb_veb;		/* true for VEB, false for VEPA */
 	u8 reset_ongoing;	/* true if HW is in reset, false otherwise */
 	struct ice_bus_info bus;
-	struct ice_nvm_info nvm;
+	struct ice_flash_info flash;
 	struct ice_hw_dev_caps dev_caps;	/* device capabilities */
 	struct ice_hw_func_caps func_caps;	/* function capabilities */
-	struct ice_netlist_ver_info netlist_ver; /* netlist version info */
 
 	struct ice_switch_info *switch_info;	/* switch filter lists */
 
-- 
2.28.0.497.g54e85e7af1ac

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

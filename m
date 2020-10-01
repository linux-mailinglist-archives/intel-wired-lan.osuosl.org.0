Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E5C28054C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 19:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E719786B00;
	Thu,  1 Oct 2020 17:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tu0BKIneNP3s; Thu,  1 Oct 2020 17:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB98386B05;
	Thu,  1 Oct 2020 17:32:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBADB1BF857
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E038586B2B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7sKeQ+vbjGvX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 17:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0074286B06
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:42 +0000 (UTC)
IronPort-SDR: 7xPjQYflW3GuaSj63wpIwxFZtcRDp+rkYMlpYWi5LtNW5vwkJx1e63XyssEcsXpsLzaa5u4S3l
 zLs/b8Zgnltg==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162870722"
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="162870722"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:41 -0700
IronPort-SDR: XbZMEEqF2sYFI6DzWxMWOmuJTyEtT04mMYXD0fDVLuTl49jNWy7skVH4Xc1Uag4ZZAedkeBtNi
 m1Sxpd+IYCDw==
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="514815537"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Oct 2020 10:31:42 -0700
Message-Id: <20201001173144.712615-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.497.g54e85e7af1ac
In-Reply-To: <20201001173144.712615-1-jacob.e.keller@intel.com>
References: <20201001173144.712615-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [intel-wired-lan 2/4] ice: cache NVM module bank
 information
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

The ice flash contains two copies of each of the NVM, Option ROM, and
Netlist modules. Each bank has a pointer word and a size word. In order
to correctly read from the active flash bank, the driver must calculate
the offset manually.

During NVM initialization, read the Shadow RAM control word and
determine which bank is active for each NVM module. Additionally, cache
the size and pointer values for use in calculating the correct offset.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c  | 151 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h |  37 ++++++
 2 files changed, 188 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 0f6d864a1af6..11cec85d851f 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -609,6 +609,151 @@ static enum ice_status ice_discover_flash_size(struct ice_hw *hw)
 	return status;
 }
 
+/**
+ * ice_read_sr_pointer - Read the value of a Shadow RAM pointer word
+ * @hw: pointer to the HW structure
+ * @offset: the word offset of the Shadow RAM word to read
+ * @pointer: pointer value read from Shadow RAM
+ *
+ * Read the given Shadow RAM word, and convert it to a pointer value specified
+ * in bytes. This function assumes the specified offset is a valid pointer
+ * word.
+ *
+ * Each pointer word specifies whether it is stored in word size or 4KB
+ * sector size by using the highest bit. The reported pointer value will be in
+ * bytes, intended for flat NVM reads.
+ */
+static enum ice_status
+ice_read_sr_pointer(struct ice_hw *hw, u16 offset, u32 *pointer)
+{
+	enum ice_status status;
+	u16 value;
+
+	status = ice_read_sr_word(hw, offset, &value);
+	if (status)
+		return status;
+
+	/* Determine if the pointer is in 4KB or word units */
+	if (value & ICE_SR_NVM_PTR_4KB_UNITS)
+		*pointer = (value & ~ICE_SR_NVM_PTR_4KB_UNITS) * 4 * 1024;
+	else
+		*pointer = value * 2;
+
+	return 0;
+}
+
+/**
+ * ice_read_sr_area_size - Read an area size from a Shadow RAM word
+ * @hw: pointer to the HW structure
+ * @offset: the word offset of the Shadow RAM to read
+ * @size: size value read from the Shadow RAM
+ *
+ * Read the given Shadow RAM word, and convert it to an area size value
+ * specified in bytes. This function assumes the specified offset is a valid
+ * area size word.
+ *
+ * Each area size word is specified in 4KB sector units. This function reports
+ * the size in bytes, intended for flat NVM reads.
+ */
+static enum ice_status
+ice_read_sr_area_size(struct ice_hw *hw, u16 offset, u32 *size)
+{
+	enum ice_status status;
+	u16 value;
+
+	status = ice_read_sr_word(hw, offset, &value);
+	if (status)
+		return status;
+
+	/* Area sizes are always specified in 4KB units */
+	*size = value * 4 * 1024;
+
+	return 0;
+}
+
+/**
+ * ice_determine_active_flash_banks - Discover active bank for each module
+ * @hw: pointer to the HW struct
+ *
+ * Read the Shadow RAM control word and determine which banks are active for
+ * the NVM, OROM, and Netlist modules. Also read and calculate the associated
+ * pointer and size. These values are then cached into the ice_flash_info
+ * structure for later use in order to calculate the correct offset to read
+ * from the active module.
+ */
+static enum ice_status
+ice_determine_active_flash_banks(struct ice_hw *hw)
+{
+	struct ice_bank_info *banks = &hw->flash.banks;
+	enum ice_status status;
+	u16 ctrl_word;
+
+	status = ice_read_sr_word(hw, ICE_SR_NVM_CTRL_WORD, &ctrl_word);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read the Shadow RAM control word\n");
+		return status;
+	}
+
+	/* Check that the control word indicates validity */
+	if ((ctrl_word & ICE_SR_CTRL_WORD_1_M) >> ICE_SR_CTRL_WORD_1_S != ICE_SR_CTRL_WORD_VALID) {
+		ice_debug(hw, ICE_DBG_NVM, "Shadow RAM control word is invalid\n");
+		return ICE_ERR_CFG;
+	}
+
+	if (!(ctrl_word & ICE_SR_CTRL_WORD_NVM_BANK))
+		banks->nvm_bank = ICE_1ST_FLASH_BANK;
+	else
+		banks->nvm_bank = ICE_2ND_FLASH_BANK;
+
+	if (!(ctrl_word & ICE_SR_CTRL_WORD_OROM_BANK))
+		banks->orom_bank = ICE_1ST_FLASH_BANK;
+	else
+		banks->orom_bank = ICE_2ND_FLASH_BANK;
+
+	if (!(ctrl_word & ICE_SR_CTRL_WORD_NETLIST_BANK))
+		banks->netlist_bank = ICE_1ST_FLASH_BANK;
+	else
+		banks->netlist_bank = ICE_2ND_FLASH_BANK;
+
+	status = ice_read_sr_pointer(hw, ICE_SR_1ST_NVM_BANK_PTR, &banks->nvm_ptr);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read NVM bank pointer\n");
+		return status;
+	}
+
+	status = ice_read_sr_area_size(hw, ICE_SR_NVM_BANK_SIZE, &banks->nvm_size);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read NVM bank area size\n");
+		return status;
+	}
+
+	status = ice_read_sr_pointer(hw, ICE_SR_1ST_OROM_BANK_PTR, &banks->orom_ptr);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read OROM bank pointer\n");
+		return status;
+	}
+
+	status = ice_read_sr_area_size(hw, ICE_SR_OROM_BANK_SIZE, &banks->orom_size);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read OROM bank area size\n");
+		return status;
+	}
+
+	status = ice_read_sr_pointer(hw, ICE_SR_NETLIST_BANK_PTR, &banks->netlist_ptr);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read Netlist bank pointer\n");
+		return status;
+	}
+
+	status = ice_read_sr_area_size(hw, ICE_SR_NETLIST_BANK_SIZE, &banks->netlist_size);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to read Netlist bank area size\n");
+		return status;
+	}
+
+	return 0;
+}
+
 /**
  * ice_init_nvm - initializes NVM setting
  * @hw: pointer to the HW struct
@@ -651,6 +796,12 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		return status;
 	}
 
+	status = ice_determine_active_flash_banks(hw);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to determine active flash banks.\n");
+		return status;
+	}
+
 	status = ice_get_nvm_ver_info(hw, &flash->nvm);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read NVM info.\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 7af7758374d4..bc3be64cf3d9 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -330,11 +330,34 @@ struct ice_netlist_info {
 	u16 cust_ver;			/* customer version */
 };
 
+/* Enumeration of possible flash banks for the NVM, OROM, and Netlist modules
+ * of the flash image.
+ */
+enum ice_flash_bank {
+	ICE_INVALID_FLASH_BANK,
+	ICE_1ST_FLASH_BANK,
+	ICE_2ND_FLASH_BANK,
+};
+
+/* information for accessing NVM, OROM, and Netlist flash banks */
+struct ice_bank_info {
+	u32 nvm_ptr;				/* Pointer to 1st NVM bank */
+	u32 nvm_size;				/* Size of NVM bank */
+	u32 orom_ptr;				/* Pointer to 1st OROM bank */
+	u32 orom_size;				/* Size of OROM bank */
+	u32 netlist_ptr;			/* Pointer to 1st Netlist bank */
+	u32 netlist_size;			/* Size of Netlist bank */
+	enum ice_flash_bank nvm_bank;		/* Active NVM bank */
+	enum ice_flash_bank orom_bank;		/* Active OROM bank */
+	enum ice_flash_bank netlist_bank;	/* Active Netlist bank */
+};
+
 /* Flash Chip Information */
 struct ice_flash_info {
 	struct ice_orom_info orom;	/* Option ROM version info */
 	struct ice_nvm_info nvm;	/* NVM version information */
 	struct ice_netlist_info netlist;/* Netlist version info */
+	struct ice_bank_info banks;	/* Flash Bank information */
 	u16 sr_words;			/* Shadow RAM size in words */
 	u32 flash_size;			/* Size of available flash in bytes */
 	u8 blank_nvm_mode;		/* is NVM empty (no FW present) */
@@ -770,6 +793,7 @@ struct ice_hw_port_stats {
 };
 
 /* Checksum and Shadow RAM pointers */
+#define ICE_SR_NVM_CTRL_WORD		0x00
 #define ICE_SR_BOOT_CFG_PTR		0x132
 #define ICE_SR_NVM_WOL_CFG		0x19
 #define ICE_NVM_OROM_VER_OFF		0x02
@@ -789,10 +813,23 @@ struct ice_hw_port_stats {
 #define ICE_OROM_VER_MASK		(0xff << ICE_OROM_VER_SHIFT)
 #define ICE_SR_PFA_PTR			0x40
 #define ICE_SR_1ST_NVM_BANK_PTR		0x42
+#define ICE_SR_NVM_BANK_SIZE		0x43
 #define ICE_SR_1ST_OROM_BANK_PTR	0x44
+#define ICE_SR_OROM_BANK_SIZE		0x45
 #define ICE_SR_NETLIST_BANK_PTR		0x46
+#define ICE_SR_NETLIST_BANK_SIZE	0x47
 #define ICE_SR_SECTOR_SIZE_IN_WORDS	0x800
 
+/* Auxiliary field, mask, and shift definition for Shadow RAM and NVM Flash */
+#define ICE_SR_CTRL_WORD_1_S		0x06
+#define ICE_SR_CTRL_WORD_1_M		(0x03 << ICE_SR_CTRL_WORD_1_S)
+#define ICE_SR_CTRL_WORD_VALID		0x1
+#define ICE_SR_CTRL_WORD_OROM_BANK	BIT(3)
+#define ICE_SR_CTRL_WORD_NETLIST_BANK	BIT(4)
+#define ICE_SR_CTRL_WORD_NVM_BANK	BIT(5)
+
+#define ICE_SR_NVM_PTR_4KB_UNITS	BIT(15)
+
 /* Link override related */
 #define ICE_SR_PFA_LINK_OVERRIDE_WORDS		10
 #define ICE_SR_PFA_LINK_OVERRIDE_PHY_WORDS	4
-- 
2.28.0.497.g54e85e7af1ac

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

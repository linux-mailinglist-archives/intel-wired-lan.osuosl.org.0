Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7074FA56A89
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CAAA41529;
	Fri,  7 Mar 2025 14:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9vGr2hnew9Rt; Fri,  7 Mar 2025 14:38:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C449413E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741358322;
	bh=iZo2OSW2kSsv7rKoQa15mMyMwRW/8jBjL1V1C3ZP3E8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xltiJ4f3QelVoethAZfCLtEWrxjFNCDjbDZrnXECnYOoG91WK5l1p76EQZ+Rvi/uh
	 7HLt4QU8g6BIemo6i+9ZnnM3LIDXpC0NfseCA3CAc6mbJVW1KT40X9nWWP/WHCKICm
	 OPLxNdo7qx/8oNnCnaKQnGKbBCnwHc96E5VCJFlxyEm25q76YvUsbThGIqI4h+C8g9
	 EcgkZkkWbxr2acVfwgdaRPDWZVsnKqAcV3+EwG0LotzpJHCxERwby83HRTntx9MCxC
	 qurDvmjarXfqbpQze9SQ2CIspY2lfkkpHlL1fKQK9y1tNLPvZUjnRCDkWISB5eD7J9
	 /rqhjfAnB6f1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C449413E1;
	Fri,  7 Mar 2025 14:38:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 03E4A1C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1F61413E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hq5ds6B4dPmZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:38:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C50234076C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C50234076C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C50234076C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:37 +0000 (UTC)
X-CSE-ConnectionGUID: sS+MQ+hnTte0VtnqwWGTKQ==
X-CSE-MsgGUID: pHEQeXS/SxqmIvI2VRSNyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42263324"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42263324"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:38:38 -0800
X-CSE-ConnectionGUID: S3uT+TH2T+2bWll9PpmYfQ==
X-CSE-MsgGUID: 31sZS3emSe+rEQxNzVNzjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142570787"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 07 Mar 2025 06:38:34 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Bharath R <bharath.r@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri,  7 Mar 2025 15:24:09 +0100
Message-Id: <20250307142419.314402-6-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741358318; x=1772894318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CIW0KX5kjTn8Nl30b+aXCq6rtR0RMzAtQnEuP7/ZOH4=;
 b=iKvUoo6JObH1W2HrcUgfGohZkY/E8GS5bWYROvXYm9R4sqQPJeb7A29E
 je6y77hO3xqjeN361yAEmF6Zf1IH2WGQVc1vOoQnhmo4zGLdYTXqAVt6F
 UBUJ3RJi4GgKg0IWgGcOQqG5wTMGk9B1NXI/jiYTcZZdbKULTDTLQ0MCJ
 8xNmUYs4/icxm1x/4tOyEucnsKvMAQ9HLBvqVnqqPZbo8HbwEsC0rx+G8
 J+EC0sueUmPfnISaivq0RoPHKZMxLhZxLCUrlAfygmesr+p7JgIDnsDU6
 pQeI3Fv13zykRlYXeH1slvXevVgh5XpU0yglVAzXmycJgku6z1eaNdV7a
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iKvUoo6J
Subject: [Intel-wired-lan] [PATCH iwl-next v6 05/15] ixgbe: add E610
 functions for acquiring flash data
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>

Read NVM related info from the flash.

Add several helper functions used to access the flash data,
find memory banks, calculate offsets, calculate the flash size.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Tested-by: Bharath R <bharath.r@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 509 +++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   4 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  40 +-
 4 files changed, 552 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668672d6..3654b7e32cc8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2264,6 +2264,513 @@ int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw)
 	return err;
 }
 
+/**
+ * ixgbe_discover_flash_size - Discover the available flash size
+ * @hw: pointer to the HW struct
+ *
+ * The device flash could be up to 16MB in size. However, it is possible that
+ * the actual size is smaller. Use bisection to determine the accessible size
+ * of flash memory.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_discover_flash_size(struct ixgbe_hw *hw)
+{
+	u32 min_size = 0, max_size = IXGBE_ACI_NVM_MAX_OFFSET + 1;
+	int err;
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	if (err)
+		return err;
+
+	while ((max_size - min_size) > 1) {
+		u32 offset = (max_size + min_size) / 2;
+		u32 len = 1;
+		u8 data;
+
+		err = ixgbe_read_flat_nvm(hw, offset, &len, &data, false);
+		if (err == -EIO &&
+		    hw->aci.last_status == IXGBE_ACI_RC_EINVAL) {
+			err = 0;
+			max_size = offset;
+		} else if (!err) {
+			min_size = offset;
+		} else {
+			/* an unexpected error occurred */
+			goto err_read_flat_nvm;
+		}
+	}
+
+	hw->flash.flash_size = max_size;
+
+err_read_flat_nvm:
+	ixgbe_release_nvm(hw);
+
+	return err;
+}
+
+/**
+ * ixgbe_read_sr_base_address - Read the value of a Shadow RAM pointer word
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
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_sr_base_address(struct ixgbe_hw *hw, u16 offset,
+				      u32 *pointer)
+{
+	u16 value;
+	int err;
+
+	err = ixgbe_read_ee_aci_e610(hw, offset, &value);
+	if (err)
+		return err;
+
+	/* Determine if the pointer is in 4KB or word units */
+	if (value & IXGBE_SR_NVM_PTR_4KB_UNITS)
+		*pointer = (value & ~IXGBE_SR_NVM_PTR_4KB_UNITS) * SZ_4K;
+	else
+		*pointer = value * sizeof(u16);
+
+	return 0;
+}
+
+/**
+ * ixgbe_read_sr_area_size - Read an area size from a Shadow RAM word
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
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_sr_area_size(struct ixgbe_hw *hw, u16 offset, u32 *size)
+{
+	u16 value;
+	int err;
+
+	err = ixgbe_read_ee_aci_e610(hw, offset, &value);
+	if (err)
+		return err;
+
+	/* Area sizes are always specified in 4KB units */
+	*size = value * SZ_4K;
+
+	return 0;
+}
+
+/**
+ * ixgbe_determine_active_flash_banks - Discover active bank for each module
+ * @hw: pointer to the HW struct
+ *
+ * Read the Shadow RAM control word and determine which banks are active for
+ * the NVM, OROM, and Netlist modules. Also read and calculate the associated
+ * pointer and size. These values are then cached into the ixgbe_flash_info
+ * structure for later use in order to calculate the correct offset to read
+ * from the active module.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_determine_active_flash_banks(struct ixgbe_hw *hw)
+{
+	struct ixgbe_bank_info *banks = &hw->flash.banks;
+	u16 ctrl_word;
+	int err;
+
+	err = ixgbe_read_ee_aci_e610(hw, IXGBE_E610_SR_NVM_CTRL_WORD, &ctrl_word);
+	if (err)
+		return err;
+
+	if (FIELD_GET(IXGBE_SR_CTRL_WORD_1_M, ctrl_word) !=
+	    IXGBE_SR_CTRL_WORD_VALID)
+		return -ENODATA;
+
+	if (!(ctrl_word & IXGBE_SR_CTRL_WORD_NVM_BANK))
+		banks->nvm_bank = IXGBE_1ST_FLASH_BANK;
+	else
+		banks->nvm_bank = IXGBE_2ND_FLASH_BANK;
+
+	if (!(ctrl_word & IXGBE_SR_CTRL_WORD_OROM_BANK))
+		banks->orom_bank = IXGBE_1ST_FLASH_BANK;
+	else
+		banks->orom_bank = IXGBE_2ND_FLASH_BANK;
+
+	if (!(ctrl_word & IXGBE_SR_CTRL_WORD_NETLIST_BANK))
+		banks->netlist_bank = IXGBE_1ST_FLASH_BANK;
+	else
+		banks->netlist_bank = IXGBE_2ND_FLASH_BANK;
+
+	err = ixgbe_read_sr_base_address(hw, IXGBE_E610_SR_1ST_NVM_BANK_PTR,
+					 &banks->nvm_ptr);
+	if (err)
+		return err;
+
+	err = ixgbe_read_sr_area_size(hw, IXGBE_E610_SR_NVM_BANK_SIZE,
+				      &banks->nvm_size);
+	if (err)
+		return err;
+
+	err = ixgbe_read_sr_base_address(hw, IXGBE_E610_SR_1ST_OROM_BANK_PTR,
+					 &banks->orom_ptr);
+	if (err)
+		return err;
+
+	err = ixgbe_read_sr_area_size(hw, IXGBE_E610_SR_OROM_BANK_SIZE,
+				      &banks->orom_size);
+	if (err)
+		return err;
+
+	err = ixgbe_read_sr_base_address(hw, IXGBE_E610_SR_NETLIST_BANK_PTR,
+					 &banks->netlist_ptr);
+	if (err)
+		return err;
+
+	err = ixgbe_read_sr_area_size(hw, IXGBE_E610_SR_NETLIST_BANK_SIZE,
+				      &banks->netlist_size);
+
+	return err;
+}
+
+/**
+ * ixgbe_get_flash_bank_offset - Get offset into requested flash bank
+ * @hw: pointer to the HW structure
+ * @bank: whether to read from the active or inactive flash bank
+ * @module: the module to read from
+ *
+ * Based on the module, lookup the module offset from the beginning of the
+ * flash.
+ *
+ * Return: the flash offset. Note that a value of zero is invalid and must be
+ * treated as an error.
+ */
+static int ixgbe_get_flash_bank_offset(struct ixgbe_hw *hw,
+				       enum ixgbe_bank_select bank,
+				       u16 module)
+{
+	struct ixgbe_bank_info *banks = &hw->flash.banks;
+	enum ixgbe_flash_bank active_bank;
+	bool second_bank_active;
+	u32 offset, size;
+
+	switch (module) {
+	case IXGBE_E610_SR_1ST_NVM_BANK_PTR:
+		offset = banks->nvm_ptr;
+		size = banks->nvm_size;
+		active_bank = banks->nvm_bank;
+		break;
+	case IXGBE_E610_SR_1ST_OROM_BANK_PTR:
+		offset = banks->orom_ptr;
+		size = banks->orom_size;
+		active_bank = banks->orom_bank;
+		break;
+	case IXGBE_E610_SR_NETLIST_BANK_PTR:
+		offset = banks->netlist_ptr;
+		size = banks->netlist_size;
+		active_bank = banks->netlist_bank;
+		break;
+	default:
+		return 0;
+	}
+
+	switch (active_bank) {
+	case IXGBE_1ST_FLASH_BANK:
+		second_bank_active = false;
+		break;
+	case IXGBE_2ND_FLASH_BANK:
+		second_bank_active = true;
+		break;
+	default:
+		return 0;
+	}
+
+	/* The second flash bank is stored immediately following the first
+	 * bank. Based on whether the 1st or 2nd bank is active, and whether
+	 * we want the active or inactive bank, calculate the desired offset.
+	 */
+	switch (bank) {
+	case IXGBE_ACTIVE_FLASH_BANK:
+		return offset + (second_bank_active ? size : 0);
+	case IXGBE_INACTIVE_FLASH_BANK:
+		return offset + (second_bank_active ? 0 : size);
+	}
+
+	return 0;
+}
+
+/**
+ * ixgbe_read_flash_module - Read a word from one of the main NVM modules
+ * @hw: pointer to the HW structure
+ * @bank: which bank of the module to read
+ * @module: the module to read
+ * @offset: the offset into the module in bytes
+ * @data: storage for the word read from the flash
+ * @length: bytes of data to read
+ *
+ * Read data from the specified flash module. The bank parameter indicates
+ * whether or not to read from the active bank or the inactive bank of that
+ * module.
+ *
+ * The word will be read using flat NVM access, and relies on the
+ * hw->flash.banks data being setup by ixgbe_determine_active_flash_banks()
+ * during initialization.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_flash_module(struct ixgbe_hw *hw,
+				   enum ixgbe_bank_select bank,
+				   u16 module, u32 offset, u8 *data, u32 length)
+{
+	u32 start;
+	int err;
+
+	start = ixgbe_get_flash_bank_offset(hw, bank, module);
+	if (!start)
+		return -EINVAL;
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	if (err)
+		return err;
+
+	err = ixgbe_read_flat_nvm(hw, start + offset, &length, data, false);
+
+	ixgbe_release_nvm(hw);
+
+	return err;
+}
+
+/**
+ * ixgbe_read_nvm_module - Read from the active main NVM module
+ * @hw: pointer to the HW structure
+ * @bank: whether to read from active or inactive NVM module
+ * @offset: offset into the NVM module to read, in words
+ * @data: storage for returned word value
+ *
+ * Read the specified word from the active NVM module. This includes the CSS
+ * header at the start of the NVM module.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_nvm_module(struct ixgbe_hw *hw,
+				 enum ixgbe_bank_select bank,
+				 u32 offset, u16 *data)
+{
+	__le16 data_local;
+	int err;
+
+	err = ixgbe_read_flash_module(hw, bank, IXGBE_E610_SR_1ST_NVM_BANK_PTR,
+				      offset * sizeof(data_local),
+				      (u8 *)&data_local,
+				      sizeof(data_local));
+	if (!err)
+		*data = le16_to_cpu(data_local);
+
+	return err;
+}
+
+/**
+ * ixgbe_get_nvm_css_hdr_len - Read the CSS header length
+ * @hw: pointer to the HW struct
+ * @bank: whether to read from the active or inactive flash bank
+ * @hdr_len: storage for header length in words
+ *
+ * Read the CSS header length from the NVM CSS header and add the
+ * Authentication header size, and then convert to words.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_get_nvm_css_hdr_len(struct ixgbe_hw *hw,
+				     enum ixgbe_bank_select bank,
+				     u32 *hdr_len)
+{
+	u16 hdr_len_l, hdr_len_h;
+	u32 hdr_len_dword;
+	int err;
+
+	err = ixgbe_read_nvm_module(hw, bank, IXGBE_NVM_CSS_HDR_LEN_L,
+				    &hdr_len_l);
+	if (err)
+		return err;
+
+	err = ixgbe_read_nvm_module(hw, bank, IXGBE_NVM_CSS_HDR_LEN_H,
+				    &hdr_len_h);
+	if (err)
+		return err;
+
+	/* CSS header length is in DWORD, so convert to words and add
+	 * authentication header size.
+	 */
+	hdr_len_dword = (hdr_len_h << 16) | hdr_len_l;
+	*hdr_len = hdr_len_dword * 2 + IXGBE_NVM_AUTH_HEADER_LEN;
+
+	return 0;
+}
+
+/**
+ * ixgbe_read_nvm_sr_copy - Read a word from the Shadow RAM copy
+ * @hw: pointer to the HW structure
+ * @bank: whether to read from the active or inactive NVM module
+ * @offset: offset into the Shadow RAM copy to read, in words
+ * @data: storage for returned word value
+ *
+ * Read the specified word from the copy of the Shadow RAM found in the
+ * specified NVM module.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_nvm_sr_copy(struct ixgbe_hw *hw,
+				  enum ixgbe_bank_select bank,
+				  u32 offset, u16 *data)
+{
+	u32 hdr_len;
+	int err;
+
+	err = ixgbe_get_nvm_css_hdr_len(hw, bank, &hdr_len);
+	if (err)
+		return err;
+
+	hdr_len = round_up(hdr_len, IXGBE_HDR_LEN_ROUNDUP);
+
+	return ixgbe_read_nvm_module(hw, bank, hdr_len + offset, data);
+}
+
+/**
+ * ixgbe_get_nvm_srev - Read the security revision from the NVM CSS header
+ * @hw: pointer to the HW struct
+ * @bank: whether to read from the active or inactive flash bank
+ * @srev: storage for security revision
+ *
+ * Read the security revision out of the CSS header of the active NVM module
+ * bank.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_get_nvm_srev(struct ixgbe_hw *hw,
+			      enum ixgbe_bank_select bank, u32 *srev)
+{
+	u16 srev_l, srev_h;
+	int err;
+
+	err = ixgbe_read_nvm_module(hw, bank, IXGBE_NVM_CSS_SREV_L, &srev_l);
+	if (err)
+		return err;
+
+	err = ixgbe_read_nvm_module(hw, bank, IXGBE_NVM_CSS_SREV_H, &srev_h);
+	if (err)
+		return err;
+
+	*srev = (srev_h << 16) | srev_l;
+
+	return 0;
+}
+
+/**
+ * ixgbe_get_nvm_ver_info - Read NVM version information
+ * @hw: pointer to the HW struct
+ * @bank: whether to read from the active or inactive flash bank
+ * @nvm: pointer to NVM info structure
+ *
+ * Read the NVM EETRACK ID and map version of the main NVM image bank, filling
+ * in the nvm info structure.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_get_nvm_ver_info(struct ixgbe_hw *hw,
+				  enum ixgbe_bank_select bank,
+				  struct ixgbe_nvm_info *nvm)
+{
+	u16 eetrack_lo, eetrack_hi, ver;
+	int err;
+
+	err = ixgbe_read_nvm_sr_copy(hw, bank,
+				     IXGBE_E610_SR_NVM_DEV_STARTER_VER, &ver);
+	if (err)
+		return err;
+
+	nvm->major = FIELD_GET(IXGBE_E610_NVM_VER_HI_MASK, ver);
+	nvm->minor = FIELD_GET(IXGBE_E610_NVM_VER_LO_MASK, ver);
+
+	err = ixgbe_read_nvm_sr_copy(hw, bank, IXGBE_E610_SR_NVM_EETRACK_LO,
+				     &eetrack_lo);
+	if (err)
+		return err;
+
+	err = ixgbe_read_nvm_sr_copy(hw, bank, IXGBE_E610_SR_NVM_EETRACK_HI,
+				     &eetrack_hi);
+	if (err)
+		return err;
+
+	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
+
+	ixgbe_get_nvm_srev(hw, bank, &nvm->srev);
+
+	return 0;
+}
+
+/**
+ * ixgbe_get_flash_data - get flash data
+ * @hw: pointer to the HW struct
+ *
+ * Read and populate flash data such as Shadow RAM size,
+ * max_timeout and blank_nvm_mode
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_flash_data(struct ixgbe_hw *hw)
+{
+	struct ixgbe_flash_info *flash = &hw->flash;
+	u32 fla, gens_stat;
+	u8 sr_size;
+	int err;
+
+	/* The SR size is stored regardless of the NVM programming mode
+	 * as the blank mode may be used in the factory line.
+	 */
+	gens_stat = IXGBE_READ_REG(hw, GLNVM_GENS);
+	sr_size = FIELD_GET(GLNVM_GENS_SR_SIZE_M, gens_stat);
+
+	/* Switching to words (sr_size contains power of 2) */
+	flash->sr_words = BIT(sr_size) * (SZ_1K / sizeof(u16));
+
+	/* Check if we are in the normal or blank NVM programming mode */
+	fla = IXGBE_READ_REG(hw, IXGBE_GLNVM_FLA);
+	if (fla & IXGBE_GLNVM_FLA_LOCKED_M) {
+		flash->blank_nvm_mode = false;
+	} else {
+		flash->blank_nvm_mode = true;
+		return -EIO;
+	}
+
+	err = ixgbe_discover_flash_size(hw);
+
+	if (err)
+		return err;
+
+	err = ixgbe_determine_active_flash_banks(hw);
+
+	if (err)
+		return err;
+
+	err = ixgbe_get_nvm_ver_info(hw, IXGBE_ACTIVE_FLASH_BANK,
+				     &flash->nvm);
+
+	return err;
+}
+
 /**
  * ixgbe_read_sr_word_aci - Reads Shadow RAM via ACI
  * @hw: pointer to the HW structure
@@ -2483,7 +2990,7 @@ int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val)
 		if (err)
 			return err;
 
-		err = ixgbe_read_sr_word_aci(hw, E610_SR_SW_CHECKSUM_WORD,
+		err = ixgbe_read_sr_word_aci(hw, IXGBE_E610_SR_SW_CHECKSUM_WORD,
 					     &tmp_checksum);
 		ixgbe_release_nvm(hw);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index ba8c06b73810..2c971a34200b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -77,5 +77,6 @@ int ixgbe_read_ee_aci_buffer_e610(struct ixgbe_hw *hw, u16 offset,
 				  u16 words, u16 *data);
 int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val);
 int ixgbe_reset_hw_e610(struct ixgbe_hw *hw);
+int ixgbe_get_flash_data(struct ixgbe_hw *hw);
 
 #endif /* _IXGBE_E610_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e592719daa0c..a6bddea6b482 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11335,6 +11335,10 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		err = ixgbe_get_caps(&adapter->hw);
 		if (err)
 			dev_err(&pdev->dev, "ixgbe_get_caps failed %d\n", err);
+
+		err = ixgbe_get_flash_data(&adapter->hw);
+		if (err)
+			goto err_sw_init;
 	}
 
 	if (adapter->hw.mac.type == ixgbe_mac_82599EB)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 8d06ade3c7cd..1e4f18432e75 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -10,7 +10,32 @@
 #define IXGBE_MAX_VSI			768
 
 /* Checksum and Shadow RAM pointers */
-#define E610_SR_SW_CHECKSUM_WORD		0x3F
+#define IXGBE_E610_SR_NVM_CTRL_WORD		0x00
+#define IXGBE_E610_SR_PBA_BLOCK_PTR		0x16
+#define IXGBE_E610_SR_NVM_DEV_STARTER_VER	0x18
+#define IXGBE_E610_SR_NVM_EETRACK_LO		0x2D
+#define IXGBE_E610_SR_NVM_EETRACK_HI		0x2E
+#define IXGBE_E610_NVM_VER_LO_MASK		GENMASK(7, 0)
+#define IXGBE_E610_NVM_VER_HI_MASK		GENMASK(15, 12)
+#define IXGBE_E610_SR_SW_CHECKSUM_WORD		0x3F
+#define IXGBE_E610_SR_PFA_PTR			0x40
+#define IXGBE_E610_SR_1ST_NVM_BANK_PTR		0x42
+#define IXGBE_E610_SR_NVM_BANK_SIZE		0x43
+#define IXGBE_E610_SR_1ST_OROM_BANK_PTR		0x44
+#define IXGBE_E610_SR_OROM_BANK_SIZE		0x45
+#define IXGBE_E610_SR_NETLIST_BANK_PTR		0x46
+#define IXGBE_E610_SR_NETLIST_BANK_SIZE		0x47
+
+/* CSS Header words */
+#define IXGBE_NVM_CSS_HDR_LEN_L			0x02
+#define IXGBE_NVM_CSS_HDR_LEN_H			0x03
+#define IXGBE_NVM_CSS_SREV_L			0x14
+#define IXGBE_NVM_CSS_SREV_H			0x15
+
+#define IXGBE_HDR_LEN_ROUNDUP			32
+
+/* Length of Authentication header section in words */
+#define IXGBE_NVM_AUTH_HEADER_LEN		0x08
 
 /* Shadow RAM related */
 #define IXGBE_SR_WORDS_IN_1KB	512
@@ -29,6 +54,14 @@
 #define IXGBE_GLNVM_FLA_LOCKED_S	6
 #define IXGBE_GLNVM_FLA_LOCKED_M	BIT(6)
 
+/* Auxiliary field, mask and shift definition for Shadow RAM and NVM Flash */
+#define IXGBE_SR_CTRL_WORD_1_M		GENMASK(7, 6)
+#define IXGBE_SR_CTRL_WORD_VALID	BIT(0)
+#define IXGBE_SR_CTRL_WORD_OROM_BANK	BIT(3)
+#define IXGBE_SR_CTRL_WORD_NETLIST_BANK	BIT(4)
+#define IXGBE_SR_CTRL_WORD_NVM_BANK	BIT(5)
+#define IXGBE_SR_NVM_PTR_4KB_UNITS	BIT(15)
+
 /* Admin Command Interface (ACI) registers */
 #define IXGBE_PF_HIDA(_i)			(0x00085000 + ((_i) * 4))
 #define IXGBE_PF_HIDA_2(_i)			(0x00085020 + ((_i) * 4))
@@ -1012,6 +1045,11 @@ struct ixgbe_aci_info {
 	enum ixgbe_aci_err last_status;	/* last status of sent admin command */
 };
 
+enum ixgbe_bank_select {
+	IXGBE_ACTIVE_FLASH_BANK,
+	IXGBE_INACTIVE_FLASH_BANK,
+};
+
 /* Option ROM version information */
 struct ixgbe_orom_info {
 	u8 major;			/* Major version of OROM */
-- 
2.31.1


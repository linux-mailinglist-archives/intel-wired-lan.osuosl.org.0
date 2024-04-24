Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA75A8B0C23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 16:13:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E38E820F3;
	Wed, 24 Apr 2024 14:13:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nukOP2DmP2Qf; Wed, 24 Apr 2024 14:13:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9F4E82125
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713968014;
	bh=mI1ciFhC9fqGs2faLU6MBiwrbxqjYomEXQ3SDoMdVBc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vjMiNuNW1QsH6Gd5wQ6m3LDtN74GyqBWI4tlW+IvC6iax0G3AO+Y/OJkk/4BW9psd
	 +SrpS1tv/LGwoFFiYZiupKmiWtqcvEOVnD5LlNnQwB8MKGsW70JgGdkjIKyNcZCm3e
	 ACE8rd0ywYFHwCU1bq/c2JQhk4Ruh5HDPq/ukJ6XX57Kzvxvv8qraacyLRAAFTzXrn
	 Yl/pUcYXrIGL0C1gRxgZHb6dtMbo5gmXQXv0V4x3MLTJLzLHtu4veTSDuBcRgmuX0c
	 WU03vUwvn9t4CG0wR17y0LVrX/x5rwlZUpavRYRZQvMhIYhq5nnq2e1v73WgTe0Gxf
	 LbYdNok4OzQvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9F4E82125;
	Wed, 24 Apr 2024 14:13:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1A181BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADCE7400D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E_EDOL-Fbnsa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D511400CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D511400CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D511400CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:13:30 +0000 (UTC)
X-CSE-ConnectionGUID: kKZkvs+6RcKMBpERqXEKyA==
X-CSE-MsgGUID: ePx7TMqtQYydxUZ6JNOj4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="10138181"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="10138181"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 07:06:24 -0700
X-CSE-ConnectionGUID: f1uly/y0RZaak/G8fs5ewQ==
X-CSE-MsgGUID: krlgHBK0Q5+BQ05ec9qpEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="55922956"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by fmviesa001.fm.intel.com with ESMTP; 24 Apr 2024 07:06:20 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Apr 2024 16:22:50 +0200
Message-Id: <20240424142251.3887-5-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240424142251.3887-1-piotr.kwapulinski@intel.com>
References: <20240424142251.3887-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713968010; x=1745504010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L7W22wXr/ax6YH7AXgNvt331sgGh6+hRqwjdKUj1gLo=;
 b=jebJHS1lnlUMT/k/uidg9Fbi8DU9bSsDM4/lTF9unifN8y7wWE9a2SPF
 m0NVXnNklT3imnfypWucY8l6ESaax9bopPYEIHItdsXF8RN9fw6zE7oNS
 P/UnhKlwlCOHhdLgAl8p93vRmg8z0jI6YUpfQ+QX3WgPI5BN+ctefkhBY
 F225y/Jnxk854Php9zRCTS7gQ9h1+lTVfwsOVZRq3yYSv7PZpT4McFWsx
 ZsozKkbUzhZ4YfPtpwLssBwXkpEln30vh6Rmvskjpz3iAv3rPsb3/7KjP
 4vYWw8CUpfoXCy6LMkTnaXqXbdP51+w5MFb0Y7qETXSgfs6kigFUloPp3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jebJHS1l
Subject: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ixgbe: Add support for
 NVM handling in E610 device
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, jiri@resnulli.us,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add low level support for accessing NVM in E610 device. NVM operations are
handled via the Admin Command Interface. Add the following NVM specific
operations:
- acquire, release, read
- validate checksum
- read shadow ram

Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 290 ++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +
 2 files changed, 302 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 369f05d..330c7e7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2087,3 +2087,293 @@ int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 
 	return 0;
 }
+
+/**
+ * ixgbe_acquire_nvm - Generic request for acquiring the NVM ownership
+ * @hw: pointer to the HW structure
+ * @access: NVM access type (read or write)
+ *
+ * Request NVM ownership.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_acquire_nvm(struct ixgbe_hw *hw,
+		      enum ixgbe_aci_res_access_type access)
+{
+	u32 fla;
+
+	/* Skip if we are in blank NVM programming mode */
+	fla = IXGBE_READ_REG(hw, IXGBE_GLNVM_FLA);
+	if ((fla & IXGBE_GLNVM_FLA_LOCKED_M) == 0)
+		return 0;
+
+	return ixgbe_acquire_res(hw, IXGBE_NVM_RES_ID, access,
+				 IXGBE_NVM_TIMEOUT);
+}
+
+/**
+ * ixgbe_release_nvm - Generic request for releasing the NVM ownership
+ * @hw: pointer to the HW structure
+ *
+ * Release NVM ownership.
+ */
+void ixgbe_release_nvm(struct ixgbe_hw *hw)
+{
+	u32 fla;
+
+	/* Skip if we are in blank NVM programming mode */
+	fla = IXGBE_READ_REG(hw, IXGBE_GLNVM_FLA);
+	if ((fla & IXGBE_GLNVM_FLA_LOCKED_M) == 0)
+		return;
+
+	ixgbe_release_res(hw, IXGBE_NVM_RES_ID);
+}
+
+/**
+ * ixgbe_aci_read_nvm - read NVM
+ * @hw: pointer to the HW struct
+ * @module_typeid: module pointer location in words from the NVM beginning
+ * @offset: byte offset from the module beginning
+ * @length: length of the section to be read (in bytes from the offset)
+ * @data: command buffer (size [bytes] = length)
+ * @last_command: tells if this is the last command in a series
+ * @read_shadow_ram: tell if this is a shadow RAM read
+ *
+ * Read the NVM using ACI command (0x0701).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
+		       u16 length, void *data, bool last_command,
+		       bool read_shadow_ram)
+{
+	struct ixgbe_aci_cmd_nvm *cmd;
+	struct ixgbe_aci_desc desc;
+
+	if (offset > IXGBE_ACI_NVM_MAX_OFFSET)
+		return -EINVAL;
+
+	cmd = &desc.params.nvm;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_read);
+
+	if (!read_shadow_ram && module_typeid == IXGBE_ACI_NVM_START_POINT)
+		cmd->cmd_flags |= IXGBE_ACI_NVM_FLASH_ONLY;
+
+	/* If this is the last command in a series, set the proper flag. */
+	if (last_command)
+		cmd->cmd_flags |= IXGBE_ACI_NVM_LAST_CMD;
+	cmd->module_typeid = module_typeid;
+	cmd->offset_low = offset & 0xFFFF;
+	cmd->offset_high = (offset >> 16) & 0xFF;
+	cmd->length = length;
+
+	return ixgbe_aci_send_cmd(hw, &desc, data, length);
+}
+
+/**
+ * ixgbe_nvm_validate_checksum - validate checksum
+ * @hw: pointer to the HW struct
+ *
+ * Verify NVM PFA checksum validity using ACI command (0x0706).
+ * If the checksum verification failed, IXGBE_ERR_NVM_CHECKSUM is returned.
+ * The function acquires and then releases the NVM ownership.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_nvm_checksum *cmd;
+	struct ixgbe_aci_desc desc;
+	int err;
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	if (err)
+		return err;
+
+	cmd = &desc.params.nvm_checksum;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_checksum);
+	cmd->flags = IXGBE_ACI_NVM_CHECKSUM_VERIFY;
+
+	err = ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+
+	ixgbe_release_nvm(hw);
+
+	if (!err && cmd->checksum != IXGBE_ACI_NVM_CHECKSUM_CORRECT) {
+		struct ixgbe_adapter *adapter = container_of(hw, struct ixgbe_adapter,
+							     hw);
+
+		err = -EIO;
+		netdev_err(adapter->netdev, "Invalid Shadow Ram checksum");
+	}
+
+	return err;
+}
+
+/**
+ * ixgbe_read_sr_word_aci - Reads Shadow RAM via ACI
+ * @hw: pointer to the HW structure
+ * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
+ * @data: word read from the Shadow RAM
+ *
+ * Reads one 16 bit word from the Shadow RAM using ixgbe_read_flat_nvm.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_read_sr_word_aci(struct ixgbe_hw  *hw, u16 offset, u16 *data)
+{
+	u32 bytes = sizeof(u16);
+	u16 data_local;
+	int err;
+
+	err = ixgbe_read_flat_nvm(hw, offset * sizeof(u16), &bytes,
+				  (u8 *)&data_local, true);
+	if (err)
+		return err;
+
+	*data = data_local;
+	return 0;
+}
+
+/**
+ * ixgbe_read_flat_nvm - Read portion of NVM by flat offset
+ * @hw: pointer to the HW struct
+ * @offset: offset from beginning of NVM
+ * @length: (in) number of bytes to read; (out) number of bytes actually read
+ * @data: buffer to return data in (sized to fit the specified length)
+ * @read_shadow_ram: if true, read from shadow RAM instead of NVM
+ *
+ * Reads a portion of the NVM, as a flat memory space. This function correctly
+ * breaks read requests across Shadow RAM sectors, prevents Shadow RAM size
+ * from being exceeded in case of Shadow RAM read requests and ensures that no
+ * single read request exceeds the maximum 4KB read for a single admin command.
+ *
+ * Returns an error code on failure. Note that the data pointer may be
+ * partially updated if some reads succeed before a failure.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
+			u8 *data, bool read_shadow_ram)
+{
+	u32 inlen = *length;
+	u32 bytes_read = 0;
+	bool last_cmd;
+	int err;
+
+	/* Verify the length of the read if this is for the Shadow RAM */
+	if (read_shadow_ram && ((offset + inlen) >
+				(hw->eeprom.word_size * 2u)))
+		return -EINVAL;
+
+	do {
+		u32 read_size, sector_offset;
+
+		/* ixgbe_aci_read_nvm cannot read more than 4KB at a time.
+		 * Additionally, a read from the Shadow RAM may not cross over
+		 * a sector boundary. Conveniently, the sector size is also 4KB.
+		 */
+		sector_offset = offset % IXGBE_ACI_MAX_BUFFER_SIZE;
+		read_size = min_t(u32,
+				  IXGBE_ACI_MAX_BUFFER_SIZE - sector_offset,
+				  inlen - bytes_read);
+
+		last_cmd = !(bytes_read + read_size < inlen);
+
+		/* ixgbe_aci_read_nvm takes the length as a u16. Our read_size
+		 * is calculated using a u32, but the IXGBE_ACI_MAX_BUFFER_SIZE
+		 * maximum size guarantees that it will fit within the 2 bytes.
+		 */
+		err = ixgbe_aci_read_nvm(hw, IXGBE_ACI_NVM_START_POINT,
+					 offset, (u16)read_size,
+					 data + bytes_read, last_cmd,
+					 read_shadow_ram);
+		if (err)
+			break;
+
+		bytes_read += read_size;
+		offset += read_size;
+	} while (!last_cmd);
+
+	*length = bytes_read;
+	return err;
+}
+
+/**
+ * ixgbe_read_ee_aci_e610 - Read EEPROM word using the admin command.
+ * @hw: pointer to hardware structure
+ * @offset: offset of  word in the EEPROM to read
+ * @data: word read from the EEPROM
+ *
+ * Reads a 16 bit word from the EEPROM using the ACI.
+ * If the EEPROM params are not initialized, the function
+ * initialize them before proceeding with reading.
+ * The function acquires and then releases the NVM ownership.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data)
+{
+	int err;
+
+	if (hw->eeprom.type == ixgbe_eeprom_uninitialized) {
+		err = hw->eeprom.ops.init_params(hw);
+		if (err)
+			return err;
+	}
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	if (err)
+		return err;
+
+	err = ixgbe_read_sr_word_aci(hw, offset, data);
+	ixgbe_release_nvm(hw);
+
+	return err;
+}
+
+/**
+ * ixgbe_validate_eeprom_checksum_e610 - Validate EEPROM checksum
+ * @hw: pointer to hardware structure
+ * @checksum_val: calculated checksum
+ *
+ * Performs checksum calculation and validates the EEPROM checksum. If the
+ * caller does not need checksum_val, the value can be NULL.
+ * If the EEPROM params are not initialized, the function
+ * initialize them before proceeding.
+ * The function acquires and then releases the NVM ownership.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val)
+{
+	int err;
+
+	if (hw->eeprom.type == ixgbe_eeprom_uninitialized) {
+		err = hw->eeprom.ops.init_params(hw);
+		if (err)
+			return err;
+	}
+
+	err = ixgbe_nvm_validate_checksum(hw);
+	if (err)
+		return err;
+
+	if (checksum_val) {
+		u16 tmp_checksum;
+
+		err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+		if (err)
+			return err;
+
+		err = ixgbe_read_sr_word_aci(hw, E610_SR_SW_CHECKSUM_WORD,
+					     &tmp_checksum);
+		ixgbe_release_nvm(hw);
+
+		if (!err)
+			*checksum_val = tmp_checksum;
+	}
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 9be412a..df54a80 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -58,5 +58,17 @@ int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw);
 int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 			       struct ixgbe_aci_cmd_get_link_topo *cmd,
 			       u8 *node_part_number, u16 *node_handle);
+int ixgbe_acquire_nvm(struct ixgbe_hw *hw,
+		      enum ixgbe_aci_res_access_type access);
+void ixgbe_release_nvm(struct ixgbe_hw *hw);
+int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
+		       u16 length, void *data, bool last_command,
+		       bool read_shadow_ram);
+int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw);
+int ixgbe_read_sr_word_aci(struct ixgbe_hw  *hw, u16 offset, u16 *data);
+int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
+			u8 *data, bool read_shadow_ram);
+int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data);
+int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val);
 
 #endif /* _IXGBE_E610_H_ */
-- 
2.31.1


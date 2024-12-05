Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5F09E5018
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 09:46:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 497AD8471F;
	Thu,  5 Dec 2024 08:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rXO8szYJr0rZ; Thu,  5 Dec 2024 08:46:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A4B684719
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733388363;
	bh=+JGPF7OBaO1tTQLtnFGW8mUo6WgY2YgshtSU4TLOb/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9Y7sPIHEp4QszFftRL+HPw+oufBTePt3miVUYPf3pm+A3lWLZf3oq5jd/3hyOyeir
	 i7HH+NljJ6k/hSY22rC/p0V5VNK4IvBxDtkGCgor9bX4Z4gkD6hFsTXfplD8I9L/gZ
	 qkhADJow9FbxCi/s/O+2GWSR8k3JC9qXxgaFpp4lG9m9sGQIkJyva2Ow+OCE53kbkP
	 JcenOyZZBtBAE/kvvi/v5sxHyGYjvENxgmLqdCaCiyFshK/2YEtXeuDBzPQ9Lo0Ku8
	 QnL85enEea6K1fLOdyEbOOKfcEgtqre4j5i3OQ0mUfXcIY6bskLda5QnT5iYRAUqld
	 rDsMpOROQp2bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A4B684719;
	Thu,  5 Dec 2024 08:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AB8B1DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51ABF4156F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G6Te3echGwGx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 08:45:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B91E141568
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B91E141568
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B91E141568
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:45:59 +0000 (UTC)
X-CSE-ConnectionGUID: ru9SXNreTlK5a46FS/s1vQ==
X-CSE-MsgGUID: 7sexdj/kQKWkmnF4rRrjXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37623268"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37623268"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 00:45:59 -0800
X-CSE-ConnectionGUID: mGH8eXSQT9itpf2J8WKfwA==
X-CSE-MsgGUID: vmsqz2H3R5aOK1gD+7UsUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="94864156"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.2.76])
 by orviesa008.jf.intel.com with ESMTP; 05 Dec 2024 00:45:55 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Simon Horman <horms@kernel.org>
Date: Thu,  5 Dec 2024 09:44:46 +0100
Message-ID: <20241205084450.4651-5-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733388360; x=1764924360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQ6Z2k8ZTh3SXcZYXjTntib3M5oZgJmZSCzafWYkf2k=;
 b=EyZzeJNqEkfuo417r/9FANnDfdW5vzCZaDNDS+lYzOCGulaRqMW0n4vz
 fKP7XCVl9+BPDLxj0U1AV5MLJMeCkFEOugIx0rwPVY2+3hhNc1xfM86jV
 86soAalTA4S4zXRZX6/8BGUy0GCcnYqEBlEuWkIeY0jRbuDQ61VVN3xay
 UK/kBS86Njj1rglqI6r6VKnUWzJWFpdvPAiaWUXTR21BQhkMjo7fiNZnM
 RjlBx1U/xfF89A+3p9svu2IaEJOnzyIvA8HYSjuSnV1WwjJuCVisBbb18
 9wEZKW0yKa0XVQc6mUiCEPpsuC7li7PorVATgelRvHiXMgvtf9hGbqSeB
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EyZzeJNq
Subject: [Intel-wired-lan] [PATCH iwl-next v12 4/8] ixgbe: Add support for
 NVM handling in E610 device
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
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 291 ++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +
 2 files changed, 303 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 1c50005..0542b4b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2102,3 +2102,294 @@ int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 
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
+	cmd->module_typeid = cpu_to_le16(module_typeid);
+	cmd->offset_low = cpu_to_le16(offset & 0xFFFF);
+	cmd->offset_high = (offset >> 16) & 0xFF;
+	cmd->length = cpu_to_le16(length);
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
+	if (!err && cmd->checksum !=
+		cpu_to_le16(IXGBE_ACI_NVM_CHECKSUM_CORRECT)) {
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
index 4a4f969..412ddd1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -59,5 +59,17 @@ int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw);
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
2.43.0


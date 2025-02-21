Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 914D4A3F3AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:05:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 441F140D7E;
	Fri, 21 Feb 2025 12:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hdY2DuIARAII; Fri, 21 Feb 2025 12:05:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 207C440CFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740139534;
	bh=Kx/wPMI7+ojOJXHqlck3wrUKlCz+IeDYuxgIaGGHA7Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u3h357G673uOWf3+nMqUfMODzejv/u7bOd982p08uX7nSdn4WqySQ3iN4KiMFKKwl
	 l1X/a6d1eJMVDd7shjmfURjPsaTgIcfHgJKEybvMdQ2/NtsNZ7oA3P2dWqGvHH5wrs
	 /t2lT8jDVQCtJa5LF+8mmrvdkB73FsvAam/2DMf4fW3mM9uWct8P2c3fIa3AO27Hlk
	 /GhcwtOAI/S0HaAjQNwKYyd3+yNEfDpQhlNyl0njZYdC6IamgH3gvPHKj7s2/3WW7F
	 /25xIhgQD1L29oJKJ4/tE7T/9MJict+/JEqKV0OPzIA7fVucpKUu9ELgnfxeB4Z3nx
	 idfUfWfyXkBuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 207C440CFC;
	Fri, 21 Feb 2025 12:05:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D73E2D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC03181E19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uSd-Q7lCYlm3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:05:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE59A819BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE59A819BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE59A819BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:30 +0000 (UTC)
X-CSE-ConnectionGUID: XgB4GkB3SjW3RqdXAr/FSw==
X-CSE-MsgGUID: CRpV4mKnRh6QObVQi94aJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51599008"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51599008"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:05:30 -0800
X-CSE-ConnectionGUID: XSVTWHDbRKi5bThVybMQ8w==
X-CSE-MsgGUID: Q/45wypuTK+g8PihR7Ldbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116260322"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 21 Feb 2025 04:05:28 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Fri, 21 Feb 2025 12:51:10 +0100
Message-Id: <20250221115116.169158-10-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740139530; x=1771675530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iyeSJzYC4QsPS75TAW2XyMXtyuMNmIhdEag7Na/Wds0=;
 b=gnVQhqhVTfSsZryZqKVNzfBVo6biYsNUQQZM2QtcIDIhI7MU6SgIWLM5
 KBgmf0yc/1EpasOOwl3Ue1MfPmvI9DVpv7WwdZublRaGxVQOAYwbf00tf
 ZzBvoXD9he90U0rAIrqi7Yu3qn4N9r5vqeIZf37TTbIDqphIdrx/uzZES
 N4peWqzJYgiIXlG57UY0B6DqMcwMmJgzvn3y8AcTcQAE5l9RxCifQjMwg
 XBe6CE0UVJTG0zpJ3Rebj/pAVTEs9UibsChPW0zD+6clVggUVOnoyZNXr
 jtk5AhARfIpo72uLC9JMM/4OX7QrzcBwv7Tm8+P69qMIL4Ts9Xo757WjJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gnVQhqhV
Subject: [Intel-wired-lan] [PATCH iwl-next v5 09/15] ixgbe: add E610
 functions getting PBA and FW ver info
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

Introduce 2 E610 specific callbacks implementations:
-ixgbe_start_hw_e610() which expands the regular .start_hw callback with
getting FW version information
-ixgbe_read_pba_string_e610() which gets Product Board Assembly string

Extend EEPROM ops with new .read_pba_string in order to distinguish
generic one and the E610 one.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../ethernet/intel/ixgbe/devlink/devlink.c    |   5 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |   1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 181 +++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   2 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |   1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   1 +
 10 files changed, 190 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index c7790e55a527..b13a10d430eb 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -212,10 +212,7 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	if (err)
 		goto free_ctx;
 
-	err = ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
-	if (err)
-		goto free_ctx;
-
+	hw->eeprom.ops.read_pba_string(hw, ctx->buf, sizeof(ctx->buf));
 	err = devlink_info_version_fixed_put(req,
 					DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
 					ctx->buf);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 4aaaea3b5f8f..444da982593f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -1169,6 +1169,7 @@ static const struct ixgbe_eeprom_operations eeprom_ops_82598 = {
 	.calc_checksum          = &ixgbe_calc_eeprom_checksum_generic,
 	.validate_checksum	= &ixgbe_validate_eeprom_checksum_generic,
 	.update_checksum	= &ixgbe_update_eeprom_checksum_generic,
+	.read_pba_string        = &ixgbe_read_pba_string_generic,
 };
 
 static const struct ixgbe_phy_operations phy_ops_82598 = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index 964988b4d58b..d5b1b974b4a3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -2230,6 +2230,7 @@ static const struct ixgbe_eeprom_operations eeprom_ops_82599 = {
 	.calc_checksum		= &ixgbe_calc_eeprom_checksum_generic,
 	.validate_checksum	= &ixgbe_validate_eeprom_checksum_generic,
 	.update_checksum	= &ixgbe_update_eeprom_checksum_generic,
+	.read_pba_string        = &ixgbe_read_pba_string_generic,
 };
 
 static const struct ixgbe_phy_operations phy_ops_82599 = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 7beaf6ea57f9..5784d5d1896e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -332,6 +332,7 @@ int ixgbe_start_hw_generic(struct ixgbe_hw *hw)
  * Devices in the second generation:
  *     82599
  *     X540
+ *     E610
  **/
 int ixgbe_start_hw_gen2(struct ixgbe_hw *hw)
 {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index b34570b244d9..2b1549992754 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -343,6 +343,41 @@ void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode)
 	desc->flags = cpu_to_le16(IXGBE_ACI_FLAG_SI);
 }
 
+/**
+ * ixgbe_aci_get_fw_ver - Get the firmware version
+ * @hw: pointer to the HW struct
+ *
+ * Get the firmware version using ACI command (0x0001).
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_aci_get_fw_ver(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_ver *resp;
+	struct ixgbe_aci_desc desc;
+	int err;
+
+	resp = &desc.params.get_ver;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_ver);
+
+	err = ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+
+	if (!err) {
+		hw->fw_branch = resp->fw_branch;
+		hw->fw_maj_ver = resp->fw_major;
+		hw->fw_min_ver = resp->fw_minor;
+		hw->fw_patch = resp->fw_patch;
+		hw->fw_build = le32_to_cpu(resp->fw_build);
+		hw->api_branch = resp->api_branch;
+		hw->api_maj_ver = resp->api_major;
+		hw->api_min_ver = resp->api_minor;
+		hw->api_patch = resp->api_patch;
+	}
+
+	return err;
+}
+
 /**
  * ixgbe_aci_req_res - request a common resource
  * @hw: pointer to the HW struct
@@ -1410,6 +1445,32 @@ int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask)
 	return ixgbe_aci_get_link_info(hw, activate, NULL);
 }
 
+/**
+ * ixgbe_start_hw_e610 - Prepare hardware for Tx/Rx
+ * @hw: pointer to hardware structure
+ *
+ * Get firmware version and start the hardware using the generic
+ * start_hw() and ixgbe_start_hw_gen2() functions.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_start_hw_e610(struct ixgbe_hw *hw)
+{
+	int err;
+
+	err = ixgbe_aci_get_fw_ver(hw);
+	if (err)
+		return err;
+
+	err = ixgbe_start_hw_generic(hw);
+	if (err)
+		return err;
+
+	ixgbe_start_hw_gen2(hw);
+
+	return err;
+}
+
 /**
  * ixgbe_get_media_type_e610 - Gets media type
  * @hw: pointer to the HW struct
@@ -3369,9 +3430,126 @@ int ixgbe_reset_hw_e610(struct ixgbe_hw *hw)
 	return err;
 }
 
+/**
+ * ixgbe_get_pfa_module_tlv - Read sub module TLV from NVM PFA
+ * @hw: pointer to hardware structure
+ * @module_tlv: pointer to module TLV to return
+ * @module_tlv_len: pointer to module TLV length to return
+ * @module_type: module type requested
+ *
+ * Find the requested sub module TLV type from the Preserved Field
+ * Area (PFA) and returns the TLV pointer and length. The caller can
+ * use these to read the variable length TLV value.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
+				    u16 *module_tlv_len, u16 module_type)
+{
+	u16 pfa_len, pfa_ptr, pfa_end_ptr;
+	u16 next_tlv;
+	int err;
+
+	err = ixgbe_read_ee_aci_e610(hw, IXGBE_E610_SR_PFA_PTR, &pfa_ptr);
+	if (err)
+		return err;
+
+	err = ixgbe_read_ee_aci_e610(hw, pfa_ptr, &pfa_len);
+	if (err)
+		return err;
+
+	/* Starting with first TLV after PFA length, iterate through the list
+	 * of TLVs to find the requested one.
+	 */
+	next_tlv = pfa_ptr + 1;
+	pfa_end_ptr = pfa_ptr + pfa_len;
+	while (next_tlv < pfa_end_ptr) {
+		u16 tlv_sub_module_type, tlv_len;
+
+		/* Read TLV type */
+		err = ixgbe_read_ee_aci_e610(hw, next_tlv,
+					     &tlv_sub_module_type);
+		if (err)
+			break;
+
+		/* Read TLV length */
+		err = ixgbe_read_ee_aci_e610(hw, next_tlv + 1, &tlv_len);
+		if (err)
+			break;
+
+		if (tlv_sub_module_type == module_type) {
+			if (tlv_len) {
+				*module_tlv = next_tlv;
+				*module_tlv_len = tlv_len;
+				return 0;
+			}
+			return -EIO;
+		}
+		/* Check next TLV, i.e. current TLV pointer + length + 2 words
+		 * (for current TLV's type and length).
+		 */
+		next_tlv = next_tlv + tlv_len + 2;
+	}
+	/* Module does not exist */
+	return -ENODATA;
+}
+
+/**
+ * ixgbe_read_pba_string_e610 - Read PBA string from NVM
+ * @hw: pointer to hardware structure
+ * @pba_num: stores the part number string from the NVM
+ * @pba_num_size: part number string buffer length
+ *
+ * Read the part number string from the NVM.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_pba_string_e610(struct ixgbe_hw *hw, u8 *pba_num,
+				      u32 pba_num_size)
+{
+	u16 pba_tlv, pba_tlv_len;
+	u16 pba_word, pba_size;
+	int err;
+
+	err = ixgbe_get_pfa_module_tlv(hw, &pba_tlv, &pba_tlv_len,
+				       IXGBE_E610_SR_PBA_BLOCK_PTR);
+	if (err)
+		return err;
+
+	/* pba_size is the next word */
+	err = ixgbe_read_ee_aci_e610(hw, (pba_tlv + 2), &pba_size);
+	if (err)
+		return err;
+
+	if (pba_tlv_len < pba_size)
+		return -EINVAL;
+
+	/* Subtract one to get PBA word count (PBA Size word is included in
+	 * total size).
+	 */
+	pba_size--;
+
+	if (pba_num_size < (((u32)pba_size * 2) + 1))
+		return -EINVAL;
+
+	for (u16 i = 0; i < pba_size; i++) {
+		err = ixgbe_read_ee_aci_e610(hw, (pba_tlv + 2 + 1) + i,
+					     &pba_word);
+		if (err)
+			return err;
+
+		pba_num[(i * 2)] = FIELD_GET(IXGBE_E610_SR_PBA_BLOCK_MASK, pba_word);
+		pba_num[(i * 2) + 1] = pba_word & 0xFF;
+	}
+
+	pba_num[(pba_size * 2)] = '\0';
+
+	return err;
+}
+
 static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.init_hw			= ixgbe_init_hw_generic,
-	.start_hw			= ixgbe_start_hw_X540,
+	.start_hw			= ixgbe_start_hw_e610,
 	.clear_hw_cntrs			= ixgbe_clear_hw_cntrs_generic,
 	.enable_rx_dma			= ixgbe_enable_rx_dma_generic,
 	.get_mac_addr			= ixgbe_get_mac_addr_generic,
@@ -3436,6 +3614,7 @@ static const struct ixgbe_eeprom_operations eeprom_ops_e610 = {
 	.read				= ixgbe_read_ee_aci_e610,
 	.read_buffer			= ixgbe_read_ee_aci_buffer_e610,
 	.validate_checksum		= ixgbe_validate_eeprom_checksum_e610,
+	.read_pba_string		= ixgbe_read_pba_string_e610,
 };
 
 const struct ixgbe_info ixgbe_e610_info = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index a6bddea6b482..01334ac90999 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11600,7 +11600,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (expected_gts > 0)
 		ixgbe_check_minimum_link(adapter, expected_gts);
 
-	err = ixgbe_read_pba_string_generic(hw, part_str, sizeof(part_str));
+	err = hw->eeprom.ops.read_pba_string(hw, part_str, sizeof(part_str));
 	if (err)
 		strscpy(part_str, "Unknown", sizeof(part_str));
 	if (ixgbe_is_sfp(hw) && hw->phy.sfp_type != ixgbe_sfp_type_not_present)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 5fdf32d79d82..5f814f023573 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3446,6 +3446,8 @@ struct ixgbe_eeprom_operations {
 	int (*validate_checksum)(struct ixgbe_hw *, u16 *);
 	int (*update_checksum)(struct ixgbe_hw *);
 	int (*calc_checksum)(struct ixgbe_hw *);
+	int (*read_pba_string)(struct ixgbe_hw *hw, u8 *pba_num,
+			       u32 pba_num_size);
 };
 
 struct ixgbe_mac_operations {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index a1c963cf7127..aa063d39091a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -12,6 +12,7 @@
 /* Checksum and Shadow RAM pointers */
 #define IXGBE_E610_SR_NVM_CTRL_WORD		0x00
 #define IXGBE_E610_SR_PBA_BLOCK_PTR		0x16
+#define IXGBE_E610_SR_PBA_BLOCK_MASK		GENMASK(15, 8)
 #define IXGBE_E610_SR_NVM_DEV_STARTER_VER	0x18
 #define IXGBE_E610_SR_NVM_EETRACK_LO		0x2D
 #define IXGBE_E610_SR_NVM_EETRACK_HI		0x2E
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index 1fc821fb351a..f1ab95aa8c83 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -894,6 +894,7 @@ static const struct ixgbe_eeprom_operations eeprom_ops_X540 = {
 	.calc_checksum		= &ixgbe_calc_eeprom_checksum_X540,
 	.validate_checksum      = &ixgbe_validate_eeprom_checksum_X540,
 	.update_checksum        = &ixgbe_update_eeprom_checksum_X540,
+	.read_pba_string        = &ixgbe_read_pba_string_generic,
 };
 
 static const struct ixgbe_phy_operations phy_ops_X540 = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 277ceaf8a793..1d2acdb64f45 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -3959,6 +3959,7 @@ static const struct ixgbe_mac_operations mac_ops_x550em_a_fw = {
 	.validate_checksum	= &ixgbe_validate_eeprom_checksum_X550, \
 	.update_checksum	= &ixgbe_update_eeprom_checksum_X550, \
 	.calc_checksum		= &ixgbe_calc_eeprom_checksum_X550, \
+	.read_pba_string        = &ixgbe_read_pba_string_generic, \
 
 static const struct ixgbe_eeprom_operations eeprom_ops_X550 = {
 	X550_COMMON_EEP
-- 
2.31.1


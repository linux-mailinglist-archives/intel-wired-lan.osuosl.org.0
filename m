Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D71CB9E501A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 09:46:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ED264156C;
	Thu,  5 Dec 2024 08:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6zyqXDaUAhCg; Thu,  5 Dec 2024 08:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85B3D4155E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733388373;
	bh=nOIgwoxfELMtMiPUExAgAEbIE/r/aLy5CW3URXgehlY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=byznwFEvm7GiNAk4x2RcvwtieaemMw3ST75QoeIUjMAOugDkfLit2wD8lJg7v+lFY
	 7Y0Rhwu2KXAvl0PgqCto6W3Poja2filGY+pn5i8PonIbYp1WJZO410fiX/Y1x9ZG8Z
	 5k5I+9Cp+MM/O0tdzfTM+iOV7K5BOFPApnSHu2nr8KLH7ipPe6n9OjYzI1hV0aYzQ6
	 9HmQ5xFNo/7G+dSJtaZegDXAB3YXL0HcLmOFR9E3FuiftNHEYvD+QNxyU4uRk/p/w2
	 Ur43+twwKsOgSPbtul6rkUM4r3VGMK4DSf4qnAvx3SGThe81XCLwRxkN+7/ms9gYjD
	 nZRp6Di17Jnpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85B3D4155E;
	Thu,  5 Dec 2024 08:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B0DAEAE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9220E84718
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4pDgtrK1Ehtj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 08:46:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E10784709
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E10784709
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E10784709
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:46:09 +0000 (UTC)
X-CSE-ConnectionGUID: 8mPWwY1nQJaM4W0zyomUtg==
X-CSE-MsgGUID: D4Un/UzVT8WUPtK5zTo+kA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37623276"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37623276"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 00:46:00 -0800
X-CSE-ConnectionGUID: pwIcOZ30SZOZdW/Eum6AAg==
X-CSE-MsgGUID: exkBRT45SUaSrbj0vJ2rxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="94864176"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.2.76])
 by orviesa008.jf.intel.com with ESMTP; 05 Dec 2024 00:45:58 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  5 Dec 2024 09:44:47 +0100
Message-ID: <20241205084450.4651-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733388370; x=1764924370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nYyyWK5VO64NBKDhvje1N5/dct7wMkEN/0xxm13GV+Q=;
 b=gmA1ghPJolHnjmbW8diXhpV6q0qkF2+f/E3XnmdAW0O9zr+JKQh7fhHl
 U+wlWib4206fu9pAfCcGsZ3VMiycYWL7XBatsn7wrUZqOBcVUcg/AwDDe
 EVW5xZlYQCfRfDWAb3WooVHr+Ygi7HwxCmo84K8U3IfC6z3DHZfKKoA2C
 aAgSx2yYtIDEWmVdHgFE/Ixc+jRQrk5Gm50qB6j2gORwKBo1sJKVPla0+
 KP0shtE0EEjpU0y44WEZdAve8Zd8ckKaYwhtdOWcGOuWwuWp4OHMmzmMP
 /2+Tum+XS69jqg12bLrVqP/ueLqo9i+Fv75GOfwTX7B5RlmaniuT944nS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gmA1ghPJ
Subject: [Intel-wired-lan] [PATCH iwl-next v12 5/8] ixgbe: Add support for
 EEPROM dump in E610 device
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

Add low level support for EEPROM dump for the specified network device.

Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 95 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  7 ++
 3 files changed, 107 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 0542b4b..c729253 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2070,6 +2070,38 @@ int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw)
 	return ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
 }
 
+/**
+ * ixgbe_init_eeprom_params_e610 - Initialize EEPROM params
+ * @hw: pointer to hardware structure
+ *
+ * Initialize the EEPROM parameters ixgbe_eeprom_info within the ixgbe_hw
+ * struct in order to set up EEPROM access.
+ *
+ * Return: the operation exit code.
+ */
+int ixgbe_init_eeprom_params_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
+	u32 gens_stat;
+	u8 sr_size;
+
+	if (eeprom->type != ixgbe_eeprom_uninitialized)
+		return 0;
+
+	eeprom->type = ixgbe_flash;
+
+	gens_stat = IXGBE_READ_REG(hw, GLNVM_GENS);
+	sr_size = FIELD_GET(GLNVM_GENS_SR_SIZE_M, gens_stat);
+
+	/* Switching to words (sr_size contains power of 2). */
+	eeprom->word_size = BIT(sr_size) * IXGBE_SR_WORDS_IN_1KB;
+
+	hw_dbg(hw, "Eeprom params: type = %d, size = %d\n", eeprom->type,
+	       eeprom->word_size);
+
+	return 0;
+}
+
 /**
  * ixgbe_aci_get_netlist_node - get a node handle
  * @hw: pointer to the hw struct
@@ -2316,6 +2348,36 @@ int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
 	return err;
 }
 
+/**
+ * ixgbe_read_sr_buf_aci - Read Shadow RAM buffer via ACI
+ * @hw: pointer to the HW structure
+ * @offset: offset of the Shadow RAM words to read (0x000000 - 0x001FFF)
+ * @words: (in) number of words to read; (out) number of words actually read
+ * @data: words read from the Shadow RAM
+ *
+ * Read 16 bit words (data buf) from the Shadow RAM. Acquire/release the NVM
+ * ownership.
+ *
+ * Return: the operation exit code.
+ */
+int ixgbe_read_sr_buf_aci(struct ixgbe_hw *hw, u16 offset, u16 *words,
+			  u16 *data)
+{
+	u32 bytes = *words * 2;
+	int err;
+
+	err = ixgbe_read_flat_nvm(hw, offset * 2, &bytes, (u8 *)data, true);
+	if (err)
+		return err;
+
+	*words = bytes / 2;
+
+	for (int i = 0; i < *words; i++)
+		data[i] = le16_to_cpu(((__le16 *)data)[i]);
+
+	return 0;
+}
+
 /**
  * ixgbe_read_ee_aci_e610 - Read EEPROM word using the admin command.
  * @hw: pointer to hardware structure
@@ -2349,6 +2411,39 @@ int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data)
 	return err;
 }
 
+/**
+ * ixgbe_read_ee_aci_buffer_e610 - Read EEPROM words via ACI
+ * @hw: pointer to hardware structure
+ * @offset: offset of words in the EEPROM to read
+ * @words: number of words to read
+ * @data: words to read from the EEPROM
+ *
+ * Read 16 bit words from the EEPROM via the ACI. Initialize the EEPROM params
+ * prior to the read. Acquire/release the NVM ownership.
+ *
+ * Return: the operation exit code.
+ */
+int ixgbe_read_ee_aci_buffer_e610(struct ixgbe_hw *hw, u16 offset,
+				  u16 words, u16 *data)
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
+	err = ixgbe_read_sr_buf_aci(hw, offset, &words, data);
+	ixgbe_release_nvm(hw);
+
+	return err;
+}
+
 /**
  * ixgbe_validate_eeprom_checksum_e610 - Validate EEPROM checksum
  * @hw: pointer to hardware structure
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 412ddd1..9cfcfee 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -56,6 +56,7 @@ int ixgbe_identify_module_e610(struct ixgbe_hw *hw);
 int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw);
 int ixgbe_set_phy_power_e610(struct ixgbe_hw *hw, bool on);
 int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw);
+int ixgbe_init_eeprom_params_e610(struct ixgbe_hw *hw);
 int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
 			       struct ixgbe_aci_cmd_get_link_topo *cmd,
 			       u8 *node_part_number, u16 *node_handle);
@@ -69,7 +70,11 @@ int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw);
 int ixgbe_read_sr_word_aci(struct ixgbe_hw  *hw, u16 offset, u16 *data);
 int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
 			u8 *data, bool read_shadow_ram);
+int ixgbe_read_sr_buf_aci(struct ixgbe_hw *hw, u16 offset, u16 *words,
+			  u16 *data);
 int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data);
+int ixgbe_read_ee_aci_buffer_e610(struct ixgbe_hw *hw, u16 offset,
+				  u16 words, u16 *data);
 int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val);
 
 #endif /* _IXGBE_E610_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index ecc3fc8..8d06ade 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -12,11 +12,18 @@
 /* Checksum and Shadow RAM pointers */
 #define E610_SR_SW_CHECKSUM_WORD		0x3F
 
+/* Shadow RAM related */
+#define IXGBE_SR_WORDS_IN_1KB	512
+
 /* Firmware Status Register (GL_FWSTS) */
 #define GL_FWSTS		0x00083048 /* Reset Source: POR */
 #define GL_FWSTS_EP_PF0		BIT(24)
 #define GL_FWSTS_EP_PF1		BIT(25)
 
+/* Global NVM General Status Register */
+#define GLNVM_GENS		0x000B6100 /* Reset Source: POR */
+#define GLNVM_GENS_SR_SIZE_M	GENMASK(7, 5)
+
 /* Flash Access Register */
 #define IXGBE_GLNVM_FLA			0x000B6108 /* Reset Source: POR */
 #define IXGBE_GLNVM_FLA_LOCKED_S	6
-- 
2.43.0


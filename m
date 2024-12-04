Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A6A9E3CD4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 15:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A82CE81AC4;
	Wed,  4 Dec 2024 14:33:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dO5p3yjm4jyF; Wed,  4 Dec 2024 14:33:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90317814C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733322793;
	bh=ziQrdsz8KWqu9h6h308fL07iK6CneFFSeg0Tn/6Gxxw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gNc7SXD37gRqzUlVUPbQfMTAvmvXjeOWXYrKglJqI2iyfgHgeGck7EYBF9mlpkmXt
	 C1/F6VIxrMuIiQbHHcclcny1NqWZdN4WNsVYH+ame2xjcntk0J3PeMWjiwTam95/M+
	 PcfcfsZnKGkzKRWmNqq8JThgvKlIUvAqEbflvUjIhjPiY77C6LRf8HRiEFfgoSYDQZ
	 FufvDvKRHICAmG0gHfjQobhDaCAEhO5+/P1Hm1mfw7610ibANnL94sn3WxqtfONPeg
	 DHyb+0fxyBrCJ3qjfCsJdu3Ca5FWCuviu+voCpeK4hP2MggxLyJEj40d0HBJ2tPFB2
	 N9d/VQQe36lXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90317814C9;
	Wed,  4 Dec 2024 14:33:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 775DE1DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59B5960741
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dbaCk606m3xd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 14:33:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 780B36073B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 780B36073B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 780B36073B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:33:09 +0000 (UTC)
X-CSE-ConnectionGUID: jBv0UfJpSj+IFyGpA/+YPg==
X-CSE-MsgGUID: FyuXbKBbQh6GjVUlaX3XaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44621847"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44621847"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:33:10 -0800
X-CSE-ConnectionGUID: XaXOjI38R6i31IUn3ziSgQ==
X-CSE-MsgGUID: GcRW3XuTRm6PeWKXoMuStw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93456584"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.87.141])
 by fmviesa006.fm.intel.com with ESMTP; 04 Dec 2024 06:33:08 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Wed,  4 Dec 2024 15:31:09 +0100
Message-ID: <20241204143112.29411-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241204143112.29411-1-piotr.kwapulinski@intel.com>
References: <20241204143112.29411-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733322790; x=1764858790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TZd6v4WISf8ar3vaZLQT0ooYqtYeGrgBhdjf32uWuBs=;
 b=TDrs7lF6j03kej3q1fIfeanAKEo2IG3MMann8n8EwaCQGBVS8ZoloFDp
 mgXUR2+dnIGhSRoIuIFgEXp81EQVJDMBoHduJ1uap+YDpTUw6whVZbxmj
 8AtjuM1vuOdmDXpFbi0e2vKsrirtujXhfBLUpb1YQOUMwTONQrAj/L/dJ
 p2WDyFCPUlEQOIteLtqZdLVFtxLXjs2F93Av6HlGQbD5WUh7MivqkvGWd
 adFP6eE+MuAvIwS8mbks1WSXovMo5q8AdDoieNChNc7waJG/WS4fiqeYE
 h8mDzhVdMDG+0FPXamm/5QX88wyVkkGURGp9HEK8qJbPMDBIK6BvE/L/B
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TDrs7lF6
Subject: [Intel-wired-lan] [PATCH iwl-next v11 5/8] ixgbe: Add support for
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
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 93 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  8 ++
 3 files changed, 106 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 0542b4b..503a047 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2070,6 +2070,38 @@ int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw)
 	return ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
 }
 
+/**
+ * ixgbe_init_eeprom_params_E610 - Initialize EEPROM params
+ * @hw: pointer to hardware structure
+ *
+ * Initialize the EEPROM parameters ixgbe_eeprom_info within the ixgbe_hw
+ * struct in order to set up EEPROM access.
+ *
+ * Return: the operation exit code
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
@@ -2316,6 +2348,34 @@ int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
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
+ * Return: the operation exit code
+ */
+int ixgbe_read_sr_buf_aci(struct ixgbe_hw *hw, u16 offset, u16 *words,
+			  u16 *data)
+{
+	u32 bytes = *words * 2, i;
+	int err;
+
+	err = ixgbe_read_flat_nvm(hw, offset * 2, &bytes, (u8 *)data, true);
+
+	*words = bytes / 2;
+
+	for (i = 0; i < *words; i++)
+		data[i] = le16_to_cpu(((__le16 *)data)[i]);
+
+	return err;
+}
+
 /**
  * ixgbe_read_ee_aci_e610 - Read EEPROM word using the admin command.
  * @hw: pointer to hardware structure
@@ -2349,6 +2409,39 @@ int ixgbe_read_ee_aci_e610(struct ixgbe_hw *hw, u16 offset, u16 *data)
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
+ * Return: the operation exit code
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
index ecc3fc8..9dba8b5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -12,11 +12,19 @@
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
+#define GLNVM_GENS_SR_SIZE_S	5
+#define GLNVM_GENS_SR_SIZE_M	GENMASK(7, 5)
+
 /* Flash Access Register */
 #define IXGBE_GLNVM_FLA			0x000B6108 /* Reset Source: POR */
 #define IXGBE_GLNVM_FLA_LOCKED_S	6
-- 
2.43.0


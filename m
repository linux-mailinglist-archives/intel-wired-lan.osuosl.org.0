Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A23A5DD8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DE3B82A87;
	Wed, 12 Mar 2025 13:13:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAAcyWFXtngv; Wed, 12 Mar 2025 13:13:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B60F81FE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785198;
	bh=BPwIJqDtJbCsCcMEN+BcYoUXujK+JyFRDGUZbp9RRBs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IrCgmgj3r+Ermr1akvgHcu6qf30j48VttSTH4QypXjT7F8ehUot+mCM2BTSBtRGiB
	 GoEV21SFhkM2xhOepho6jRuugsAmFJK3OLsiL3U2utmtX5UnRpnydjoUHGgOo+5b7a
	 Xl4RlQv4UN5MHOQhJbV/ViE7sLX8++WfX1HWYZ0bPe8U28If1MWlgrQlJWKGnhkS48
	 yZfIu844dGRvDiFmwoMs2LUmGcteqeYf3zkf3KLnorryNXWBK0cSJ2ki/gG5mCqHJ2
	 FU4U0ufzdTBj7BMWRQ9opn2iWDkmLguJ17ogJx1stkZj/oejdaGsLuvaWvxhDixppm
	 8VZhgK3Uw+G9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B60F81FE5;
	Wed, 12 Mar 2025 13:13:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 242C4943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3E8E60853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kyC5ZaLTWBRf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:13:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2899960BD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2899960BD5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2899960BD5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:12 +0000 (UTC)
X-CSE-ConnectionGUID: kb0fvrRkR7isOFVUCCxwTw==
X-CSE-MsgGUID: Ad5h2S54SZWYO9J6mdW/Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510711"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510711"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:13:12 -0700
X-CSE-ConnectionGUID: xxKHtOxIQq6ad4Z3/gwKiA==
X-CSE-MsgGUID: PVLsXhhASOWiEpl8262J0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542136"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:13:10 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Bharath R <bharath.r@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed, 12 Mar 2025 13:58:35 +0100
Message-Id: <20250312125843.347191-8-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785192; x=1773321192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tZqT6hXO3KMp5HpgM2zBqqKdfuo2wkULaEL7pocaB38=;
 b=lgEWSIIoSUIVWtNQsEqHmfrPYFEFHf60dt38ID/oLN72ZQUM0GoQYZ9r
 3l9j+NH37eD014AnChRVIXaDtViM4w3VaDaNRGyU2kXc5bWeN6/fUNyya
 NSd5Vi06suPjl0Xo+vTdvnYL+o5Xg9Dxz5VGzJ1pB7Y76ZJ0lZgLKcczs
 Fcy86NOyibtHuT6nKsx5S/yDUEunX1UVudnRsk4LAmMQYgj9CvDLEhToH
 X1WtINbydAowLewT+wzzczXUh1yB1fIz6uBgwDkhseQJiQFjxShXYZwtT
 BX4BRP2d1mAeAUfIf93oUWgoSaM0cV4pzs/xC+FwvTI9bK8XhCc6VSuBG
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lgEWSIIo
Subject: [Intel-wired-lan] [PATCH iwl-next v7 07/15] ixgbe: read the netlist
 version information
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

Add functions reading the netlist version info and use them
as a part of the setting NVM info procedure.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Tested-by: Bharath R <bharath.r@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 112 ++++++++++++++++++
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  33 ++++++
 2 files changed, 145 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index bad4bc04bb66..b34570b244d9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2582,6 +2582,33 @@ static int ixgbe_read_nvm_module(struct ixgbe_hw *hw,
 	return err;
 }
 
+/**
+ * ixgbe_read_netlist_module - Read data from the netlist module area
+ * @hw: pointer to the HW structure
+ * @bank: whether to read from the active or inactive module
+ * @offset: offset into the netlist to read from
+ * @data: storage for returned word value
+ *
+ * Read a word from the specified netlist bank.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_read_netlist_module(struct ixgbe_hw *hw,
+				     enum ixgbe_bank_select bank,
+				     u32 offset, u16 *data)
+{
+	__le16 data_local;
+	int err;
+
+	err = ixgbe_read_flash_module(hw, bank, IXGBE_E610_SR_NETLIST_BANK_PTR,
+				      offset * sizeof(data_local),
+				      (u8 *)&data_local, sizeof(data_local));
+	if (!err)
+		*data = le16_to_cpu(data_local);
+
+	return err;
+}
+
 /**
  * ixgbe_read_orom_module - Read from the active Option ROM module
  * @hw: pointer to the HW structure
@@ -2887,6 +2914,86 @@ static int ixgbe_get_nvm_ver_info(struct ixgbe_hw *hw,
 	return 0;
 }
 
+/**
+ * ixgbe_get_netlist_info - Read the netlist version information
+ * @hw: pointer to the HW struct
+ * @bank: whether to read from the active or inactive flash bank
+ * @netlist: pointer to netlist version info structure
+ *
+ * Get the netlist version information from the requested bank. Reads the Link
+ * Topology section to find the Netlist ID block and extract the relevant
+ * information into the netlist version structure.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_get_netlist_info(struct ixgbe_hw *hw,
+				  enum ixgbe_bank_select bank,
+				  struct ixgbe_netlist_info *netlist)
+{
+	u16 module_id, length, node_count, i;
+	u16 *id_blk;
+	int err;
+
+	err = ixgbe_read_netlist_module(hw, bank, IXGBE_NETLIST_TYPE_OFFSET,
+					&module_id);
+	if (err)
+		return err;
+
+	if (module_id != IXGBE_NETLIST_LINK_TOPO_MOD_ID)
+		return -EIO;
+
+	err = ixgbe_read_netlist_module(hw, bank, IXGBE_LINK_TOPO_MODULE_LEN,
+					&length);
+	if (err)
+		return err;
+
+	/* Sanity check that we have at least enough words to store the
+	 * netlist ID block.
+	 */
+	if (length < IXGBE_NETLIST_ID_BLK_SIZE)
+		return -EIO;
+
+	err = ixgbe_read_netlist_module(hw, bank, IXGBE_LINK_TOPO_NODE_COUNT,
+					&node_count);
+	if (err)
+		return err;
+
+	node_count &= IXGBE_LINK_TOPO_NODE_COUNT_M;
+
+	id_blk = kcalloc(IXGBE_NETLIST_ID_BLK_SIZE, sizeof(*id_blk), GFP_KERNEL);
+	if (!id_blk)
+		return -ENOMEM;
+
+	/* Read out the entire Netlist ID Block at once. */
+	err = ixgbe_read_flash_module(hw, bank, IXGBE_E610_SR_NETLIST_BANK_PTR,
+				      IXGBE_NETLIST_ID_BLK_OFFSET(node_count) *
+				      sizeof(*id_blk), (u8 *)id_blk,
+				      IXGBE_NETLIST_ID_BLK_SIZE *
+				      sizeof(*id_blk));
+	if (err)
+		goto free_id_blk;
+
+	for (i = 0; i < IXGBE_NETLIST_ID_BLK_SIZE; i++)
+		id_blk[i] = le16_to_cpu(((__le16 *)id_blk)[i]);
+
+	netlist->major = id_blk[IXGBE_NETLIST_ID_BLK_MAJOR_VER_HIGH] << 16 |
+			 id_blk[IXGBE_NETLIST_ID_BLK_MAJOR_VER_LOW];
+	netlist->minor = id_blk[IXGBE_NETLIST_ID_BLK_MINOR_VER_HIGH] << 16 |
+			 id_blk[IXGBE_NETLIST_ID_BLK_MINOR_VER_LOW];
+	netlist->type = id_blk[IXGBE_NETLIST_ID_BLK_TYPE_HIGH] << 16 |
+			id_blk[IXGBE_NETLIST_ID_BLK_TYPE_LOW];
+	netlist->rev = id_blk[IXGBE_NETLIST_ID_BLK_REV_HIGH] << 16 |
+		       id_blk[IXGBE_NETLIST_ID_BLK_REV_LOW];
+	netlist->cust_ver = id_blk[IXGBE_NETLIST_ID_BLK_CUST_VER];
+	/* Read the left most 4 bytes of SHA */
+	netlist->hash = id_blk[IXGBE_NETLIST_ID_BLK_SHA_HASH_WORD(15)] << 16 |
+			id_blk[IXGBE_NETLIST_ID_BLK_SHA_HASH_WORD(14)];
+
+free_id_blk:
+	kfree(id_blk);
+	return err;
+}
+
 /**
  * ixgbe_get_flash_data - get flash data
  * @hw: pointer to the HW struct
@@ -2939,6 +3046,11 @@ int ixgbe_get_flash_data(struct ixgbe_hw *hw)
 
 	err = ixgbe_get_orom_ver_info(hw, IXGBE_ACTIVE_FLASH_BANK,
 				      &flash->orom);
+	if (err)
+		return err;
+
+	err = ixgbe_get_netlist_info(hw, IXGBE_ACTIVE_FLASH_BANK,
+				     &flash->netlist);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 9b04075edd4a..a1c963cf7127 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -45,6 +45,39 @@
 /* Shadow RAM related */
 #define IXGBE_SR_WORDS_IN_1KB	512
 
+/* The Netlist ID Block is located after all of the Link Topology nodes. */
+#define IXGBE_NETLIST_ID_BLK_SIZE		0x30
+#define IXGBE_NETLIST_ID_BLK_OFFSET(n)		IXGBE_NETLIST_LINK_TOPO_OFFSET(0x0004 + 2 * (n))
+
+/* netlist ID block field offsets (word offsets) */
+#define IXGBE_NETLIST_ID_BLK_MAJOR_VER_LOW	0x02
+#define IXGBE_NETLIST_ID_BLK_MAJOR_VER_HIGH	0x03
+#define IXGBE_NETLIST_ID_BLK_MINOR_VER_LOW	0x04
+#define IXGBE_NETLIST_ID_BLK_MINOR_VER_HIGH	0x05
+#define IXGBE_NETLIST_ID_BLK_TYPE_LOW		0x06
+#define IXGBE_NETLIST_ID_BLK_TYPE_HIGH		0x07
+#define IXGBE_NETLIST_ID_BLK_REV_LOW		0x08
+#define IXGBE_NETLIST_ID_BLK_REV_HIGH		0x09
+#define IXGBE_NETLIST_ID_BLK_SHA_HASH_WORD(n)	(0x0A + (n))
+#define IXGBE_NETLIST_ID_BLK_CUST_VER		0x2F
+
+/* The Link Topology Netlist section is stored as a series of words. It is
+ * stored in the NVM as a TLV, with the first two words containing the type
+ * and length.
+ */
+#define IXGBE_NETLIST_LINK_TOPO_MOD_ID		0x011B
+#define IXGBE_NETLIST_TYPE_OFFSET		0x0000
+#define IXGBE_NETLIST_LEN_OFFSET		0x0001
+
+/* The Link Topology section follows the TLV header. When reading the netlist
+ * using ixgbe_read_netlist_module, we need to account for the 2-word TLV
+ * header.
+ */
+#define IXGBE_NETLIST_LINK_TOPO_OFFSET(n)	((n) + 2)
+#define IXGBE_LINK_TOPO_MODULE_LEN	IXGBE_NETLIST_LINK_TOPO_OFFSET(0x0000)
+#define IXGBE_LINK_TOPO_NODE_COUNT	IXGBE_NETLIST_LINK_TOPO_OFFSET(0x0001)
+#define IXGBE_LINK_TOPO_NODE_COUNT_M		GENMASK_ULL(9, 0)
+
 /* Firmware Status Register (GL_FWSTS) */
 #define GL_FWSTS		0x00083048 /* Reset Source: POR */
 #define GL_FWSTS_EP_PF0		BIT(24)
-- 
2.31.1


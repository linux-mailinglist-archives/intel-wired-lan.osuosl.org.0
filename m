Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E962A32702
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:28:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5481426CF;
	Wed, 12 Feb 2025 13:28:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uzcG7VCOdr6Q; Wed, 12 Feb 2025 13:28:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF9B742594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739366891;
	bh=UVWncjLGWrn8aIBKawEvGlbQk1ME/EdTQBFTRnoKsIM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hn+t5xr3M8fICJD3Ns5KMRrM+V/HmUa/6NI5lOtWEi+55lgZnWOw+cnvQjT3c6OJJ
	 HWn/dG7eckLqPFoi+or5RIL6JZmsU/P1I6pS2uu6BFBbxY+F8KTEkfDyiM3kwAbqhD
	 zD4tEdbBlicXI/nm9TpCD/Pvx3gMxNEqwq8YCJGhuX7kmxd/Wir/cGoNePxFdAjhVz
	 IKG/8vYh8dsEA9V5QCG83A7HT3++8tDpJx2WKX+KrHZZKFQDTmuMndsG5WNbtHmPFE
	 ndorswMg3JQkpkswGIbt41B0NXVa/guR470WdwtDJWdud5WcCDzUhSK/vSr6Upf1JI
	 xgz3uD+Lb8R/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF9B742594;
	Wed, 12 Feb 2025 13:28:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 836ACC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6833E60FAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m2fd07XhjLkG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:28:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5FE3760BBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FE3760BBB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FE3760BBB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:07 +0000 (UTC)
X-CSE-ConnectionGUID: rkL291BSQsmUfjJxSpWe1Q==
X-CSE-MsgGUID: fhyQlS9nT8K7E+EEe+Yj2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50665543"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50665543"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:28:07 -0800
X-CSE-ConnectionGUID: MR8wYB5vR5aek/ILOiyS2g==
X-CSE-MsgGUID: 4XbbqQtDQKiy1v92hrQBmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="117830673"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2025 05:28:04 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 horms@kernel.org, Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed, 12 Feb 2025 14:14:05 +0100
Message-Id: <20250212131413.91787-7-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366887; x=1770902887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B5Wl0asnVYwaiT18jKtPr8S6EHLVgSc7XerVfSTBbko=;
 b=Phw+UzKSR55BDQxaTJ1QjdhawQ+75SpYiJNaurHvMvrC2diwMyi9ZfNL
 BenbE21KNf8IXukwQP3ECsokcFBmWx5g7ZP2zCv8sMRqIAp/824iwb8+A
 1B2NczsPn4Cl1Pq6isV8eUge5lLpP5wKqq4WAj782ZMW3SO3RxfNVLOUP
 9uwvzm4ymWWKF3y5lsCHcbyyfl3TBE58KKXWw8QQukx6KHab6m8tz/EXc
 P7jIlPqJ3MabVqwXRqy4fYlqyCy7NBTRrWX79ZVWQAwwm0fGrydJk9KFr
 OcXjwMtu95y/09MTKIBJulYngFFIeBf7/I8Tb+Ls1nKGPilxzsbO9YwiD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Phw+UzKS
Subject: [Intel-wired-lan] [PATCH iwl-next v3 06/14] ixgbe: read the netlist
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
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 112 ++++++++++++++++++
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  33 ++++++
 2 files changed, 145 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 236c804f03c6..e49e699fb141 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2579,6 +2579,33 @@ static int ixgbe_read_nvm_module(struct ixgbe_hw *hw,
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
@@ -2884,6 +2911,86 @@ static int ixgbe_get_nvm_ver_info(struct ixgbe_hw *hw,
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
@@ -2936,6 +3043,11 @@ int ixgbe_get_flash_data(struct ixgbe_hw *hw)
 
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


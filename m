Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 442DCA49402
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 09:51:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65ECF829F2;
	Fri, 28 Feb 2025 08:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TAyZFaimEgvf; Fri, 28 Feb 2025 08:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C6C82716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740732705;
	bh=QqtFnMFtru+8CpCB5AkcZZrTzjX1E1+zdXFlKOx6z1Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=De8WaRMvd4oOWb4MJbOjB+/XCa8GjPS3MypP2MD5GmT5+oHvCBgGpYdCFtOG/V/LH
	 iy0EzYqYQBG7/YQJpRRXDIhWu0thOt7SGd5I5oauRa9+pNTfpGa4qDVy4LIayNRO7x
	 O6ocqaKURZfqUPNoTYoSyTySfBx6EIQMIQebQfgLnaMWu91mvruxx7iPVCO02/HyDn
	 I5HyWp53g5CVCDFaf2Iu+LV6t7jlU9v+zSlax50E1B3LnqlOnH+hpC0QEaKilg2UpN
	 Onze+UJi4OuHVyLX3tPJXK7Drak74CaOdlz4nCzgPK6G+l4AepcQ5sO/WAmNPL8j9G
	 f4SAXLtXRtUVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C6C82716;
	Fri, 28 Feb 2025 08:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F031E68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFDA36065A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W7MRvHMXrsL5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 08:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 170B9600CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 170B9600CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 170B9600CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 08:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: zkWDThnHQS2+CFsIK9pVBg==
X-CSE-MsgGUID: IJk37GQzS2asPdEJ3kSXLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40829557"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="40829557"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 00:51:41 -0800
X-CSE-ConnectionGUID: iiZDc//eQ6aJD3QFbRl9fA==
X-CSE-MsgGUID: b+4yKYivR4y6HxNxql9EZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="121894641"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa005.fm.intel.com with ESMTP; 28 Feb 2025 00:51:39 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Fri, 28 Feb 2025 09:37:38 +0100
Message-Id: <20250228083739.209076-4-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
References: <20250228083739.209076-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740732701; x=1772268701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rgixsUl27VADcdOhGDTAl+nV6W6pXL8DmHJiNSyjst0=;
 b=RAWx7H8ax0mVGFvM5CXSGX6uZMI+f9QinqoV6ViuOTF177PST4k5O+4C
 Hs6DLBe4OmAauMhx5Qm7OzQel+TMuRGUWObmlFoSXqL/VxOFfpplDv/Le
 dlkWnAY2BQBQXEC+oU14LrcDJmYj65Ol8KlSzC3rndapSLzNGZVUgmKXD
 MV3t2u0xfxGgnrl2hRZucTE4RAcPP3dBpB3srde7W37mu+ImKk1ozfI3B
 WAfrGWAzsaFEBgOXPYJsxituFsI/G98gMKYhZXfO+MKTBgjPXTxWlCJLw
 hSocnsEe9bAQLH9Izj4s5hfWnBWSYcpmNuJK/XGwHn9Fqro8NsTcVBvfJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RAWx7H8a
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ixgbe: add E610
 .set_phys_id() callback implementation
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

Legacy implementation of .set_phys_id() ethtool callback is not
applicable for E610 device.

Add new implementation which uses 0x06E9 command by calling
ixgbe_aci_set_port_id_led().

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 29 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 +++++++++++++-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 13 +++++++++
 4 files changed, 64 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 7b0a405a305e..f11cd13c18f4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1485,6 +1485,35 @@ static int ixgbe_start_hw_e610(struct ixgbe_hw *hw)
 	return err;
 }
 
+/**
+ * ixgbe_aci_set_port_id_led - set LED value for the given port
+ * @hw: pointer to the HW struct
+ * @orig_mode: set LED original mode
+ *
+ * Set LED value for the given port (0x06E9)
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_set_port_id_led(struct ixgbe_hw *hw, bool orig_mode)
+{
+	struct ixgbe_aci_cmd_set_port_id_led *cmd;
+	struct ixgbe_aci_desc desc;
+
+	cmd = &desc.params.set_port_id_led;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_port_id_led);
+
+	cmd->lport_num = (u8)hw->bus.func;
+	cmd->lport_num_valid = IXGBE_ACI_PORT_ID_PORT_NUM_VALID;
+
+	if (orig_mode)
+		cmd->ident_mode = IXGBE_ACI_PORT_IDENT_LED_ORIG;
+	else
+		cmd->ident_mode = IXGBE_ACI_PORT_IDENT_LED_BLINK;
+
+	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+}
+
 /**
  * ixgbe_get_media_type_e610 - Gets media type
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index b668ff0ae2e5..c97623fb10ac 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -36,6 +36,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 			    struct ixgbe_link_status *link);
 int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask);
 int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask);
+int ixgbe_aci_set_port_id_led(struct ixgbe_hw *hw, bool orig_mode);
 enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw);
 int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 			  bool autoneg_wait);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index abc8c279192a..35a0d3e5ac4a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2450,6 +2450,26 @@ static int ixgbe_set_phys_id(struct net_device *netdev,
 	return 0;
 }
 
+static int ixgbe_set_phys_id_e610(struct net_device *netdev,
+				  enum ethtool_phys_id_state state)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	bool led_active;
+
+	switch (state) {
+	case ETHTOOL_ID_ACTIVE:
+		led_active = true;
+		break;
+	case ETHTOOL_ID_INACTIVE:
+		led_active = false;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return ixgbe_aci_set_port_id_led(&adapter->hw, !led_active);
+}
+
 static int ixgbe_get_coalesce(struct net_device *netdev,
 			      struct ethtool_coalesce *ec,
 			      struct kernel_ethtool_coalesce *kernel_coal,
@@ -3715,7 +3735,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.set_msglevel           = ixgbe_set_msglevel,
 	.self_test              = ixgbe_diag_test,
 	.get_strings            = ixgbe_get_strings,
-	.set_phys_id            = ixgbe_set_phys_id,
+	.set_phys_id            = ixgbe_set_phys_id_e610,
 	.get_sset_count         = ixgbe_get_sset_count,
 	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
 	.get_coalesce           = ixgbe_get_coalesce,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index bea94e5ccb73..17b6f14090b9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -223,6 +223,7 @@ enum ixgbe_aci_opc {
 	ixgbe_aci_opc_write_mdio			= 0x06E5,
 	ixgbe_aci_opc_set_gpio_by_func			= 0x06E6,
 	ixgbe_aci_opc_get_gpio_by_func			= 0x06E7,
+	ixgbe_aci_opc_set_port_id_led			= 0x06E9,
 	ixgbe_aci_opc_set_gpio				= 0x06EC,
 	ixgbe_aci_opc_get_gpio				= 0x06ED,
 	ixgbe_aci_opc_sff_eeprom			= 0x06EE,
@@ -808,6 +809,17 @@ struct ixgbe_aci_cmd_get_link_topo_pin {
 	u8 rsvd[7];
 };
 
+/* Set Port Identification LED (direct, 0x06E9) */
+struct ixgbe_aci_cmd_set_port_id_led {
+	u8 lport_num;
+	u8 lport_num_valid;
+#define IXGBE_ACI_PORT_ID_PORT_NUM_VALID	BIT(0)
+	u8 ident_mode;
+#define IXGBE_ACI_PORT_IDENT_LED_ORIG		0
+#define IXGBE_ACI_PORT_IDENT_LED_BLINK		BIT(0)
+	u8 rsvd[13];
+};
+
 /* Read/Write SFF EEPROM command (indirect 0x06EE) */
 struct ixgbe_aci_cmd_sff_eeprom {
 	u8 lport_num;
@@ -985,6 +997,7 @@ struct ixgbe_aci_desc {
 		struct ixgbe_aci_cmd_restart_an restart_an;
 		struct ixgbe_aci_cmd_get_link_status get_link_status;
 		struct ixgbe_aci_cmd_set_event_mask set_event_mask;
+		struct ixgbe_aci_cmd_set_port_id_led set_port_id_led;
 		struct ixgbe_aci_cmd_get_link_topo get_link_topo;
 		struct ixgbe_aci_cmd_get_link_topo_pin get_link_topo_pin;
 		struct ixgbe_aci_cmd_sff_eeprom read_write_sff_param;
-- 
2.31.1


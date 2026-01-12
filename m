Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D514D1311B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA9D384EF6;
	Mon, 12 Jan 2026 14:18:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wh3F8Aqc-wWa; Mon, 12 Jan 2026 14:18:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B882284EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227530;
	bh=/CQXx16+lJyjTTRAT8mhTW2m/Fwgs4dxhSnbMIB19A4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vjyCHo2HlN72UTom0h2XxtTTFMdTqqx1932XZf9p3YGnhLFq8zGHvFktq9Spz4nub
	 TCYQ+OiEaIVXvxDNiKdob9ItW9VLArHxSpiyv7VJvwtetP5pvmubKJmPuE5PyKvGLP
	 mA+47w2FC04iA8sfQEGUmJmj8tv1EB/u9OkkbV1kvleZwATNVyLpQfgfs6ic5kOpta
	 TFMCnLv4+rBNli0OlsDc3Sgd6UCz/Tgu8MenPMx4TO+WSeE3y5zk0sfv9wLE9w4CBs
	 HNihlFbKMfztsBmzAWUoMOiaGeRbzWBHS5cP9fP+PTW0bjUlgNKr3ws2Zgs5ZHQtVw
	 Jg8ADdZNWYrpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B882284EDF;
	Mon, 12 Jan 2026 14:18:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75C0018D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CD6F6F4FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eQbkD-trilYO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D5C16F4E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D5C16F4E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D5C16F4E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:48 +0000 (UTC)
X-CSE-ConnectionGUID: 1e+IEtAZTtiS63lOAi3wfw==
X-CSE-MsgGUID: DyG3eGVARfWUvkVjZMLizg==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352298"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352298"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:48 -0800
X-CSE-ConnectionGUID: edYdEAgZTiiUEzrd8CGXmA==
X-CSE-MsgGUID: AaVhx20GR1yBKM8z1Z9gWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355654"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:47 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 12 Jan 2026 15:01:08 +0100
Message-Id: <20260112140108.1173835-8-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227528; x=1799763528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YdURuEjmkEvSFcp1+L1+0KyYASXqK9qsGaH69y/PfR8=;
 b=B/NDKYAaYZ5OPn9sA3gocLT5gFWH5qy2rF0RZNxaasi4xBigKGXsFJGQ
 GQegTg4eQbgA3ss0wEOpgQlbW3w79kxzAuV0AcXPaF9bwn1DU96DR5NwP
 Owa1I2f+3BEa8cXYE4Hg99hCc7oKHyCfP4GkVfNnpKcKJ/PAtE86YRqsg
 zDgu8zhry3WHWwuCgtLbwjOjDFke6TrF+Fe7ZysWXR8vHbfxTPkVL4Ek+
 UaP7KUDP1KE/ot2nVtwKS8gwm19wLRQ0RDjxclPom/UIfdj/pY/QtQeWN
 qd5cd4eB7vrmezwqhqmh0Kx9E8xak3ZT4AxTwkz43bX8e7ALlV5sE1rFz
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B/NDKYAa
Subject: [Intel-wired-lan] [PATCH iwl-next v1 7/7] ixgbe: E610: add EEE
 support
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

Add E610 specific implementation of .get_eee() and .set_eee() ethtool
callbacks.

Introduce ixgbe_setup_eee_e610() which is used to set EEE config
on E610 device via ixgbe_aci_set_phy_cfg() (0x0601 ACI command).
Assign it to dedicated mac operation.

E610 devices support EEE feature specifically for 2.5, 5 and 10G link
speeds. When user try to set EEE for unsupported speeds log it.
This limitation also affects any runtime link configuration changes so when
link speed changes and EEE is enabled, check whether the feature can remain
enabled.

Setting timer and setting EEE advertised speeds are not yet supported.

EEE shall be enabled by default for E610 devices.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  44 +++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 154 +++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  36 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   1 +
 6 files changed, 235 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 9f52da4ec711..8104f953aa0c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -984,6 +984,8 @@ int ixgbe_init_interrupt_scheme(struct ixgbe_adapter *adapter);
 bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
 			 u16 subdevice_id);
 void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter);
+bool ixgbe_is_eee_link_speed_supported_e610(struct ixgbe_adapter *adapter,
+					    bool print_msg);
 void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter);
 #ifdef CONFIG_PCI_IOV
 void ixgbe_full_sync_mac_table(struct ixgbe_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 6818504a25f6..6a6aa2b8f4a7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2013,6 +2013,49 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 	return 0;
 }
 
+/**
+ * ixgbe_setup_eee_e610 - Enable/disable EEE support
+ * @hw: pointer to the HW structure
+ * @enable_eee: boolean flag to enable EEE
+ *
+ * Enable/disable EEE based on @enable_eee.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_setup_eee_e610(struct ixgbe_hw *hw, bool enable_eee)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data phy_caps = {};
+	struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg = {};
+	u16 eee_cap = 0;
+	int err;
+
+	err = ixgbe_aci_get_phy_caps(hw, false,
+		IXGBE_ACI_REPORT_ACTIVE_CFG, &phy_caps);
+	if (err)
+		return err;
+
+	ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
+	phy_cfg.caps |= (IXGBE_ACI_PHY_ENA_LINK |
+			IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT);
+
+	if (enable_eee) {
+		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_100_FULL)
+			eee_cap |= IXGBE_ACI_PHY_EEE_EN_100BASE_TX;
+		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_1GB_FULL)
+			eee_cap |= IXGBE_ACI_PHY_EEE_EN_1000BASE_T;
+		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_2_5GB_FULL)
+			eee_cap |= IXGBE_ACI_PHY_EEE_EN_2_5GBASE_T;
+		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_5GB_FULL)
+			eee_cap |= IXGBE_ACI_PHY_EEE_EN_5GBASE_T;
+		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_10GB_FULL)
+			eee_cap |= IXGBE_ACI_PHY_EEE_EN_10GBASE_T;
+	}
+
+	phy_cfg.eee_cap = cpu_to_le16(eee_cap);
+
+	return ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
+}
+
 /**
  * ixgbe_identify_module_e610 - Identify SFP module type
  * @hw: pointer to hardware structure
@@ -3973,6 +4016,7 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.fw_rollback_mode		= ixgbe_fw_rollback_mode_e610,
 	.get_nvm_ver			= ixgbe_get_active_nvm_ver,
 	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
+	.setup_eee			= ixgbe_setup_eee_e610,
 	.get_bus_info			= ixgbe_get_bus_info_generic,
 	.acquire_swfw_sync		= ixgbe_acquire_swfw_sync_X540,
 	.release_swfw_sync		= ixgbe_release_swfw_sync_X540,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 782c489b0fa7..8a0b28becf02 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -55,6 +55,7 @@ int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw);
 int ixgbe_identify_phy_e610(struct ixgbe_hw *hw);
 int ixgbe_identify_module_e610(struct ixgbe_hw *hw);
 int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw);
+int ixgbe_setup_eee_e610(struct ixgbe_hw *hw, bool enable_eee);
 int ixgbe_set_phy_power_e610(struct ixgbe_hw *hw, bool on);
 int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw);
 int ixgbe_init_eeprom_params_e610(struct ixgbe_hw *hw);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 24781bbbcf46..57b994a85949 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -12,6 +12,7 @@
 #include <linux/ethtool.h>
 #include <linux/vmalloc.h>
 #include <linux/highmem.h>
+#include <linux/string_choices.h>
 #include <linux/uaccess.h>
 
 #include "ixgbe.h"
@@ -3534,7 +3535,7 @@ static const struct {
 	{ IXGBE_LINK_SPEED_10_FULL, ETHTOOL_LINK_MODE_10baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_100_FULL, ETHTOOL_LINK_MODE_100baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_1GB_FULL, ETHTOOL_LINK_MODE_1000baseT_Full_BIT },
-	{ IXGBE_LINK_SPEED_2_5GB_FULL, ETHTOOL_LINK_MODE_2500baseX_Full_BIT },
+	{ IXGBE_LINK_SPEED_2_5GB_FULL, ETHTOOL_LINK_MODE_2500baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_5GB_FULL, ETHTOOL_LINK_MODE_5000baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_10GB_FULL, ETHTOOL_LINK_MODE_10000baseT_Full_BIT },
 };
@@ -3551,6 +3552,17 @@ static const struct {
 	{ FW_PHY_ACT_UD_2_10G_KR_EEE, ETHTOOL_LINK_MODE_10000baseKR_Full_BIT},
 };
 
+static const struct {
+	u16 eee_cap_bit;
+	u32 link_mode;
+} ixgbe_eee_cap_map[] = {
+	{ IXGBE_ACI_PHY_EEE_EN_100BASE_TX, ETHTOOL_LINK_MODE_100baseT_Full_BIT },
+	{ IXGBE_ACI_PHY_EEE_EN_1000BASE_T, ETHTOOL_LINK_MODE_1000baseT_Full_BIT },
+	{ IXGBE_ACI_PHY_EEE_EN_10GBASE_T, ETHTOOL_LINK_MODE_10000baseT_Full_BIT },
+	{ IXGBE_ACI_PHY_EEE_EN_5GBASE_T, ETHTOOL_LINK_MODE_5000baseT_Full_BIT },
+	{ IXGBE_ACI_PHY_EEE_EN_2_5GBASE_T, ETHTOOL_LINK_MODE_2500baseT_Full_BIT },
+};
+
 static int ixgbe_validate_keee(struct net_device *netdev,
 			       struct ethtool_keee *keee_requested)
 {
@@ -3589,6 +3601,142 @@ static int ixgbe_validate_keee(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ixgbe_is_eee_link_speed_supported_e610 - Check if EEE can be enabled
+ * @adapter: pointer to the adapter struct
+ * @print_msg: indicate whether to print info msg when EEE cannot be supported
+ *
+ * Check whether current link configuration is capable of enabling EEE feature.
+ *
+ * E610 specific function - for other adapters supporting EEE there might be
+ * no such limitation.
+ *
+ * Return: true if EEE can be enabled, false otherwise.
+ */
+bool ixgbe_is_eee_link_speed_supported_e610(struct ixgbe_adapter *adapter,
+					    bool print_msg)
+{
+	switch (adapter->link_speed) {
+	case IXGBE_LINK_SPEED_10GB_FULL:
+	case IXGBE_LINK_SPEED_2_5GB_FULL:
+	case IXGBE_LINK_SPEED_5GB_FULL:
+		return true;
+	case IXGBE_LINK_SPEED_10_FULL:
+	case IXGBE_LINK_SPEED_100_FULL:
+	case IXGBE_LINK_SPEED_1GB_FULL:
+		if (print_msg)
+			e_dev_info("Energy Efficient Ethernet (EEE) feature is not supported on link speeds equal to or below 1Gbps. EEE is supported on speeds above 1Gbps.\n");
+		fallthrough;
+	default:
+		return false;
+	}
+}
+
+static int ixgbe_get_eee_e610(struct net_device *netdev,
+			      struct ethtool_keee *kedata)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
+	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_link_status link;
+	u16 eee_cap;
+	int err;
+
+	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE)) {
+		e_dev_info("Energy Efficient Ethernet (EEE) feature is currently not supported on this device, please update the device NVM to the latest and try again");
+		return -EOPNOTSUPP;
+	}
+
+	linkmode_zero(kedata->lp_advertised);
+	linkmode_zero(kedata->supported);
+	linkmode_zero(kedata->advertised);
+
+	err = ixgbe_aci_get_link_info(hw, true, &link);
+	if (err)
+		return err;
+
+	err = ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_ACTIVE_CFG,
+				     &pcaps);
+	if (err)
+		return err;
+
+	kedata->eee_active =  link.eee_status & IXGBE_ACI_LINK_EEE_ACTIVE;
+	kedata->eee_enabled = link.eee_status & IXGBE_ACI_LINK_EEE_ENABLED;
+
+	/* for E610 devices EEE enablement implies TX LPI enablement */
+	kedata->tx_lpi_enabled = kedata->eee_enabled;
+
+	if (kedata->eee_enabled)
+		kedata->tx_lpi_timer = le16_to_cpu(pcaps.eee_entry_delay);
+
+	eee_cap = le16_to_cpu(pcaps.eee_cap);
+
+	for (int i = 0; i < ARRAY_SIZE(ixgbe_eee_cap_map); i++) {
+		if (eee_cap & ixgbe_eee_cap_map[i].eee_cap_bit)
+			linkmode_set_bit(ixgbe_eee_cap_map[i].link_mode,
+					 kedata->lp_advertised);
+	}
+
+	for (int i = 0; i < ARRAY_SIZE(ixgbe_ls_map); i++) {
+		if (hw->phy.eee_speeds_supported &
+		    ixgbe_ls_map[i].mac_speed)
+			linkmode_set_bit(ixgbe_ls_map[i].link_mode,
+					 kedata->supported);
+
+		if (hw->phy.eee_speeds_advertised &
+		    ixgbe_ls_map[i].mac_speed)
+			linkmode_set_bit(ixgbe_ls_map[i].link_mode,
+					 kedata->advertised);
+	}
+
+	return 0;
+}
+
+static int ixgbe_set_eee_e610(struct net_device *netdev,
+			      struct ethtool_keee *kedata)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE)) {
+		e_dev_info("Energy Efficient Ethernet (EEE) feature is currently not supported on this device, please update the device NVM to the latest and try again");
+		return -EOPNOTSUPP;
+	}
+
+	err = ixgbe_validate_keee(netdev, kedata);
+	if (err == -EALREADY)
+		return 0;
+	else if (err)
+		return err;
+
+	if (!(ixgbe_is_eee_link_speed_supported_e610(adapter, true)) &&
+	    kedata->eee_enabled)
+		return -EOPNOTSUPP;
+
+	hw->phy.eee_speeds_advertised = kedata->eee_enabled ?
+					hw->phy.eee_speeds_supported : 0;
+
+	err = hw->mac.ops.setup_eee(hw, kedata->eee_enabled);
+	if (err) {
+		e_dev_err("Setting EEE %s failed.\n",
+			  str_on_off(kedata->eee_enabled));
+		return err;
+	}
+
+	if (kedata->eee_enabled)
+		adapter->eee_state = IXGBE_EEE_ENABLED;
+	else
+		adapter->eee_state = IXGBE_EEE_DISABLED;
+
+	if (netif_running(netdev))
+		ixgbe_reinit_locked(adapter);
+	else
+		ixgbe_reset(adapter);
+
+	return 0;
+}
+
 static int
 ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 {
@@ -3813,8 +3961,8 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.set_rxfh		= ixgbe_set_rxfh,
 	.get_rxfh_fields	= ixgbe_get_rxfh_fields,
 	.set_rxfh_fields	= ixgbe_set_rxfh_fields,
-	.get_eee		= ixgbe_get_eee,
-	.set_eee		= ixgbe_set_eee,
+	.get_eee		= ixgbe_get_eee_e610,
+	.set_eee		= ixgbe_set_eee_e610,
 	.get_channels		= ixgbe_get_channels,
 	.set_channels		= ixgbe_set_channels,
 	.get_priv_flags		= ixgbe_get_priv_flags,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index b87d553413cd..ad7f0bdf5f54 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6749,6 +6749,7 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
 
 /**
  * ixgbe_set_eee_capable - helper function to determine EEE support on X550
+ * and E610
  * @adapter: board private structure
  */
 static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
@@ -6765,6 +6766,20 @@ static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
 			break;
 		adapter->eee_state = IXGBE_EEE_ENABLED;
 		break;
+	case IXGBE_DEV_ID_E610_BACKPLANE:
+	case IXGBE_DEV_ID_E610_SFP:
+	case IXGBE_DEV_ID_E610_10G_T:
+	case IXGBE_DEV_ID_E610_2_5G_T:
+		if (hw->dev_caps.common_cap.eee_support &&
+		    hw->phy.eee_speeds_supported) {
+			adapter->flags2 |= IXGBE_FLAG2_EEE_CAPABLE;
+			/* For E610 adapters EEE should be enabled by default
+			 * if the feature is supported by FW.
+			 */
+			adapter->eee_state = IXGBE_EEE_ENABLED;
+			break;
+		}
+		fallthrough;
 	default:
 		adapter->flags2 &= ~IXGBE_FLAG2_EEE_CAPABLE;
 		adapter->eee_state = IXGBE_EEE_DISABLED;
@@ -8146,6 +8161,20 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 	       (flow_rx ? "RX" :
 	       (flow_tx ? "TX" : "None"))));
 
+	/* Check if link state change forces changing EEE state */
+	if (hw->mac.type == ixgbe_mac_e610) {
+		if (adapter->eee_state == IXGBE_EEE_ENABLED &&
+		    !(ixgbe_is_eee_link_speed_supported_e610(adapter, true))) {
+			hw->mac.ops.setup_eee(hw, false);
+			adapter->eee_state = IXGBE_EEE_FORCED_DOWN;
+		} else if (adapter->eee_state == IXGBE_EEE_FORCED_DOWN &&
+			   (ixgbe_is_eee_link_speed_supported_e610(adapter,
+			    false))) {
+			hw->mac.ops.setup_eee(hw, true);
+			adapter->eee_state = IXGBE_EEE_ENABLED;
+		}
+	}
+
 	netif_carrier_on(netdev);
 	ixgbe_check_vf_rate_limit(adapter);
 
@@ -12008,6 +12037,13 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_netdev;
 
+	if (hw->mac.type == ixgbe_mac_e610 &&
+	    (adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE)) {
+		bool eee_enable = adapter->eee_state == IXGBE_EEE_ENABLED;
+
+		hw->mac.ops.setup_eee(hw, eee_enable);
+	}
+
 	ixgbe_devlink_init_regions(adapter);
 	devl_register(adapter->devlink);
 	devl_unlock(adapter->devlink);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 36577091cd9e..d17db3b3737f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3521,6 +3521,7 @@ struct ixgbe_mac_operations {
 	int (*get_link_capabilities)(struct ixgbe_hw *, ixgbe_link_speed *,
 				     bool *);
 	void (*set_rate_select_speed)(struct ixgbe_hw *, ixgbe_link_speed);
+	int (*setup_eee)(struct ixgbe_hw *hw, bool enable_eee);
 
 	/* Packet Buffer Manipulation */
 	void (*set_rxpba)(struct ixgbe_hw *, int, u32, int);
-- 
2.31.1


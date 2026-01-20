Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPTcJxGmb2kfEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C238B46E5B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E9176FE43;
	Tue, 20 Jan 2026 14:02:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UZQOzF7CU1Wn; Tue, 20 Jan 2026 14:02:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F7AD6FE53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768917759;
	bh=bh1RWipvkZqfqUcIiA+CtmzStYfKz6CsZhAteFHCevE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lulZW6I88a7LWXFCmdQ/4Ym7L8N/6rYLrAXGJadFeZleCFz07eGdKRDWY6ryuICju
	 HtMObZrNP5cEwqW43uGO0TxP8G2n7tlV3rKkfsRrMaK+JGfvptvkDbz4VKyU2ReQyX
	 KY9EcmR0HgeTkcDn1p5eanhYtDRX8e/LydCKAUCzhRTOMUu89eDw3406bdAj2WqNCL
	 lxsVLn3xWGvnyBOei1fKRQvixA1PbO/6tO4CoBgYSyp2YrjzhX3qQQkrdsbLqJ/Bm+
	 59s87C1oY8taCU4hveOgWHc1yBHQkAuJvvwjUMOgcvmSOh/A964IelFapG4LmBf1rO
	 u0Av5EoipAJPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F7AD6FE53;
	Tue, 20 Jan 2026 14:02:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EA43160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E773B6FE52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NmDvev8GGOJT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 14:02:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB8DD6FE3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB8DD6FE3B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB8DD6FE3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:35 +0000 (UTC)
X-CSE-ConnectionGUID: hWqZ1p3ZQ72BAf+EiW465A==
X-CSE-MsgGUID: Ncv6om3yQnCKVox2SZ2U2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="72711793"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="72711793"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 06:02:35 -0800
X-CSE-ConnectionGUID: sUCTT2O7SAyZnrMiOgq3mQ==
X-CSE-MsgGUID: NWu3HeNwQmCqVixRY2Vx8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210978977"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 06:02:34 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 20 Jan 2026 14:44:34 +0100
Message-Id: <20260120134434.1931602-7-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768917755; x=1800453755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c3wTneRn/63MhMwZxOvqlh2YqVZIDxaN722tVWa8hsY=;
 b=kIXCVz9mAWZxE0ukcTU/7u+7PSgQW5x7wbTFBIe90byPPOLja8v2zDsS
 MaQFxaydPENNpeXAX+e4b2D5GQWS9AYfNf97fedLiB4ihZs3Dy4F3MHkp
 QuvaNSfiqhv97QP1Cw0uhgdoMONHPLmEaSBqsA6vXPFOXa/SMjsjjTms6
 t99CoAXHTJTJkAf5H0mPGgbPThWlp8DBHqhaNa7SwfpqkMKf+GtJbnW4c
 yAgkane1/bSyGkXo043TYTCd+kJwZMeLgiuvStoiuFwuNf4cDgUSj7pCf
 45f7t4z7TksAP2z2NobOLeanACmLrD9wRoV6x1qPncQ62sjHDrmibDLfp
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kIXCVz9m
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ixgbe: E610: add EEE
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C238B46E5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add E610 specific implementation of .get_eee() and .set_eee() ethtool
callbacks.

Introduce ixgbe_setup_eee_e610() which is used to set EEE config
on E610 device via ixgbe_aci_set_phy_cfg() (0x0601 ACI command).
Assign it to dedicated mac operation.

E610 devices support EEE feature specifically for 2.5, 5 and 10G link
speeds. When user try to set EEE for unsupported speeds log it.

Setting timer and setting EEE advertised speeds are not yet supported.

EEE shall be enabled by default for E610 devices.

Add EEE statuis logging during link watchdog run.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: get rid of setting unsupported speeds from ixgbe_setup_eee_e610();
    remove 10Mb EEE case; remove EEE control (Andrew)
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  40 +++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 145 +++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  30 +++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   1 +
 5 files changed, 212 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 8a3d8000a79c..3b941906b502 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -2013,6 +2013,45 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
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
@@ -4026,6 +4065,7 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.fw_rollback_mode		= ixgbe_fw_rollback_mode_e610,
 	.get_nvm_ver			= ixgbe_get_active_nvm_ver,
 	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
+	.setup_eee			= ixgbe_setup_eee_e610,
 	.get_bus_info			= ixgbe_get_bus_info_generic,
 	.acquire_swfw_sync		= ixgbe_acquire_swfw_sync_X540,
 	.release_swfw_sync		= ixgbe_release_swfw_sync_X540,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 11916b979d28..2cb76a3d30ae 100644
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
index b5b9b9335d52..020b97556ef7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -12,6 +12,7 @@
 #include <linux/ethtool.h>
 #include <linux/vmalloc.h>
 #include <linux/highmem.h>
+#include <linux/string_choices.h>
 #include <linux/uaccess.h>
 
 #include "ixgbe.h"
@@ -3539,7 +3540,7 @@ static const struct {
 	{ IXGBE_LINK_SPEED_10_FULL, ETHTOOL_LINK_MODE_10baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_100_FULL, ETHTOOL_LINK_MODE_100baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_1GB_FULL, ETHTOOL_LINK_MODE_1000baseT_Full_BIT },
-	{ IXGBE_LINK_SPEED_2_5GB_FULL, ETHTOOL_LINK_MODE_2500baseX_Full_BIT },
+	{ IXGBE_LINK_SPEED_2_5GB_FULL, ETHTOOL_LINK_MODE_2500baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_5GB_FULL, ETHTOOL_LINK_MODE_5000baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_10GB_FULL, ETHTOOL_LINK_MODE_10000baseT_Full_BIT },
 };
@@ -3556,6 +3557,17 @@ static const struct {
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
@@ -3597,6 +3609,133 @@ static int ixgbe_validate_keee(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ixgbe_is_eee_link_speed_supported_e610 - Check if EEE can be enabled
+ * @adapter: pointer to the adapter struct
+ *
+ * Check whether current link configuration is capable of enabling EEE feature.
+ *
+ * E610 specific function - for other adapters supporting EEE there might be
+ * no such limitation.
+ *
+ * Return: true if EEE can be enabled, false otherwise.
+ */
+static bool
+ixgbe_is_eee_link_speed_supported_e610(struct ixgbe_adapter *adapter)
+{
+	switch (adapter->link_speed) {
+	case IXGBE_LINK_SPEED_10GB_FULL:
+	case IXGBE_LINK_SPEED_2_5GB_FULL:
+	case IXGBE_LINK_SPEED_5GB_FULL:
+		return true;
+	case IXGBE_LINK_SPEED_100_FULL:
+	case IXGBE_LINK_SPEED_1GB_FULL:
+		e_dev_info("Energy Efficient Ethernet (EEE) feature is not supported on link speeds equal to or below 1Gbps. EEE is supported on speeds above 1Gbps.\n");
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
+	err = ixgbe_validate_keee(netdev, kedata);
+
+	if (err == -EALREADY) {
+		return 0;
+	} else if (err) {
+		if (err == -EOPNOTSUPP)
+			e_dev_info("Energy Efficient Ethernet (EEE) feature is currently not supported on this device, please update the device NVM to the latest and try again");
+		return err;
+	}
+
+	if (!(ixgbe_is_eee_link_speed_supported_e610(adapter)) &&
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
+		adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
+	else
+		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
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
@@ -3823,8 +3962,8 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
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
index c58051e4350b..b2bd34b53bf2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6748,6 +6748,7 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
 
 /**
  * ixgbe_set_eee_capable - helper function to determine EEE support on X550
+ * and E610
  * @adapter: board private structure
  */
 static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
@@ -6764,6 +6765,20 @@ static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
 			break;
 		adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
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
+			adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
+			break;
+		}
+		fallthrough;
 	default:
 		adapter->flags2 &= ~IXGBE_FLAG2_EEE_CAPABLE;
 		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
@@ -8074,6 +8089,7 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 link_speed = adapter->link_speed;
+	struct ethtool_keee keee = {};
 	const char *speed_str;
 	bool flow_rx, flow_tx;
 
@@ -8114,6 +8130,8 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
 		ixgbe_ptp_start_cyclecounter(adapter);
 
+	netdev->ethtool_ops->get_eee(netdev, &keee);
+
 	switch (link_speed) {
 	case IXGBE_LINK_SPEED_10GB_FULL:
 		speed_str = "10 Gbps";
@@ -8137,10 +8155,11 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 		speed_str = "unknown speed";
 		break;
 	}
-	e_info(drv, "NIC Link is Up %s, Flow Control: %s\n", speed_str,
+	e_info(drv, "NIC Link is Up %s, Flow Control: %s, EEE: %s\n", speed_str,
 	       ((flow_rx && flow_tx) ? "RX/TX" :
 	       (flow_rx ? "RX" :
-	       (flow_tx ? "TX" : "None"))));
+	       (flow_tx ? "TX" : "None"))),
+	       str_on_off(keee.eee_enabled));
 
 	netif_carrier_on(netdev);
 	ixgbe_check_vf_rate_limit(adapter);
@@ -11995,6 +12014,13 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_netdev;
 
+	if (hw->mac.type == ixgbe_mac_e610 &&
+	    (adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE)) {
+		bool eee_enable = adapter->flags2 & IXGBE_FLAG2_EEE_ENABLED;
+
+		hw->mac.ops.setup_eee(hw, eee_enable);
+	}
+
 	ixgbe_devlink_init_regions(adapter);
 	devl_register(adapter->devlink);
 	devl_unlock(adapter->devlink);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 94e00ab96692..4b8c439df2e2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3524,6 +3524,7 @@ struct ixgbe_mac_operations {
 	int (*get_link_capabilities)(struct ixgbe_hw *, ixgbe_link_speed *,
 				     bool *);
 	void (*set_rate_select_speed)(struct ixgbe_hw *, ixgbe_link_speed);
+	int (*setup_eee)(struct ixgbe_hw *hw, bool enable_eee);
 
 	/* Packet Buffer Manipulation */
 	void (*set_rxpba)(struct ixgbe_hw *, int, u32, int);
-- 
2.31.1


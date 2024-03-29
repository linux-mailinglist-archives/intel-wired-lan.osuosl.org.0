Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3C68915BB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 10:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8593260E8B;
	Fri, 29 Mar 2024 09:25:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QLsl5hdYxA-s; Fri, 29 Mar 2024 09:25:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7394A60EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711704355;
	bh=UqhCyORgj5GcwNc7uCcVM3JqCsD6FB7bQWuCquuFiTM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DFdbh1ThDKnQjxb6nXla5GKUYV9cs9QIqLCAEMCjCBl4qRYqPS13BDx9LXs+bsTZJ
	 bYSJuOgymSXyPTi3M/N/sqSgiOZN0rHw5YwaTfput7rnVlyOhyTzvh3VTwa64c29Um
	 dkPXRvIZCsWAGwt54Lb3Cx0pgyXNbv8LcxPFXH/SyGkt9TdhnXpRbeZT0xVmToEar8
	 i7c3FWaiW40ZXZYGXqTJROHoWQq4PsHx4tssUdX83/1jE+xfAO9kSiNwnH0JF8UPZ6
	 C02UcxGsnbdvUGeAW+hAO3PSBi9FGZJLhy9xPlcnJ3PAyKJO1CPWs27daTNldF6M9x
	 YgtWfFQKkQN/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7394A60EDF;
	Fri, 29 Mar 2024 09:25:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6DD1BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 257AA416E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FLGxJF9P-6Jn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 09:25:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 32A6F416D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32A6F416D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32A6F416D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:47 +0000 (UTC)
X-CSE-ConnectionGUID: rEgx1qlwTSWkQSZ6r/oJRQ==
X-CSE-MsgGUID: kiXVY9/aQ4mkhL6fpZCRCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7107038"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="7107038"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 02:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16986861"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 29 Mar 2024 02:25:37 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C928134943;
 Fri, 29 Mar 2024 09:25:33 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Mar 2024 10:23:21 +0100
Message-Id: <20240329092321.16843-4-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240329092321.16843-1-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711704347; x=1743240347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y9CqrKl53Ske4ILI9lXD+tMwZ8stKJdibrX4YniAq3Q=;
 b=Mrcz45pQ4K4qybGMFHHWq8Bh1DgglKw5yf6hZX9wxxxAqgtOvMtxko0Q
 h1VuT/wlcfhxlRLIaVadAKdTIrGNjBVPX0jhw9E7BEuvSYfz+ZS10jMab
 iLBZZh6j7wQhbNOxudl171DwP5eDMSairJhxm37oSWTtL1KxgAD1dasUd
 ++8lXNMCu54wbbzTcpcYSWVnDINbYfXn4FO3E09cIFN7H3nNTWfaqSf83
 T6Ea/CsWDCzYIV0sV/EWOs6TsOEHgzXlsE/oYV0tg1CWZHEwAxGrNr/8S
 2z9znXJVUJAls2etPi6DuJ9+Uxh4s/Uwo47+P76UUILKKxGGeueYSH2MI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mrcz45pQ
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: Implement ethtool max
 power configuration
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
Cc: simon.horman@corigine.com, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement get_module_power_cfg and set_module_power_cfg ethtool ops.
Only a part of the parameters provided by those callbacks are going
to be supported, power policy is not on one of them.
Introduce new NVM module, Cage Max Power Override which allows
to change default max power values in the cages. This module
have an array of 8 words, each one of them is associated with
different cage. If ICE_AQC_NVM_CMPO_ENABLE bit is set then
firmware will use maximum power stored in the given word.

The overall sum of the powers in the board cannot exceed
board maximum, which is stored in EMP settings NVM module.
Before changing the maximum power check if the new value will not
broke this limit.

Minimum limit per cage is based on the type of the cage, SFP or
QSFP.

Maximum limit per cage is calculated with below formula:
max_power_per_board - (number_of_cages - 1) * min_power_per_cage

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  21 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  46 ++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  14 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 461 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 9 files changed, 550 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index c4127d5f2be3..ca145ce2b1eb 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -655,6 +655,8 @@ struct ice_pf {
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 	struct ice_dplls dplls;
 	struct device *hwmon_dev;
+
+	int split_cnt;
 };
 
 extern struct workqueue_struct *ice_lag_wq;
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 540c0bdca936..daf53e00a497 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1497,6 +1497,10 @@ struct ice_aqc_link_topo_addr {
 struct ice_aqc_get_link_topo {
 	struct ice_aqc_link_topo_addr addr;
 	u8 node_part_num;
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_SFP_PLUS		0x11
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_SFP28		0x12
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_QSFP_PLUS		0x13
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_QSFP28		0x14
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575		0x21
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032	0x24
 #define ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384	0x25
@@ -1664,6 +1668,23 @@ struct ice_aqc_nvm {
 	__le32 addr_low;
 };
 
+#define ICE_AQC_NVM_CMPO_MOD_ID			0x153
+#define ICE_AQC_NVM_EMP_SETTINGS_MOD_ID		0x0F
+#define ICE_AQC_NVM_MAX_PWR_LIMIT_OFFSET	0x1A
+#define ICE_AQC_NVM_DFLT_MAX_PWR_MASK		GENMASK(7, 0)
+#define ICE_AQC_NVM_BOARD_MAX_PWR_MASK		GENMASK(15, 8)
+
+#define ICE_NUM_OF_CAGES 8
+
+#define ICE_AQC_NVM_CMPO_ENABLE		BIT(8)
+#define ICE_AQC_NVM_CMPO_POWER_MASK	GENMASK(7, 0)
+
+/* Cage Max Power override NVM module */
+struct ice_aqc_nvm_cmpo {
+	__le16 length;
+	__le16 cages_cfg[ICE_NUM_OF_CAGES];
+};
+
 #define ICE_AQC_NVM_START_POINT			0
 
 /* NVM Checksum Command (direct, 0x0706) */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f4ac3c30b124..081f6b6dbc30 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -571,6 +571,23 @@ static bool ice_is_media_cage_present(struct ice_port_info *pi)
 					    NULL);
 }
 
+int ice_get_port_cage_node(struct ice_hw *hw, u8 index,
+			   u16 *node_handle, u8 *node_part_number)
+{
+	struct ice_aqc_get_link_topo cmd = {};
+
+	cmd.addr.topo_params.node_type_ctx =
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M,
+			   ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE);
+	cmd.addr.topo_params.node_type_ctx |=
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M,
+			   ICE_AQC_LINK_TOPO_NODE_CTX_GLOBAL);
+	cmd.addr.topo_params.index = index;
+
+	return ice_aq_get_netlist_node(hw, &cmd, node_part_number,
+				       node_handle);
+}
+
 /**
  * ice_get_media_type - Gets media type
  * @pi: port information structure
@@ -5723,6 +5740,29 @@ static bool ice_is_fw_api_min_ver(struct ice_hw *hw, u8 maj, u8 min, u8 patch)
 	return false;
 }
 
+/**
+ * ice_is_fw_min_ver
+ * @hw: pointer to the hardware structure
+ * @maj: major version
+ * @min: minor version
+ * @patch: patch version
+ *
+ * Checks if the firmware is minimum version
+ */
+static bool ice_is_fw_min_ver(struct ice_hw *hw, u8 maj, u8 min, u8 patch)
+{
+	if (hw->fw_maj_ver > maj)
+		return true;
+	if (hw->fw_maj_ver == maj) {
+		if (hw->fw_min_ver > min)
+			return true;
+		if (hw->fw_min_ver == min && hw->fw_patch >= patch)
+			return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_fw_supports_link_override
  * @hw: pointer to the hardware structure
@@ -5736,6 +5776,12 @@ bool ice_fw_supports_link_override(struct ice_hw *hw)
 				     ICE_FW_API_LINK_OVERRIDE_PATCH);
 }
 
+bool ice_fw_supports_cmpo(struct ice_hw *hw)
+{
+	return ice_is_fw_min_ver(hw, ICE_FW_CMPO_MAJ, ICE_FW_CMPO_MIN,
+				 ICE_FW_CMPO_PATCH);
+}
+
 /**
  * ice_get_link_default_override
  * @ldo: pointer to the link default override struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index ffb22c7ce28b..c476fbf60400 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -96,6 +96,8 @@ bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw);
 bool ice_is_clock_mux_in_netlist(struct ice_hw *hw);
 bool ice_is_cgu_in_netlist(struct ice_hw *hw);
 bool ice_is_gps_in_netlist(struct ice_hw *hw);
+int ice_get_port_cage_node(struct ice_hw *hw, u8 index,
+			   u16 *node_handle, u8 *node_part_number);
 int
 ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
 			u8 *node_part_number, u16 *node_handle);
@@ -117,6 +119,7 @@ int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd);
 bool ice_fw_supports_link_override(struct ice_hw *hw);
+bool ice_fw_supports_cmpo(struct ice_hw *hw);
 int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 3c3616f0f811..8d5ce9c2ca91 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1604,6 +1604,14 @@ ice_devlink_set_port_split_options(struct ice_pf *pf,
 		return;
 	}
 
+	pf->split_cnt = options[active_idx].pmd;
+
+	/* As FW supports only port split options for whole device,
+	 * set port split options only for first PF.
+	 */
+	if (pf->hw.pf_id != 0)
+		return;
+
 	/* find the biggest available port split count */
 	for (i = 0; i < option_count; i++)
 		attrs->lanes = max_t(int, attrs->lanes, options[i].pmd);
@@ -1648,11 +1656,7 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	attrs.phys.port_number = pf->hw.bus.func;
 
-	/* As FW supports only port split options for whole device,
-	 * set port split options only for first PF.
-	 */
-	if (pf->hw.pf_id == 0)
-		ice_devlink_set_port_split_options(pf, &attrs);
+	ice_devlink_set_port_split_options(pf, &attrs);
 
 	ice_devlink_set_switch_id(pf, &attrs.switch_id);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 255a9c8151b4..b38a984b44a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4297,6 +4297,465 @@ ice_get_module_eeprom(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ice_get_min_pwr_allowed - Get min power allowed
+ * @hw: pointer to the hardware structure
+ * @extack: extended ACK from the Netlink message
+ *
+ * Values are constant based on the cage type.
+ * Return value in mW.
+ */
+static int ice_get_min_pwr_allowed(struct ice_hw *hw,
+				   struct netlink_ext_ack *extack)
+{
+	u8 node_part_number;
+	u16 node_handle;
+	int err;
+
+	err = ice_get_port_cage_node(hw, 0, &node_handle, &node_part_number);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to get cage node handle");
+		return err;
+	}
+
+	switch (node_part_number) {
+	case ICE_AQC_GET_LINK_TOPO_NODE_NR_SFP_PLUS:
+	case ICE_AQC_GET_LINK_TOPO_NODE_NR_SFP28:
+		return 1000;
+	case ICE_AQC_GET_LINK_TOPO_NODE_NR_QSFP_PLUS:
+	case ICE_AQC_GET_LINK_TOPO_NODE_NR_QSFP28:
+		return 1500;
+	default:
+		return -EINVAL;
+	}
+}
+
+/**
+ * ice_pwr_nvm_to_ethtool - Convert NVM values to ethtool
+ * @pwr: power from NVM
+ */
+static u32 ice_pwr_nvm_to_ethtool(u32 pwr)
+{
+	/* ethtool takes power values in mW */
+	pwr *= 1000;
+	/* 0.5 W resolution */
+	pwr /= 2;
+
+	return pwr;
+}
+
+/**
+ * ice_pwr_ethtool_to_nvm - Convert ethtool values to NVM
+ * @pwr: power from ethtool, in mW
+ */
+static u32 ice_pwr_ethtool_to_nvm(u32 pwr)
+{
+	/* 0.5 W resolution */
+	pwr *= 2;
+	/* ethtool takes power values in mW */
+	pwr /= 1000;
+
+	return pwr;
+}
+
+/**
+ * ice_get_num_of_cages - Get number of cages in the board
+ * @hw: pointer to the hardware structure
+ *
+ * We have as many cages as netlist nodes of cage type.
+ */
+static int ice_get_num_of_cages(struct ice_hw *hw)
+{
+	int i, err, cage_count = 0;
+	u8 node_part_number;
+	u16 node_handle;
+
+	for (i = 0; i < ICE_NUM_OF_CAGES; i++) {
+		err = ice_get_port_cage_node(hw, i, &node_handle,
+					     &node_part_number);
+		if (!err && node_handle)
+			cage_count++;
+	}
+
+	return cage_count;
+}
+
+/**
+ * ice_get_board_max_pwr - Get max power allowed per board
+ * @hw: pointer to the hardware structure
+ *
+ * Board maximum power is stored in EMP settings NVM module
+ */
+static int ice_get_board_max_pwr(struct ice_hw *hw)
+{
+	u16 board_max_pwr;
+	__le16 data;
+	int err;
+
+	err = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (err)
+		return err;
+
+	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_EMP_SETTINGS_MOD_ID,
+			      ICE_AQC_NVM_MAX_PWR_LIMIT_OFFSET,
+			      sizeof(data), &data,
+			      true, false, NULL);
+	if (err) {
+		ice_release_nvm(hw);
+		return err;
+	}
+
+	ice_release_nvm(hw);
+
+	board_max_pwr = __le16_to_cpu(data);
+	board_max_pwr = FIELD_GET(ICE_AQC_NVM_BOARD_MAX_PWR_MASK,
+				  board_max_pwr);
+
+	return ice_pwr_nvm_to_ethtool(board_max_pwr);
+}
+
+/**
+ * ice_get_max_pwr_allowed - Get max power allowed per cage
+ * @hw: pointer to the hardware structure
+ * @min_pwr_allowed: min allowed power
+ * @cage_count: number of cages in the board
+ */
+static int ice_get_max_pwr_allowed(struct ice_hw *hw, u32 min_pwr_allowed,
+				   int cage_count)
+{
+	int board_max_pwr;
+
+	board_max_pwr = ice_get_board_max_pwr(hw);
+	if (board_max_pwr < 0)
+		return board_max_pwr;
+
+	return board_max_pwr - (cage_count - 1) * min_pwr_allowed;
+}
+
+/**
+ * ice_get_cage_idx - Get index to the cage
+ * @pf: pointer to the PF structure
+ * @cage_count: number of cages in the board
+ * @extack: extended ACK from the Netlink message
+ *
+ * Get index to the cage and validate if the given PF
+ * is associated with the cage.
+ */
+static int ice_get_cage_idx(struct ice_pf *pf, int cage_count,
+			    struct netlink_ext_ack *extack)
+{
+	/* if there is only on cage, PF 0 is responsoble for it */
+	if (cage_count == 1) {
+		if (pf->hw.pf_id == 0)
+			return 0;
+		goto err;
+	} else if (cage_count == 4) {
+		/* if there are 4 cages, than port split is not supported
+		 * so each PF is responsoble for its cage
+		 */
+		return pf->hw.pf_id;
+	} else if (cage_count == 2) {
+		/* We have 2 cages, PF 0 always takes care of the first one.
+		 * If the split_cnt is 2 than PF 1 takes care of the second cage.
+		 * If the split_cnt is 4 than PF 2 takes care of the second cage.
+		 * If the split_cnt is 8 than PF 4 takes care of the second cage.
+		 * So, the formula for the second cage is pf_id * 2 == split_cnt
+		 */
+		if (pf->hw.pf_id == 0 || pf->hw.pf_id * 2 == pf->split_cnt)
+			return pf->hw.pf_id;
+	}
+
+err:
+	NL_SET_ERR_MSG_MOD(extack, "Cage maximum power cannot be requested for selected port");
+
+	return -EPERM;
+}
+
+/**
+ * ice_get_dflt_max_pwr - Get dflt max power
+ * @hw: pointer to the hardware structure
+ *
+ * Default max power is stored in EMP settings NVM module
+ */
+static int ice_get_dflt_max_pwr(struct ice_hw *hw)
+{
+	__le16 data;
+	u16 pwr;
+	int ret;
+
+	ret = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (ret)
+		return ret;
+
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_EMP_SETTINGS_MOD_ID,
+			      ICE_AQC_NVM_MAX_PWR_LIMIT_OFFSET, sizeof(data),
+			      &data, true, false, NULL);
+	if (ret) {
+		ice_release_nvm(hw);
+		return ret;
+	}
+
+	ice_release_nvm(hw);
+
+	pwr = __le16_to_cpu(data);
+	pwr = FIELD_GET(ICE_AQC_NVM_DFLT_MAX_PWR_MASK, pwr);
+
+	return ice_pwr_nvm_to_ethtool(pwr);
+}
+
+/**
+ * ice_get_max_pwr_set - Get currently set max power
+ * @hw: pointer to the hardware structure
+ * @idx: index of the cage
+ *
+ * If cmpo enable bit is set, use the value from
+ * CMPO module otherwise use default value.
+ */
+static int ice_get_max_pwr_set(struct ice_hw *hw, int idx)
+{
+	struct ice_aqc_nvm_cmpo data;
+	int max_pwr_set;
+	u16 temp;
+	int ret;
+
+	ret = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (ret)
+		return ret;
+
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 0, sizeof(data),
+			      &data, true, false, NULL);
+	if (ret) {
+		ice_release_nvm(hw);
+		return ret;
+	}
+
+	ice_release_nvm(hw);
+
+	temp = le16_to_cpu(data.cages_cfg[idx]);
+
+	if (FIELD_GET(ICE_AQC_NVM_CMPO_ENABLE, temp)) {
+		max_pwr_set = FIELD_GET(ICE_AQC_NVM_CMPO_POWER_MASK, temp);
+		return ice_pwr_nvm_to_ethtool(max_pwr_set);
+	} else {
+		return ice_get_dflt_max_pwr(hw);
+	}
+}
+
+/**
+ * ice_get_module_power_cfg - Get device's power setting
+ * @dev: network device
+ * @params: output parameters
+ * @extack: extended ACK from the Netlink message
+ *
+ * We care only about min_pwr_allowed, max_pwr_allowed and max_pwr_set params.
+ */
+static int
+ice_get_module_power_cfg(struct net_device *dev,
+			 struct ethtool_module_power_params *params,
+			 struct netlink_ext_ack *extack)
+{
+	int min_pwr_allowed, max_pwr_allowed, max_pwr_set, cage_count;
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	int idx;
+
+	if (!ice_fw_supports_cmpo(hw)) {
+		NL_SET_ERR_MSG_MOD(extack, "Cage maximum power request is unsupported by the current firmware");
+		return -EOPNOTSUPP;
+	}
+
+	cage_count = ice_get_num_of_cages(hw);
+
+	idx = ice_get_cage_idx(pf, cage_count, extack);
+	if (idx < 0)
+		return idx;
+
+	min_pwr_allowed = ice_get_min_pwr_allowed(hw, extack);
+	if (min_pwr_allowed < 0) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get min power limit");
+		return min_pwr_allowed;
+	}
+
+	max_pwr_allowed = ice_get_max_pwr_allowed(hw, min_pwr_allowed,
+						  cage_count);
+	if (max_pwr_allowed < 0) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get max power limit");
+		return max_pwr_allowed;
+	}
+
+	max_pwr_set = ice_get_max_pwr_set(hw, idx);
+	if (max_pwr_set < 0) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get max power currently set");
+		return max_pwr_set;
+	}
+
+	params->min_pwr_allowed = min_pwr_allowed;
+	params->max_pwr_allowed = max_pwr_allowed;
+	params->max_pwr_set = max_pwr_set;
+
+	return 0;
+}
+
+/**
+ * ice_check_board_pwr_sum - Check if the new sum exceeds the board maximum.
+ * @hw: pointer to the hardware structure
+ * @data: current power config from NVM
+ * @idx: index of the cage we want to update
+ * @power: new power value from ethtool
+ * @cage_count: number of cages in the board
+ * @extack: extended ACK from the Netlink message
+ *
+ * Get number of cages, board maximum and default power value.
+ * Add up all values. If cmpo enable bit is set, use the value from
+ * CMPO module otherwise use default value.
+ */
+static int
+ice_check_board_pwr_sum(struct ice_hw *hw, struct ice_aqc_nvm_cmpo *data,
+			int idx, u32 power, int cage_count,
+			struct netlink_ext_ack *extack)
+{
+	int board_max_pwr, dflt_pwr, max_pwr_set, sum = 0;
+	u16 temp;
+	int i;
+
+	board_max_pwr = ice_get_board_max_pwr(hw);
+	if (board_max_pwr < 0)
+		return board_max_pwr;
+
+	dflt_pwr = ice_get_dflt_max_pwr(hw);
+	if (dflt_pwr < 0)
+		return dflt_pwr;
+
+	for (i = 0; i < cage_count; i++) {
+		temp = le16_to_cpu(data->cages_cfg[i]);
+
+		/* skipping the cage we want to update with the new value, we
+		 * want to add the new power, not the value from NVM
+		 */
+		if (i == idx)
+			continue;
+
+		if (FIELD_GET(ICE_AQC_NVM_CMPO_ENABLE, temp)) {
+			max_pwr_set = FIELD_GET(ICE_AQC_NVM_CMPO_POWER_MASK,
+						temp);
+			sum += ice_pwr_nvm_to_ethtool(max_pwr_set);
+		} else {
+			sum += dflt_pwr;
+		}
+	}
+
+	sum += power;
+
+	if (sum > board_max_pwr) {
+		NL_SET_ERR_MSG_MOD(extack, "Sum of power values is out of range: overbudgeting board level.");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_set_module_power_cfg - Update device's power setting
+ * @dev: network device
+ * @params: new power config
+ * @extack: extended ACK from the Netlink message
+ *
+ * We care only about max_pwr_set and max_pwr_reset params.
+ */
+static int
+ice_set_module_power_cfg(struct net_device *dev,
+			 const struct ethtool_module_power_params *params,
+			 struct netlink_ext_ack *extack)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_aqc_nvm_cmpo data;
+	struct ice_hw *hw = &pf->hw;
+	int idx, ret, cage_count;
+	u16 power;
+
+	if (params->policy) {
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported power parameter.");
+		return -EOPNOTSUPP;
+	}
+
+	if (!ice_fw_supports_cmpo(hw)) {
+		NL_SET_ERR_MSG_MOD(extack, "Cage maximum power request is unsupported by the current firmware.");
+		return -EOPNOTSUPP;
+	}
+
+	if (params->max_pwr_set % 500) {
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported power resolution, use 500 mW resolution.");
+		return -EOPNOTSUPP;
+	}
+
+	cage_count = ice_get_num_of_cages(hw);
+
+	idx = ice_get_cage_idx(pf, cage_count, extack);
+	if (idx < 0)
+		return idx;
+
+	ret = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (ret)
+		return ret;
+
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 0, sizeof(data),
+			      &data, true, false, NULL);
+	if (ret) {
+		ice_release_nvm(hw);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM power config.");
+		return ret;
+	}
+
+	ice_release_nvm(hw);
+
+	power = ice_pwr_ethtool_to_nvm(params->max_pwr_set);
+
+	if (power) {
+		ret = ice_check_board_pwr_sum(hw, &data, idx,
+					      params->max_pwr_set, cage_count,
+					      extack);
+		if (ret)
+			return ret;
+
+		data.cages_cfg[idx] =
+			cpu_to_le16(power & ICE_AQC_NVM_CMPO_POWER_MASK);
+		data.cages_cfg[idx] |= cpu_to_le16(ICE_AQC_NVM_CMPO_ENABLE);
+	} else {
+		data.cages_cfg[idx] &= ~cpu_to_le16(ICE_AQC_NVM_CMPO_ENABLE);
+	}
+
+	ret = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (ret)
+		return ret;
+
+	ret = ice_aq_update_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 2,
+				sizeof(data.cages_cfg), data.cages_cfg,
+				false, 0, NULL);
+	if (ret) {
+		ice_release_nvm(hw);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to update NVM power config.");
+		return ret;
+	}
+
+	ret = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR,
+				     NULL);
+	if (ret) {
+		ice_release_nvm(hw);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to save NVM power config.");
+		return ret;
+	}
+
+	ice_release_nvm(hw);
+
+	dev_info(ice_pf_to_dev(pf), "Reboot is required to complete power change.");
+
+	return 0;
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
@@ -4344,6 +4803,8 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_fecparam		= ice_set_fecparam,
 	.get_module_info	= ice_get_module_info,
 	.get_module_eeprom	= ice_get_module_eeprom,
+	.get_module_power_cfg	= ice_get_module_power_cfg,
+	.set_module_power_cfg	= ice_set_module_power_cfg,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index d4e05d2cb30c..f3ef1211acd7 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -18,7 +18,7 @@
  *
  * Read the NVM using the admin queue commands (0x0701)
  */
-static int
+int
 ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 		void *data, bool last_command, bool read_shadow_ram,
 		struct ice_sq_cd *cd)
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 774c2317967d..63cdc6bdac58 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -14,6 +14,9 @@ struct ice_orom_civd_info {
 
 int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
+int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
+		    u16 length, void *data, bool last_command,
+		    bool read_shadow_ram, struct ice_sq_cd *cd);
 int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 08ec5efdafe6..91506ddc5419 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1152,6 +1152,10 @@ struct ice_aq_get_set_rss_lut_params {
 #define ICE_FW_API_LINK_OVERRIDE_MIN		5
 #define ICE_FW_API_LINK_OVERRIDE_PATCH		2
 
+#define ICE_FW_CMPO_MAJ				7
+#define ICE_FW_CMPO_MIN				4
+#define ICE_FW_CMPO_PATCH			1
+
 #define ICE_SR_WORDS_IN_1KB		512
 
 /* AQ API version for LLDP_FILTER_CONTROL */
-- 
2.40.1


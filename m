Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C11B3EEB91
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 13:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4A8E80ABD;
	Tue, 17 Aug 2021 11:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gmrw1tWsoePi; Tue, 17 Aug 2021 11:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2A2E80FC1;
	Tue, 17 Aug 2021 11:25:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3329A1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C73BD836A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SUpZm3pBJEeN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 11:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21E54836AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="279788790"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="279788790"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 04:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="531010241"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 04:24:50 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Aug 2021 13:09:16 +0200
Message-Id: <20210817110918.1937113-3-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 2/4] ice: Implement
 functions for reading and setting GPIO pins
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement ice_aq_get_gpio and ice_aq_set_gpio for reading and changing
the state of GPIO pins described in the topology.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 58 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
 3 files changed, 77 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 941342f4be85..80cd7a106303 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1348,6 +1348,16 @@ struct ice_aqc_set_port_id_led {
 	u8 rsvd[13];
 };
 
+/* Set/Get GPIO (direct, 0x06EC/0x06ED) */
+struct ice_aqc_gpio {
+	__le16 gpio_ctrl_handle;
+#define ICE_AQC_GPIO_HANDLE_S	0
+#define ICE_AQC_GPIO_HANDLE_M	(0x3FF << ICE_AQC_GPIO_HANDLE_S)
+	u8 gpio_num;
+	u8 gpio_val;
+	u8 rsvd[12];
+};
+
 /* Read/Write SFF EEPROM command (indirect 0x06EE) */
 struct ice_aqc_sff_eeprom {
 	u8 lport_num;
@@ -1989,6 +1999,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_phy_caps get_phy;
 		struct ice_aqc_set_phy_cfg set_phy;
 		struct ice_aqc_restart_an restart_an;
+		struct ice_aqc_gpio read_write_gpio;
 		struct ice_aqc_sff_eeprom read_write_sff_param;
 		struct ice_aqc_set_port_id_led set_port_id_led;
 		struct ice_aqc_get_sw_cfg get_sw_conf;
@@ -2144,6 +2155,8 @@ enum ice_adminq_opc {
 	ice_aqc_opc_set_mac_lb				= 0x0620,
 	ice_aqc_opc_get_link_topo			= 0x06E0,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
+	ice_aqc_opc_set_gpio				= 0x06EC,
+	ice_aqc_opc_get_gpio				= 0x06ED,
 	ice_aqc_opc_sff_eeprom				= 0x06EE,
 
 	/* NVM commands */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5822589aebdc..4b3f2375cbb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4806,6 +4806,64 @@ ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 	return 0;
 }
 
+/**
+ * ice_aq_set_gpio
+ * @hw: pointer to the hw struct
+ * @gpio_ctrl_handle: GPIO controller node handle
+ * @pin_idx: IO Number of the GPIO that needs to be set
+ * @value: SW provide IO value to set in the LSB
+ * @cd: pointer to command details structure or NULL
+ *
+ * Sends 0x06EC AQ command to set the GPIO pin state that's part of the topology
+ */
+enum ice_status
+ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
+		struct ice_sq_cd *cd)
+{
+	struct ice_aqc_gpio *cmd;
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_gpio);
+	cmd = &desc.params.read_write_gpio;
+	cmd->gpio_ctrl_handle = cpu_to_le16(gpio_ctrl_handle);
+	cmd->gpio_num = pin_idx;
+	cmd->gpio_val = value ? 1 : 0;
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
+/**
+ * ice_aq_get_gpio
+ * @hw: pointer to the hw struct
+ * @gpio_ctrl_handle: GPIO controller node handle
+ * @pin_idx: IO Number of the GPIO that needs to be set
+ * @value: IO value read
+ * @cd: pointer to command details structure or NULL
+ *
+ * Sends 0x06ED AQ command to get the value of a GPIO signal which is part of
+ * the topology
+ */
+enum ice_status
+ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
+		bool *value, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_gpio *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_gpio);
+	cmd = &desc.params.read_write_gpio;
+	cmd->gpio_ctrl_handle = cpu_to_le16(gpio_ctrl_handle);
+	cmd->gpio_num = pin_idx;
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+	if (status)
+		return status;
+
+	*value = !!cmd->gpio_val;
+	return 0;
+}
+
 /**
  * ice_fw_supports_link_override
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index fb16070f02e2..60da1af35324 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -193,6 +193,12 @@ int
 ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 			u32 *value, struct ice_sq_cd *cd);
 enum ice_status
+ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
+		struct ice_sq_cd *cd);
+enum ice_status
+ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
+		bool *value, struct ice_sq_cd *cd);
+enum ice_status
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
 bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

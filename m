Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D48C58FD0B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 15:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E14B610EC;
	Thu, 11 Aug 2022 13:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E14B610EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660223159;
	bh=8ipBUGrsBeEtE1dMyE3hXizp+kTDj27g+/2Sz1UFnEY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CVOES7KVsXMsajsXxF9ObAaJSweV3GytQ24IZ1JsB6USsI3XvKZgGJWRyoCaE+Yo9
	 T1BR+9AcZJPB4/RzwTw2vaOl+siMbSFUFKs4AE4vJcR1NNpwyMDnd1TGsZFvrGdFi1
	 Y3YcTgDuF9vtZOUaBqF2CQWKrKL8A53XJQE6Qh6TxxB+JjIZK5vN5DDHVbJP3mAVvz
	 /opvjDPEnAOl74lvLwjemWoPsTLJk5YWdBJCRjR6xSAiLX6dCOWKHd1jWWbK59yJ7L
	 xcxFLDLsPsgWYrxf5t75mNiGPGt3SkPlmxsOqv9XgPRI52y0wLKCcWJmcfsfLkLC2s
	 wfYBPGBZtjyVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qn7SFCukIBSX; Thu, 11 Aug 2022 13:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32BFE610E5;
	Thu, 11 Aug 2022 13:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32BFE610E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B281A1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5078541821
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5078541821
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uftf4qH5yiGb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 13:05:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59D1C41813
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59D1C41813
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355342585"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="355342585"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="933304206"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 06:05:40 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 15:05:33 +0200
Message-Id: <20220811130535.1053828-2-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
References: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223142; x=1691759142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GwW/WK2hzz+hzeE5SFGK0IoRAoupQOMWjY8qRGVh/LE=;
 b=GERWQQoL2PFrFUeQySzGpWHObIfG6QUcYiyj/VUVUr2LkXOfoubehCNA
 cTsz0vIwQlnHpJ+kDDA/IAclFOHncxcA06dYVxfHgMDkgGYLBYB2xGx0Q
 58hmA6F+ZZoTM79nNyLKkHrRET1N6cGBpsUvHBBv7U8aSI5C3gOvxDZyu
 es4e3BZsd1krZzeXcZP3qxY+k+wMUNQEf7rDzib47OmM/EALUBk7bZPpC
 TtVF9d5KesG9XdvpTHMlpy0XzERBTh5b7XE6aW/LQW0bICgUlfYwnq+Xa
 6pAYEurmDCY2us/9shb3l2lf1gI2GqRZizcJQba/bj3mrRFef+7YVmj3H
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GERWQQoL
Subject: [Intel-wired-lan] [PATCH net-next v1 1/3] ice: Add port option
 admin queue commands
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Damian Milosek <damian.milosek@intel.com>, Lev Faerman <lev.faerman@intel.com>,
 Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement support for Get/Set Port Options admin queue commands
(0x06EA/0x06EB). These firmware commands allow the driver to change port
specific options and will be used in the next patch.

Co-developed-by: Lev Faerman <lev.faerman@intel.com>
Signed-off-by: Lev Faerman <lev.faerman@intel.com>
Co-developed-by: Damian Milosek <damian.milosek@intel.com>
Signed-off-by: Damian Milosek <damian.milosek@intel.com>
Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  53 ++++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 115 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   9 ++
 3 files changed, 177 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 9939238573a4..7eb8162c2ecc 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1423,6 +1423,55 @@ struct ice_aqc_set_port_id_led {
 	u8 rsvd[13];
 };
 
+/* Get Port Options (indirect, 0x06EA) */
+struct ice_aqc_get_port_options {
+	u8 lport_num;
+	u8 lport_num_valid;
+	u8 port_options_count;
+#define ICE_AQC_PORT_OPT_COUNT_M	GENMASK(3, 0)
+#define ICE_AQC_PORT_OPT_MAX		16
+
+	u8 innermost_phy_index;
+	u8 port_options;
+#define ICE_AQC_PORT_OPT_ACTIVE_M	GENMASK(3, 0)
+#define ICE_AQC_PORT_OPT_VALID		BIT(7)
+
+	u8 pending_port_option_status;
+#define ICE_AQC_PENDING_PORT_OPT_IDX_M	GENMASK(3, 0)
+#define ICE_AQC_PENDING_PORT_OPT_VALID	BIT(7)
+
+	u8 rsvd[2];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+struct ice_aqc_get_port_options_elem {
+	u8 pmd;
+#define ICE_AQC_PORT_OPT_PMD_COUNT_M	GENMASK(3, 0)
+
+	u8 max_lane_speed;
+#define ICE_AQC_PORT_OPT_MAX_LANE_M	GENMASK(3, 0)
+#define ICE_AQC_PORT_OPT_MAX_LANE_100M	0
+#define ICE_AQC_PORT_OPT_MAX_LANE_1G	1
+#define ICE_AQC_PORT_OPT_MAX_LANE_2500M	2
+#define ICE_AQC_PORT_OPT_MAX_LANE_5G	3
+#define ICE_AQC_PORT_OPT_MAX_LANE_10G	4
+#define ICE_AQC_PORT_OPT_MAX_LANE_25G	5
+#define ICE_AQC_PORT_OPT_MAX_LANE_50G	6
+#define ICE_AQC_PORT_OPT_MAX_LANE_100G	7
+	u8 global_scid[2];
+	u8 phy_scid[2];
+	u8 pf2port_cid[2];
+};
+
+/* Set Port Option (direct, 0x06EB) */
+struct ice_aqc_set_port_option {
+	u8 lport_num;
+	u8 lport_num_valid;
+	u8 selected_port_option;
+	u8 rsvd[13];
+};
+
 /* Set/Get GPIO (direct, 0x06EC/0x06ED) */
 struct ice_aqc_gpio {
 	__le16 gpio_ctrl_handle;
@@ -2082,6 +2131,8 @@ struct ice_aq_desc {
 		struct ice_aqc_gpio read_write_gpio;
 		struct ice_aqc_sff_eeprom read_write_sff_param;
 		struct ice_aqc_set_port_id_led set_port_id_led;
+		struct ice_aqc_get_port_options get_port_options;
+		struct ice_aqc_set_port_option set_port_option;
 		struct ice_aqc_get_sw_cfg get_sw_conf;
 		struct ice_aqc_set_port_params set_port_params;
 		struct ice_aqc_sw_rules sw_rules;
@@ -2243,6 +2294,8 @@ enum ice_adminq_opc {
 	ice_aqc_opc_read_i2c				= 0x06E2,
 	ice_aqc_opc_write_i2c				= 0x06E3,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
+	ice_aqc_opc_get_port_options			= 0x06EA,
+	ice_aqc_opc_set_port_option			= 0x06EB,
 	ice_aqc_opc_set_gpio				= 0x06EC,
 	ice_aqc_opc_get_gpio				= 0x06ED,
 	ice_aqc_opc_sff_eeprom				= 0x06EE,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 27d0cbbd29da..93f39cabf0ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3534,6 +3534,121 @@ ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
+/**
+ * ice_aq_get_port_options
+ * @hw: pointer to the hw struct
+ * @options: buffer for the resultant port options
+ * @option_count: input - size of the buffer in port options structures,
+ *                output - number of returned port options
+ * @lport: logical port to call the command with (optional)
+ * @lport_valid: when false, FW uses port owned by the PF instead of lport,
+ *               when PF owns more than 1 port it must be true
+ * @active_option_idx: index of active port option in returned buffer
+ * @active_option_valid: active option in returned buffer is valid
+ * @pending_option_idx: index of pending port option in returned buffer
+ * @pending_option_valid: pending option in returned buffer is valid
+ *
+ * Calls Get Port Options AQC (0x06ea) and verifies result.
+ */
+int
+ice_aq_get_port_options(struct ice_hw *hw,
+			struct ice_aqc_get_port_options_elem *options,
+			u8 *option_count, u8 lport, bool lport_valid,
+			u8 *active_option_idx, bool *active_option_valid,
+			u8 *pending_option_idx, bool *pending_option_valid)
+{
+	struct ice_aqc_get_port_options *cmd;
+	struct ice_aq_desc desc;
+	int status;
+	u8 i;
+
+	/* options buffer shall be able to hold max returned options */
+	if (*option_count < ICE_AQC_PORT_OPT_COUNT_M)
+		return -EINVAL;
+
+	cmd = &desc.params.get_port_options;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_port_options);
+
+	if (lport_valid)
+		cmd->lport_num = lport;
+	cmd->lport_num_valid = lport_valid;
+
+	status = ice_aq_send_cmd(hw, &desc, options,
+				 *option_count * sizeof(*options), NULL);
+	if (status)
+		return status;
+
+	/* verify direct FW response & set output parameters */
+	*option_count = FIELD_GET(ICE_AQC_PORT_OPT_COUNT_M,
+				  cmd->port_options_count);
+	ice_debug(hw, ICE_DBG_PHY, "options: %x\n", *option_count);
+	*active_option_valid = FIELD_GET(ICE_AQC_PORT_OPT_VALID,
+					 cmd->port_options);
+	if (*active_option_valid) {
+		*active_option_idx = FIELD_GET(ICE_AQC_PORT_OPT_ACTIVE_M,
+					       cmd->port_options);
+		if (*active_option_idx > (*option_count - 1))
+			return -EIO;
+		ice_debug(hw, ICE_DBG_PHY, "active idx: %x\n",
+			  *active_option_idx);
+	}
+
+	*pending_option_valid = FIELD_GET(ICE_AQC_PENDING_PORT_OPT_VALID,
+					  cmd->pending_port_option_status);
+	if (*pending_option_valid) {
+		*pending_option_idx = FIELD_GET(ICE_AQC_PENDING_PORT_OPT_IDX_M,
+						cmd->pending_port_option_status);
+		if (*pending_option_idx > (*option_count - 1))
+			return -EIO;
+		ice_debug(hw, ICE_DBG_PHY, "pending idx: %x\n",
+			  *pending_option_idx);
+	}
+
+	/* mask output options fields */
+	for (i = 0; i < *option_count; i++) {
+		options[i].pmd = FIELD_GET(ICE_AQC_PORT_OPT_PMD_COUNT_M,
+					   options[i].pmd);
+		options[i].max_lane_speed = FIELD_GET(ICE_AQC_PORT_OPT_MAX_LANE_M,
+						      options[i].max_lane_speed);
+		ice_debug(hw, ICE_DBG_PHY, "pmds: %x max speed: %x\n",
+			  options[i].pmd, options[i].max_lane_speed);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_aq_set_port_option
+ * @hw: pointer to the hw struct
+ * @lport: logical port to call the command with
+ * @lport_valid: when false, FW uses port owned by the PF instead of lport,
+ *               when PF owns more than 1 port it must be true
+ * @new_option: new port option to be written
+ *
+ * Calls Set Port Options AQC (0x06eb).
+ */
+int
+ice_aq_set_port_option(struct ice_hw *hw, u8 lport, u8 lport_valid,
+		       u8 new_option)
+{
+	struct ice_aqc_set_port_option *cmd;
+	struct ice_aq_desc desc;
+
+	if (new_option > ICE_AQC_PORT_OPT_COUNT_M)
+		return -EINVAL;
+
+	cmd = &desc.params.set_port_option;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_option);
+
+	if (lport_valid)
+		cmd->lport_num = lport;
+
+	cmd->lport_num_valid = lport_valid;
+	cmd->selected_port_option = new_option;
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
+
 /**
  * ice_aq_sff_eeprom
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 61b7c60db689..e5ead3f2ba54 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -151,6 +151,15 @@ int
 ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 		       struct ice_sq_cd *cd);
 int
+ice_aq_get_port_options(struct ice_hw *hw,
+			struct ice_aqc_get_port_options_elem *options,
+			u8 *option_count, u8 lport, bool lport_valid,
+			u8 *active_option_idx, bool *active_option_valid,
+			u8 *pending_option_idx, bool *pending_option_valid);
+int
+ice_aq_set_port_option(struct ice_hw *hw, u8 lport, u8 lport_valid,
+		       u8 new_option);
+int
 ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
 		  bool write, struct ice_sq_cd *cd);
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

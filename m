Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0805E752CFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 00:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E29742151;
	Thu, 13 Jul 2023 22:26:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E29742151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689287192;
	bh=WPucfRrIdJZZN3j8O0VEMyO8un/gIpe68Sgg5QK9Sy4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n8fatjXQkOhg4krU3OYvhkfTz6JZXySoH3X44xyWkM8Z4JfRSZfoOFRzqVzlmwOzM
	 tDMsUfL0diM1HZ5cDCD/KYT4muHXdRoYl6aiRm1ZSMnj2lf/Ku9aHWCiX3p63Y07PH
	 ke6DHZY9vvCMMkY9TsxlugZAujRlbOGsH0xGn0ppeR7Clej3cRj1n1fQHhKv+lAppp
	 0RRtSg3K7Mo8WHITHnP562A0H67o09h3BcDFZFe6u3M+RqwQVlmYcHY0Rm85zQT4Vx
	 H9zYCmKpYlMby/hcGj9ZcFre1qqGj9n4mcAWX0urEj+xx7oLUb6v2wZY3BF3eSvg+q
	 MybR8364VpvCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQ7cZjMU67bh; Thu, 13 Jul 2023 22:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E59A42150;
	Thu, 13 Jul 2023 22:26:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E59A42150
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BB121BF37E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02C0683CE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:26:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02C0683CE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L7FUOnWQnq2B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 22:26:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4D3283CDB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4D3283CDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:26:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="355267540"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="355267540"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 15:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="835782022"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="835782022"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.113.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 15:26:07 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jul 2023 15:25:54 -0700
Message-Id: <20230713222558.142-2-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689287182; x=1720823182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LtXkOAMQXM8W3oPK2ZrtM7BxZeNg6AIlBu21c6tG01I=;
 b=Z8Lx4qG65fpzOt1UQN4r2zqdvQb8f+1+yTYISpF2GbhHqXCdLJpfSkXQ
 cALrxpvjd1kgsORG1cd4XGiAR/o5Ko0rz3fxBLfYv/C1QfyvTFqxQkTmg
 zi6w9BZrx/MuPqffzlVZH3uu78NMk52lBD4V3cuc7uGe8DVvA8hluzd0y
 m7c7tqCod0O2yYhrixW4iwSdnSPZAvJ9yJ7WUXvhge2ZVoReCkgJ7XR3o
 7Xm90LijPKeTzoqvv+Dy8El1p/p8Vo+T7ZALPlCoV7vLoIv1Ky6SyTnXo
 PyZFb7m6oNjiG63AzBijffcdnWOAaRI30ShkRWL++pHHf3ThmZWDC6KbY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z8Lx4qG6
Subject: [Intel-wired-lan] [PATCH net-next v14 1/5] ice: remove FW logging
 code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The FW logging code doesn't work because there is no way to set
cq_ena or uart_ena so remove the code. This code is the original
(v1) way of FW logging so it should be replaced with the v2 way.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v13->v14: none
v12->v13: none
v11->v12: none
v10->v11: none
v9->v10: none
v8->v9: none
v7->v8: none
v6->v7: none
v5->v6: none
v4->v5: none
v3->v4: none
v2->v3: none
v1->v2: none
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  78 -------
 drivers/net/ethernet/intel/ice/ice_common.c   | 217 ------------------
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
 drivers/net/ethernet/intel/ice/ice_type.h     |  20 --
 5 files changed, 319 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index ab271d712975..87b5be9070e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1998,78 +1998,6 @@ struct ice_aqc_add_rdma_qset_data {
 	struct ice_aqc_add_tx_rdma_qset_entry rdma_qsets[];
 };
 
-/* Configure Firmware Logging Command (indirect 0xFF09)
- * Logging Information Read Response (indirect 0xFF10)
- * Note: The 0xFF10 command has no input parameters.
- */
-struct ice_aqc_fw_logging {
-	u8 log_ctrl;
-#define ICE_AQC_FW_LOG_AQ_EN		BIT(0)
-#define ICE_AQC_FW_LOG_UART_EN		BIT(1)
-	u8 rsvd0;
-	u8 log_ctrl_valid; /* Not used by 0xFF10 Response */
-#define ICE_AQC_FW_LOG_AQ_VALID		BIT(0)
-#define ICE_AQC_FW_LOG_UART_VALID	BIT(1)
-	u8 rsvd1[5];
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
-enum ice_aqc_fw_logging_mod {
-	ICE_AQC_FW_LOG_ID_GENERAL = 0,
-	ICE_AQC_FW_LOG_ID_CTRL,
-	ICE_AQC_FW_LOG_ID_LINK,
-	ICE_AQC_FW_LOG_ID_LINK_TOPO,
-	ICE_AQC_FW_LOG_ID_DNL,
-	ICE_AQC_FW_LOG_ID_I2C,
-	ICE_AQC_FW_LOG_ID_SDP,
-	ICE_AQC_FW_LOG_ID_MDIO,
-	ICE_AQC_FW_LOG_ID_ADMINQ,
-	ICE_AQC_FW_LOG_ID_HDMA,
-	ICE_AQC_FW_LOG_ID_LLDP,
-	ICE_AQC_FW_LOG_ID_DCBX,
-	ICE_AQC_FW_LOG_ID_DCB,
-	ICE_AQC_FW_LOG_ID_NETPROXY,
-	ICE_AQC_FW_LOG_ID_NVM,
-	ICE_AQC_FW_LOG_ID_AUTH,
-	ICE_AQC_FW_LOG_ID_VPD,
-	ICE_AQC_FW_LOG_ID_IOSF,
-	ICE_AQC_FW_LOG_ID_PARSER,
-	ICE_AQC_FW_LOG_ID_SW,
-	ICE_AQC_FW_LOG_ID_SCHEDULER,
-	ICE_AQC_FW_LOG_ID_TXQ,
-	ICE_AQC_FW_LOG_ID_RSVD,
-	ICE_AQC_FW_LOG_ID_POST,
-	ICE_AQC_FW_LOG_ID_WATCHDOG,
-	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
-	ICE_AQC_FW_LOG_ID_MNG,
-	ICE_AQC_FW_LOG_ID_MAX,
-};
-
-/* Defines for both above FW logging command/response buffers */
-#define ICE_AQC_FW_LOG_ID_S		0
-#define ICE_AQC_FW_LOG_ID_M		(0xFFF << ICE_AQC_FW_LOG_ID_S)
-
-#define ICE_AQC_FW_LOG_CONF_SUCCESS	0	/* Used by response */
-#define ICE_AQC_FW_LOG_CONF_BAD_INDX	BIT(12)	/* Used by response */
-
-#define ICE_AQC_FW_LOG_EN_S		12
-#define ICE_AQC_FW_LOG_EN_M		(0xF << ICE_AQC_FW_LOG_EN_S)
-#define ICE_AQC_FW_LOG_INFO_EN		BIT(12)	/* Used by command */
-#define ICE_AQC_FW_LOG_INIT_EN		BIT(13)	/* Used by command */
-#define ICE_AQC_FW_LOG_FLOW_EN		BIT(14)	/* Used by command */
-#define ICE_AQC_FW_LOG_ERR_EN		BIT(15)	/* Used by command */
-
-/* Get/Clear FW Log (indirect 0xFF11) */
-struct ice_aqc_get_clear_fw_log {
-	u8 flags;
-#define ICE_AQC_FW_LOG_CLEAR		BIT(0)
-#define ICE_AQC_FW_LOG_MORE_DATA_AVAIL	BIT(1)
-	u8 rsvd1[7];
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
 /* Download Package (indirect 0x0C40) */
 /* Also used for Update Package (indirect 0x0C41 and 0x0C42) */
 struct ice_aqc_download_pkg {
@@ -2230,8 +2158,6 @@ struct ice_aq_desc {
 		struct ice_aqc_add_rdma_qset add_rdma_qset;
 		struct ice_aqc_add_get_update_free_vsi vsi_cmd;
 		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
-		struct ice_aqc_fw_logging fw_logging;
-		struct ice_aqc_get_clear_fw_log get_clear_fw_log;
 		struct ice_aqc_download_pkg download_pkg;
 		struct ice_aqc_driver_shared_params drv_shared_params;
 		struct ice_aqc_set_mac_lb set_mac_lb;
@@ -2416,10 +2342,6 @@ enum ice_adminq_opc {
 
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
-
-	/* debug commands */
-	ice_aqc_opc_fw_logging				= 0xFF09,
-	ice_aqc_opc_fw_logging_info			= 0xFF10,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6899f6af1866..fb52cf372d2f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -821,216 +821,6 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
 	devm_kfree(ice_hw_to_dev(hw), sw);
 }
 
-/**
- * ice_get_fw_log_cfg - get FW logging configuration
- * @hw: pointer to the HW struct
- */
-static int ice_get_fw_log_cfg(struct ice_hw *hw)
-{
-	struct ice_aq_desc desc;
-	__le16 *config;
-	int status;
-	u16 size;
-
-	size = sizeof(*config) * ICE_AQC_FW_LOG_ID_MAX;
-	config = kzalloc(size, GFP_KERNEL);
-	if (!config)
-		return -ENOMEM;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logging_info);
-
-	status = ice_aq_send_cmd(hw, &desc, config, size, NULL);
-	if (!status) {
-		u16 i;
-
-		/* Save FW logging information into the HW structure */
-		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
-			u16 v, m, flgs;
-
-			v = le16_to_cpu(config[i]);
-			m = (v & ICE_AQC_FW_LOG_ID_M) >> ICE_AQC_FW_LOG_ID_S;
-			flgs = (v & ICE_AQC_FW_LOG_EN_M) >> ICE_AQC_FW_LOG_EN_S;
-
-			if (m < ICE_AQC_FW_LOG_ID_MAX)
-				hw->fw_log.evnts[m].cur = flgs;
-		}
-	}
-
-	kfree(config);
-
-	return status;
-}
-
-/**
- * ice_cfg_fw_log - configure FW logging
- * @hw: pointer to the HW struct
- * @enable: enable certain FW logging events if true, disable all if false
- *
- * This function enables/disables the FW logging via Rx CQ events and a UART
- * port based on predetermined configurations. FW logging via the Rx CQ can be
- * enabled/disabled for individual PF's. However, FW logging via the UART can
- * only be enabled/disabled for all PFs on the same device.
- *
- * To enable overall FW logging, the "cq_en" and "uart_en" enable bits in
- * hw->fw_log need to be set accordingly, e.g. based on user-provided input,
- * before initializing the device.
- *
- * When re/configuring FW logging, callers need to update the "cfg" elements of
- * the hw->fw_log.evnts array with the desired logging event configurations for
- * modules of interest. When disabling FW logging completely, the callers can
- * just pass false in the "enable" parameter. On completion, the function will
- * update the "cur" element of the hw->fw_log.evnts array with the resulting
- * logging event configurations of the modules that are being re/configured. FW
- * logging modules that are not part of a reconfiguration operation retain their
- * previous states.
- *
- * Before resetting the device, it is recommended that the driver disables FW
- * logging before shutting down the control queue. When disabling FW logging
- * ("enable" = false), the latest configurations of FW logging events stored in
- * hw->fw_log.evnts[] are not overridden to allow them to be reconfigured after
- * a device reset.
- *
- * When enabling FW logging to emit log messages via the Rx CQ during the
- * device's initialization phase, a mechanism alternative to interrupt handlers
- * needs to be used to extract FW log messages from the Rx CQ periodically and
- * to prevent the Rx CQ from being full and stalling other types of control
- * messages from FW to SW. Interrupts are typically disabled during the device's
- * initialization phase.
- */
-static int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
-{
-	struct ice_aqc_fw_logging *cmd;
-	u16 i, chgs = 0, len = 0;
-	struct ice_aq_desc desc;
-	__le16 *data = NULL;
-	u8 actv_evnts = 0;
-	void *buf = NULL;
-	int status = 0;
-
-	if (!hw->fw_log.cq_en && !hw->fw_log.uart_en)
-		return 0;
-
-	/* Disable FW logging only when the control queue is still responsive */
-	if (!enable &&
-	    (!hw->fw_log.actv_evnts || !ice_check_sq_alive(hw, &hw->adminq)))
-		return 0;
-
-	/* Get current FW log settings */
-	status = ice_get_fw_log_cfg(hw);
-	if (status)
-		return status;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logging);
-	cmd = &desc.params.fw_logging;
-
-	/* Indicate which controls are valid */
-	if (hw->fw_log.cq_en)
-		cmd->log_ctrl_valid |= ICE_AQC_FW_LOG_AQ_VALID;
-
-	if (hw->fw_log.uart_en)
-		cmd->log_ctrl_valid |= ICE_AQC_FW_LOG_UART_VALID;
-
-	if (enable) {
-		/* Fill in an array of entries with FW logging modules and
-		 * logging events being reconfigured.
-		 */
-		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
-			u16 val;
-
-			/* Keep track of enabled event types */
-			actv_evnts |= hw->fw_log.evnts[i].cfg;
-
-			if (hw->fw_log.evnts[i].cfg == hw->fw_log.evnts[i].cur)
-				continue;
-
-			if (!data) {
-				data = devm_kcalloc(ice_hw_to_dev(hw),
-						    ICE_AQC_FW_LOG_ID_MAX,
-						    sizeof(*data),
-						    GFP_KERNEL);
-				if (!data)
-					return -ENOMEM;
-			}
-
-			val = i << ICE_AQC_FW_LOG_ID_S;
-			val |= hw->fw_log.evnts[i].cfg << ICE_AQC_FW_LOG_EN_S;
-			data[chgs++] = cpu_to_le16(val);
-		}
-
-		/* Only enable FW logging if at least one module is specified.
-		 * If FW logging is currently enabled but all modules are not
-		 * enabled to emit log messages, disable FW logging altogether.
-		 */
-		if (actv_evnts) {
-			/* Leave if there is effectively no change */
-			if (!chgs)
-				goto out;
-
-			if (hw->fw_log.cq_en)
-				cmd->log_ctrl |= ICE_AQC_FW_LOG_AQ_EN;
-
-			if (hw->fw_log.uart_en)
-				cmd->log_ctrl |= ICE_AQC_FW_LOG_UART_EN;
-
-			buf = data;
-			len = sizeof(*data) * chgs;
-			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-		}
-	}
-
-	status = ice_aq_send_cmd(hw, &desc, buf, len, NULL);
-	if (!status) {
-		/* Update the current configuration to reflect events enabled.
-		 * hw->fw_log.cq_en and hw->fw_log.uart_en indicate if the FW
-		 * logging mode is enabled for the device. They do not reflect
-		 * actual modules being enabled to emit log messages. So, their
-		 * values remain unchanged even when all modules are disabled.
-		 */
-		u16 cnt = enable ? chgs : (u16)ICE_AQC_FW_LOG_ID_MAX;
-
-		hw->fw_log.actv_evnts = actv_evnts;
-		for (i = 0; i < cnt; i++) {
-			u16 v, m;
-
-			if (!enable) {
-				/* When disabling all FW logging events as part
-				 * of device's de-initialization, the original
-				 * configurations are retained, and can be used
-				 * to reconfigure FW logging later if the device
-				 * is re-initialized.
-				 */
-				hw->fw_log.evnts[i].cur = 0;
-				continue;
-			}
-
-			v = le16_to_cpu(data[i]);
-			m = (v & ICE_AQC_FW_LOG_ID_M) >> ICE_AQC_FW_LOG_ID_S;
-			hw->fw_log.evnts[m].cur = hw->fw_log.evnts[m].cfg;
-		}
-	}
-
-out:
-	devm_kfree(ice_hw_to_dev(hw), data);
-
-	return status;
-}
-
-/**
- * ice_output_fw_log
- * @hw: pointer to the HW struct
- * @desc: pointer to the AQ message descriptor
- * @buf: pointer to the buffer accompanying the AQ message
- *
- * Formats a FW Log message and outputs it via the standard driver logs.
- */
-void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf)
-{
-	ice_debug(hw, ICE_DBG_FW_LOG, "[ FW Log Msg Start ]\n");
-	ice_debug_array(hw, ICE_DBG_FW_LOG, 16, 1, (u8 *)buf,
-			le16_to_cpu(desc->datalen));
-	ice_debug(hw, ICE_DBG_FW_LOG, "[ FW Log Msg End ]\n");
-}
-
 /**
  * ice_get_itr_intrl_gran
  * @hw: pointer to the HW struct
@@ -1088,11 +878,6 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
-	/* Enable FW logging. Not fatal if this fails. */
-	status = ice_cfg_fw_log(hw, true);
-	if (status)
-		ice_debug(hw, ICE_DBG_INIT, "Failed to enable FW logging.\n");
-
 	status = ice_clear_pf_cfg(hw);
 	if (status)
 		goto err_unroll_cqinit;
@@ -1242,8 +1027,6 @@ void ice_deinit_hw(struct ice_hw *hw)
 	ice_free_hw_tbls(hw);
 	mutex_destroy(&hw->tnl_lock);
 
-	/* Attempt to disable FW logging before shutting down control queues */
-	ice_cfg_fw_log(hw, false);
 	ice_destroy_all_ctrlq(hw);
 
 	/* Clear VSI contexts if not already cleared */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index df12a9d8d28c..db95a1d2d878 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -192,7 +192,6 @@ ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
 		   struct ice_sq_cd *cd);
 int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
-void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf);
 struct ice_q_ctx *
 ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle);
 int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 637656c3e173..b36518fc920f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1530,9 +1530,6 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 
 			ice_vc_process_vf_msg(pf, &event, &data);
 			break;
-		case ice_aqc_opc_fw_logging:
-			ice_output_fw_log(hw, &event.desc, event.msg_buf);
-			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index bf47936e396a..8b5051bad1fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -729,24 +729,6 @@ struct ice_switch_info {
 	DECLARE_BITMAP(prof_res_bm[ICE_MAX_NUM_PROFILES], ICE_MAX_FV_WORDS);
 };
 
-/* FW logging configuration */
-struct ice_fw_log_evnt {
-	u8 cfg : 4;	/* New event enables to configure */
-	u8 cur : 4;	/* Current/active event enables */
-};
-
-struct ice_fw_log_cfg {
-	u8 cq_en : 1;    /* FW logging is enabled via the control queue */
-	u8 uart_en : 1;  /* FW logging is enabled via UART for all PFs */
-	u8 actv_evnts;   /* Cumulation of currently enabled log events */
-
-#define ICE_FW_LOG_EVNT_INFO	(ICE_AQC_FW_LOG_INFO_EN >> ICE_AQC_FW_LOG_EN_S)
-#define ICE_FW_LOG_EVNT_INIT	(ICE_AQC_FW_LOG_INIT_EN >> ICE_AQC_FW_LOG_EN_S)
-#define ICE_FW_LOG_EVNT_FLOW	(ICE_AQC_FW_LOG_FLOW_EN >> ICE_AQC_FW_LOG_EN_S)
-#define ICE_FW_LOG_EVNT_ERR	(ICE_AQC_FW_LOG_ERR_EN >> ICE_AQC_FW_LOG_EN_S)
-	struct ice_fw_log_evnt evnts[ICE_AQC_FW_LOG_ID_MAX];
-};
-
 /* Enum defining the different states of the mailbox snapshot in the
  * PF-VF mailbox overflow detection algorithm. The snapshot can be in
  * states:
@@ -880,8 +862,6 @@ struct ice_hw {
 	u8 fw_patch;		/* firmware patch version */
 	u32 fw_build;		/* firmware build number */
 
-	struct ice_fw_log_cfg fw_log;
-
 /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
  * register. Used for determining the ITR/INTRL granularity during
  * initialization.
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

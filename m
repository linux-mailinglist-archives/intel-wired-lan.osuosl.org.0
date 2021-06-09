Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 335703A1B3F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 18:51:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D348640535;
	Wed,  9 Jun 2021 16:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3o3d53bpQEZ; Wed,  9 Jun 2021 16:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8681E404AB;
	Wed,  9 Jun 2021 16:51:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33BEE1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 247064052E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pf5c3jJqBEZx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFD5D404AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
IronPort-SDR: P1SfUIxrjnsV/CY2GU5lZNIX8bU5DNAQ166Zjd1jQH8x/eIj79Eh6fOk+znlR+Kh1zl1s/rUl7
 TWpDyRU2z/vA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290743481"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="290743481"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 09:51:48 -0700
IronPort-SDR: 2RFfm/mGpIhxD2blRFBSXVv1X/B0w6arzXXqR4JlGIvnEZjZR3UgukGTgNddcMovxgeIJXLAAq
 PDdLjjb579hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="638054838"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jun 2021 09:51:48 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Jun 2021 09:39:48 -0700
Message-Id: <20210609163953.52440-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 3/8] ice: add support for set/get of
 driver-stored firmware parameters
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

From: Jacob Keller <jacob.e.keller@intel.com>

Depending on the device configuration, the ice hardware may share the
PTP hardware clock timer between multiple PFs. Each PF is informed by
firmware during initialization of the PTP timer association.

When bringing up PTP, only the PFs which own the timer shall allocate
a PTP hardware clock. Other PFs associated with that timer must report
the correct PTP clock index in order to allow userspace software the
ability to know which ports are connected to the same clock.

To support this, the firmware has driver shared parameters. These
parameters enable one PF to write the clock index into firmware, and
have other PFs read the associated value out. This enables the driver to
have only a single PF allocate and control the device timer registers,
while other PFs associated with that timer can report the correct clock
in the ETHTOOL_GET_TS_INFO report.

Add support for the necessary admin queue commands to enable reading and
writing of the driver shared parameters. This will be used in a future
change to enable sharing the PTP clock index between PF drivers.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 27 +++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 75 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
 3 files changed, 108 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f10c1b8555a4..21b4c7cd6f05 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1853,6 +1853,30 @@ struct ice_aqc_get_pkg_info_resp {
 	struct ice_aqc_get_pkg_info pkg_info[];
 };
 
+/* Driver Shared Parameters (direct, 0x0C90) */
+struct ice_aqc_driver_shared_params {
+	u8 set_or_get_op;
+#define ICE_AQC_DRIVER_PARAM_OP_MASK		BIT(0)
+#define ICE_AQC_DRIVER_PARAM_SET		0
+#define ICE_AQC_DRIVER_PARAM_GET		1
+	u8 param_indx;
+#define ICE_AQC_DRIVER_PARAM_MAX_IDX		15
+	u8 rsvd[2];
+	__le32 param_val;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+enum ice_aqc_driver_params {
+	/* OS clock index for PTP timer Domain 0 */
+	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 = 0,
+	/* OS clock index for PTP timer Domain 1 */
+	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1,
+
+	/* Add new parameters above */
+	ICE_AQC_DRIVER_PARAM_MAX = 16,
+};
+
 /* Lan Queue Overflow Event (direct, 0x1001) */
 struct ice_aqc_event_lan_overflow {
 	__le32 prtdcb_ruptq;
@@ -1930,6 +1954,7 @@ struct ice_aq_desc {
 		struct ice_aqc_fw_logging fw_logging;
 		struct ice_aqc_get_clear_fw_log get_clear_fw_log;
 		struct ice_aqc_download_pkg download_pkg;
+		struct ice_aqc_driver_shared_params drv_shared_params;
 		struct ice_aqc_set_mac_lb set_mac_lb;
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
 		struct ice_aqc_set_mac_cfg set_mac_cfg;
@@ -2083,6 +2108,8 @@ enum ice_adminq_opc {
 	ice_aqc_opc_update_pkg				= 0x0C42,
 	ice_aqc_opc_get_pkg_info_list			= 0x0C43,
 
+	ice_aqc_opc_driver_shared_params		= 0x0C90,
+
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 103839feb12e..c1f9d28bade8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4681,6 +4681,81 @@ ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 	return status;
 }
 
+/**
+ * ice_aq_set_driver_param - Set driver parameter to share via firmware
+ * @hw: pointer to the HW struct
+ * @idx: parameter index to set
+ * @value: the value to set the parameter to
+ * @cd: pointer to command details structure or NULL
+ *
+ * Set the value of one of the software defined parameters. All PFs connected
+ * to this device can read the value using ice_aq_get_driver_param.
+ *
+ * Note that firmware provides no synchronization or locking, and will not
+ * save the parameter value during a device reset. It is expected that
+ * a single PF will write the parameter value, while all other PFs will only
+ * read it.
+ */
+int
+ice_aq_set_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
+			u32 value, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_driver_shared_params *cmd;
+	struct ice_aq_desc desc;
+
+	if (idx >= ICE_AQC_DRIVER_PARAM_MAX)
+		return -EIO;
+
+	cmd = &desc.params.drv_shared_params;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_shared_params);
+
+	cmd->set_or_get_op = ICE_AQC_DRIVER_PARAM_SET;
+	cmd->param_indx = idx;
+	cmd->param_val = cpu_to_le32(value);
+
+	return ice_status_to_errno(ice_aq_send_cmd(hw, &desc, NULL, 0, cd));
+}
+
+/**
+ * ice_aq_get_driver_param - Get driver parameter shared via firmware
+ * @hw: pointer to the HW struct
+ * @idx: parameter index to set
+ * @value: storage to return the shared parameter
+ * @cd: pointer to command details structure or NULL
+ *
+ * Get the value of one of the software defined parameters.
+ *
+ * Note that firmware provides no synchronization or locking. It is expected
+ * that only a single PF will write a given parameter.
+ */
+int
+ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
+			u32 *value, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_driver_shared_params *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	if (idx >= ICE_AQC_DRIVER_PARAM_MAX)
+		return -EIO;
+
+	cmd = &desc.params.drv_shared_params;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_shared_params);
+
+	cmd->set_or_get_op = ICE_AQC_DRIVER_PARAM_GET;
+	cmd->param_indx = idx;
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+	if (status)
+		return ice_status_to_errno(status);
+
+	*value = le32_to_cpu(cmd->param_val);
+
+	return 0;
+}
+
 /**
  * ice_fw_supports_link_override
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 86bc261177d6..8cc0a639c208 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -185,6 +185,12 @@ ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 enum ice_status
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
+int
+ice_aq_set_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
+			u32 value, struct ice_sq_cd *cd);
+int
+ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
+			u32 *value, struct ice_sq_cd *cd);
 enum ice_status
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

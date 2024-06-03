Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1798D8257
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 14:34:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3B6E810F6;
	Mon,  3 Jun 2024 12:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCtW2cCt9uV2; Mon,  3 Jun 2024 12:34:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DC8C8113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717418055;
	bh=QM61+y3SpdtTIrjqF16xLyFpFhINALwLBwIJ2HhcLMI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=z2EcCN74idPJ1YQOeVDtKplZfghzLnY659mWTa2dkLjuPsUR8ATUyF0Wu2GD95XD+
	 /+4gc1reYZQ35yVYto2a/KabWkIufUgMHdHH340OPtY2mxf3Kq80BMXElV+QLPxKhd
	 CaBlFZiDVIQBYTWgGPJnmFYtgIgeVbl8S+gZVLH0pjHlidK2ACfmPwavRbXauc2Bws
	 2oKD3YbKiG6UPvtbhcXiZbrhufl8kDx+H/sUuxFybv/1JM4jKQY9YTBN2U1HdV/ZQl
	 bSJGO5r4gZCCmVKSYd7VhOqL18R2ZBXZT4yYEBhh2mru4qzY13XXXv+23E37kEIWHo
	 sJqan37bMvJXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DC8C8113D;
	Mon,  3 Jun 2024 12:34:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0955C1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E903C401CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id waHfV29Y_sA6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 12:34:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C1F0400E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C1F0400E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C1F0400E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:34:11 +0000 (UTC)
X-CSE-ConnectionGUID: 3CQ8Qgj4TaycAhFWDaheQQ==
X-CSE-MsgGUID: AmAgOYdBS2eb97jpIawqnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="14027056"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="14027056"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 05:33:52 -0700
X-CSE-ConnectionGUID: tF+69FOeQJWcy6PGVUIfuQ==
X-CSE-MsgGUID: /3iVlcE8RCiC8/VSTbW64A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37323426"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2024 05:33:50 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7671627BA0;
 Mon,  3 Jun 2024 13:33:47 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  3 Jun 2024 14:31:46 +0200
Message-Id: <20240603123146.735804-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717418051; x=1748954051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CUk4clDPawe1Sfjz7s7E0e7b7B4XWuqWF53X3hPjBl0=;
 b=F9UHGs3SlejUUag6GRYcVaFYNR3Cx3fH/6vs5lOaBSdZfsbqfaI4bsvS
 rjEjg0eFVxV0aYsIPR0gWv6RZfEb+jESqqW2uOcVBm2Lvi2wv0M+he+h0
 dNzT+WjVtZQxbFeipSNSi/0+QIYVgop93H+FQVA9CzmxcVTbV/0TU5Uao
 DNjNeefycigkvR79wDM4wNrU8MnwmkZ7de7BcUil2uQLouVGDgGDG1s71
 nUWrGwr9YapfN3hRSIjl5i29Yjg+D84hCXEjpMvDBSBtgXBk92PAMlsJF
 YzGAgWqHBWsBAbHKSXzaOPzKmnCvw7sNBp/uvDEugjNdaIGFD7W2U1D5u
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F9UHGs3S
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add support for devlink
 local_forwarding param.
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
Cc: jacob.e.keller@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Kaminski <pawel.kaminski@intel.com>

Add support for driver-specific devlink local_forwarding param.
Supported values are "enabled", "disabled" and "prioritized".
Default configuration is set to "enabled".

Add documentation in networking/devlink/ice.rst.

In previous generations of Intel NICs the transmit scheduler was only
limited by PCIe bandwidth when scheduling/assigning hairpin-badwidth
between VFs. Changes to E810 HW design introduced scheduler limitation,
so that available hairpin-bandwidth is bound to external port speed.
In order to address this limitation and enable NFV services such as
"service chaining" a knob to adjust the scheduler config was created.
Driver can send a configuration message to the FW over admin queue and
internal FW logic will reconfigure HW to prioritize and add more BW to
VF to VF traffic. As end result for example 10G port will no longer limit
hairpin-badwith to 10G and much higher speeds can be achieved.

Devlink local_forwarding param set to "prioritized" enables higher
hairpin-badwitdh on related PFs. Configuration is applicable only to
8x10G and 4x25G cards.

Changing local_forwarding configuration will trigger CORER reset in
order to take effect.

Example command to change current value:
devlink dev param set pci/0000:b2:00.3 name local_forwarding \
        value prioritized \
        cmode runtime

Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: Extend documentation
v3: rename loopback to local_forwarding
---
 Documentation/networking/devlink/ice.rst      |  23 ++++
 .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 5 files changed, 164 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 830c04354222..0eb64bd4710f 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -11,6 +11,7 @@ Parameters
 ==========
 
 .. list-table:: Generic parameters implemented
+   :widths: 5 5 90
 
    * - Name
      - Mode
@@ -68,6 +69,28 @@ Parameters
 
        To verify that value has been set:
        $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
+.. list-table:: Driver specific parameters implemented
+    :widths: 5 5 90
+
+    * - Name
+      - Mode
+      - Description
+    * - ``local_forwarding``
+      - runtime
+      - Controls loopback behavior by tuning scheduler bandwidth.
+        Supported values are:
+
+        ``enabled`` - VF to VF traffic is allowed on port
+
+        ``disabled`` - VF to VF traffic is not allowed on this port
+
+        ``prioritized`` - VF to VF traffic is prioritized on this port
+
+        Default value of ``local_forwarding`` parameter is ``enabled``.
+        ``prioritized`` provides ability to adjust VF to VF traffic rate to increase
+        one port capacity at cost of the another. User needs to disable
+        local forwarding on one of the ports in order have increased capacity
+        on the ``prioritized`` port.
 
 Info versions
 =============
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index f774781ab514..810a901d7afd 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1381,9 +1381,129 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+#define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
+#define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
+#define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
+
+/**
+ * ice_devlink_local_fwd_mode_to_str - Get string for local_fwd mode.
+ * @mode: local forwarding for mode used in port_info struct.
+ *
+ * Return: Mode respective string or "Invalid".
+ */
+static const char *
+ice_devlink_local_fwd_mode_to_str(enum ice_local_fwd_mode mode)
+{
+	switch (mode) {
+	case ICE_LOCAL_FWD_MODE_ENABLED:
+		return DEVLINK_LOCAL_FWD_ENABLED_STR;
+	case ICE_LOCAL_FWD_MODE_PRIORITIZED:
+		return DEVLINK_LOCAL_FWD_PRIORITIZED_STR;
+	case ICE_LOCAL_FWD_MODE_DISABLED:
+		return DEVLINK_LOCAL_FWD_DISABLED_STR;
+	}
+
+	return "Invalid";
+}
+
+/**
+ * ice_devlink_local_fwd_str_to_mode - Get local_fwd mode from string name.
+ * @mode_str: local forwarding mode string.
+ *
+ * Return: Mode value or negative number if invalid.
+ */
+static int ice_devlink_local_fwd_str_to_mode(const char *mode_str)
+{
+	if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_ENABLED_STR))
+		return ICE_LOCAL_FWD_MODE_ENABLED;
+	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_PRIORITIZED_STR))
+		return ICE_LOCAL_FWD_MODE_PRIORITIZED;
+	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_DISABLED_STR))
+		return ICE_LOCAL_FWD_MODE_DISABLED;
+
+	return -EINVAL;
+}
+
+/**
+ * ice_devlink_local_fwd_get - Get local_fwd parameter.
+ * @devlink: Pointer to the devlink instance.
+ * @id: The parameter ID to set.
+ * @ctx: Context to store the parameter value.
+ *
+ * Return: Zero.
+ */
+static int ice_devlink_local_fwd_get(struct devlink *devlink, u32 id,
+				     struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_port_info *pi;
+	const char *mode_str;
+
+	pi = pf->hw.port_info;
+	mode_str = ice_devlink_local_fwd_mode_to_str(pi->local_fwd_mode);
+	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
+
+	return 0;
+}
+
+/**
+ * ice_devlink_local_fwd_set - Set local_fwd parameter.
+ * @devlink: Pointer to the devlink instance.
+ * @id: The parameter ID to set.
+ * @ctx: Context to get the parameter value.
+ * @extack: Netlink extended ACK structure.
+ *
+ * Return: Zero.
+ */
+static int ice_devlink_local_fwd_set(struct devlink *devlink, u32 id,
+				     struct devlink_param_gset_ctx *ctx,
+				     struct netlink_ext_ack *extack)
+{
+	int new_local_fwd_mode = ice_devlink_local_fwd_str_to_mode(ctx->val.vstr);
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_port_info *pi;
+
+	pi = pf->hw.port_info;
+	if (pi->local_fwd_mode != new_local_fwd_mode) {
+		pi->local_fwd_mode = new_local_fwd_mode;
+		dev_info(dev, "Setting local_fwd to %s\n", ctx->val.vstr);
+		ice_schedule_reset(pf, ICE_RESET_CORER);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_local_fwd_validate - Validate passed local_fwd parameter value.
+ * @devlink: Unused pointer to devlink instance.
+ * @id: The parameter ID to validate.
+ * @val: Value to validate.
+ * @extack: Netlink extended ACK structure.
+ *
+ * Supported values are:
+ * "enabled" - local_fwd is enabled, "disabled" - local_fwd is disabled
+ * "prioritized" - local_fwd traffic is prioritized in scheduling.
+ *
+ * Return: Zero when passed parameter value is supported. Negative value on
+ * error.
+ */
+static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
+					  union devlink_param_value val,
+					  struct netlink_ext_ack *extack)
+{
+	if (ice_devlink_local_fwd_str_to_mode(val.vstr) < 0) {
+		NL_SET_ERR_MSG_MOD(extack, "Error: Requested value is not supported.");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 enum ice_param_id {
 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
+	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
 };
 
 static const struct devlink_param ice_dvl_rdma_params[] = {
@@ -1405,6 +1525,12 @@ static const struct devlink_param ice_dvl_sched_params[] = {
 			     ice_devlink_tx_sched_layers_get,
 			     ice_devlink_tx_sched_layers_set,
 			     ice_devlink_tx_sched_layers_validate),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
+			     "local_forwarding", DEVLINK_PARAM_TYPE_STRING,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_local_fwd_get,
+			     ice_devlink_local_fwd_set,
+			     ice_devlink_local_fwd_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 621a2ca7093e..9683842f8880 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -232,6 +232,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
 #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
 };
 
+/* Loopback port parameter mode values. */
+enum ice_local_fwd_mode {
+	ICE_LOCAL_FWD_MODE_ENABLED = 0,
+	ICE_LOCAL_FWD_MODE_DISABLED = 1,
+	ICE_LOCAL_FWD_MODE_PRIORITIZED = 2,
+};
+
 /* Set Port parameters, (direct, 0x0203) */
 struct ice_aqc_set_port_params {
 	__le16 cmd_flags;
@@ -240,7 +247,9 @@ struct ice_aqc_set_port_params {
 	__le16 swid;
 #define ICE_AQC_PORT_SWID_VALID			BIT(15)
 #define ICE_AQC_PORT_SWID_M			0xFF
-	u8 reserved[10];
+	u8 local_fwd_mode;
+#define ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID BIT(2)
+	u8 reserved[9];
 };
 
 /* These resource type defines are used for all switch resource
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9ae61cd8923e..60ad7774812c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1086,6 +1086,7 @@ int ice_init_hw(struct ice_hw *hw)
 		goto err_unroll_cqinit;
 	}
 
+	hw->port_info->local_fwd_mode = ICE_LOCAL_FWD_MODE_ENABLED;
 	/* set the back pointer to HW */
 	hw->port_info->hw = hw;
 
@@ -3070,6 +3071,9 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
 		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
 	cmd->cmd_flags = cpu_to_le16(cmd_flags);
 
+	cmd->local_fwd_mode = pi->local_fwd_mode |
+				ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID;
+
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index aac59c85a911..f3e4d8030f43 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -730,6 +730,7 @@ struct ice_port_info {
 	u16 sw_id;			/* Initial switch ID belongs to port */
 	u16 pf_vf_num;
 	u8 port_state;
+	u8 local_fwd_mode;
 #define ICE_SCHED_PORT_STATE_INIT	0x0
 #define ICE_SCHED_PORT_STATE_READY	0x1
 	u8 lport;
-- 
2.40.1


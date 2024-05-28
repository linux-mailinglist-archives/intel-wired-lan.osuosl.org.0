Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883CC8D191B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 13:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D8CE40BB4;
	Tue, 28 May 2024 11:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sNJABGUkZCPI; Tue, 28 May 2024 11:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1F53401D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716894227;
	bh=a2LfxYQyjGTtDERb+G5fcFJX6Ksea/D+nAJ7kfYMIVY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L3w+b6MrAAwqgGkE6LWhR2Q1TxDnCecwAvTsW8WQ+NT73wzjfzbSkTY2jOCp2ECpY
	 G2SQ2FBnXuiLIlTzbcrMtpNPesediiODkgnVYAcjpqYqaj0fyfsPN54QSYsDjOfcV/
	 +2LWJLsmQxGmHar+GKNrtMDIx8pzEsbsFasnuh09a5hTrJ7Dh9J+TL2af6Q95/R5+q
	 4m5jWvyu0Fxmn51BwYHSS9D7EntOfnhi/Vn7rPHvNowMXYVbbdqZCS5QjIGm9CwLSd
	 Q2XN4ietzJCoxK3SMMgIsHrFTLdsmiWvMTJiJRDY1ayAmYdWKbqI0kGIdJrT3PAGl8
	 1qO1IeTcJZ7ag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1F53401D2;
	Tue, 28 May 2024 11:03:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 396781D26AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2583F40157
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uivJCteGQxD4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 11:03:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 882E44014E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 882E44014E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 882E44014E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:03:44 +0000 (UTC)
X-CSE-ConnectionGUID: E9t1OkIsT92h/9os5jLQmQ==
X-CSE-MsgGUID: t6avr0v2TzeYNzvl4AmGMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13352220"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13352220"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:03:43 -0700
X-CSE-ConnectionGUID: qDp8PiQMTaWGR3HsBrhPNg==
X-CSE-MsgGUID: 0i45qUapRnq30uJaKOiExA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39871109"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 28 May 2024 04:03:40 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BFAD772;
 Tue, 28 May 2024 12:03:38 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 May 2024 13:01:32 +0200
Message-Id: <20240528110132.483447-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894224; x=1748430224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F56FR537ACHFPq6qOmlN0653RumzM1Fbn47wyVWWsDw=;
 b=HEpbtIgMAc6qUutfIjehDSB7DamUfC1Z/hf3TPZhM6L3rdIrDVEwKV13
 7g8lCTTBWo1sD/BOJ0BeNIWoJ4K5PxR9wLbGnitQxJpfwvdoFjvhfCscY
 WEPqT9EtkmvNkplM9sgo42uVScuGwGyahvoSXUz0Q5XU8+B0ku1i7sS76
 Jddr/ah3dQIRp4CsLmxKlPVUCGPp2FByRmCSVYpKnt4vvTnZhaFX2D9sp
 l0Mc5ib29nXr33R4c/nVioWxTuSib+xCmPGdlbkMdIZav/EeKwPhZuXCM
 kLPx+k+cKiGpH4Ew+b+UbYb8fwpiV/DzC/QNIfMwtHSDH/y2bYjmWzXAi
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HEpbtIgM
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add support for devlink
 loopback param.
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
Cc: jiri@resnulli.us, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Kaminski <pawel.kaminski@intel.com>

Add support for driver-specific devlink loopback param. Supported values
are "enabled", "disabled" and "prioritized". Default configuration is
set to "enabled".

Add documentation in networking/devlink/ice.rst.

In previous generations of Intel NICs the trasmit scheduler was only
limited by PCIe bandwidth when scheduling/assigning hairpin-badwidth
between VFs. Changes to E810 HW design introduced scheduler limitation,
so that available hairpin-bandwidth is bound to external port speed.
In order to address this limitation and enable NFV services such as
"service chaining" a knob to adjust the scheduler config was created.
Driver can send a configuration message to the FW over admin queue and
internal FW logic will reconfigure HW to prioritize and add more BW to
VF to VF traffic. As end result for example 10G port will no longer limit
hairpin-badwith to 10G and much higher speeds can be achieved.

Devlink loopback param set to "prioritized" enables higher
hairpin-badwitdh on related PFs. Configuration is applicable only to
8x10G and 4x25G cards.

Changing loopback configuration will trigger CORER reset in order to take
effect.

Example command to change current value:
devlink dev param set pci/0000:b2:00.3 name loopback value prioritized \
        cmode runtime

Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: Extend documentation
---
 Documentation/networking/devlink/ice.rst      |  23 ++++
 .../net/ethernet/intel/ice/devlink/devlink.c  | 125 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 5 files changed, 163 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 830c04354222..f1000bedc24a 100644
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
+    * - ``loopback``
+      - runtime
+      - Controls loopback behavior by tuning scheduler bandwidth.
+        Supported values are:
+
+        ``enabled`` - loopback traffic is not allowed on port
+
+        ``disabled`` - loopback traffic is allowed on this port
+
+        ``prioritized`` - loopback traffic is prioritized on this port
+
+        Default value of ``loopback`` parameter is ``enabled``.
+        ``prioritized`` provides ability to adjust loopback rate to increase
+        one port capacity at cost of the another. User needs to disable
+        loopback on one of the ports in order have increased capacity
+        on the ``prioritized`` port.
 
 Info versions
 =============
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index f774781ab514..c0be85e62687 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1381,9 +1381,128 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+#define DEVLINK_LPBK_DISABLED_STR "disabled"
+#define DEVLINK_LPBK_ENABLED_STR "enabled"
+#define DEVLINK_LPBK_PRIORITIZED_STR "prioritized"
+
+/**
+ * ice_devlink_loopback_mode_to_str - Get string for loopback mode.
+ * @mode: Loopback mode used in port_info struct.
+ *
+ * Return: Mode respective string or "Invalid".
+ */
+static const char *ice_devlink_loopback_mode_to_str(enum ice_loopback_mode mode)
+{
+	switch (mode) {
+	case ICE_LOOPBACK_MODE_ENABLED:
+		return DEVLINK_LPBK_ENABLED_STR;
+	case ICE_LOOPBACK_MODE_PRIORITIZED:
+		return DEVLINK_LPBK_PRIORITIZED_STR;
+	case ICE_LOOPBACK_MODE_DISABLED:
+		return DEVLINK_LPBK_DISABLED_STR;
+	}
+
+	return "Invalid";
+}
+
+/**
+ * ice_devlink_loopback_str_to_mode - Get loopback mode from string name.
+ * @mode_str: Loopback mode string.
+ *
+ * Return: Mode value or negative number if invalid.
+ */
+static int ice_devlink_loopback_str_to_mode(const char *mode_str)
+{
+	if (!strcmp(mode_str, DEVLINK_LPBK_ENABLED_STR))
+		return ICE_LOOPBACK_MODE_ENABLED;
+	else if (!strcmp(mode_str, DEVLINK_LPBK_PRIORITIZED_STR))
+		return ICE_LOOPBACK_MODE_PRIORITIZED;
+	else if (!strcmp(mode_str, DEVLINK_LPBK_DISABLED_STR))
+		return ICE_LOOPBACK_MODE_DISABLED;
+
+	return -EINVAL;
+}
+
+/**
+ * ice_devlink_loopback_get - Get loopback parameter.
+ * @devlink: Pointer to the devlink instance.
+ * @id: The parameter ID to set.
+ * @ctx: Context to store the parameter value.
+ *
+ * Return: Zero.
+ */
+static int ice_devlink_loopback_get(struct devlink *devlink, u32 id,
+				    struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_port_info *pi;
+	const char *mode_str;
+
+	pi = pf->hw.port_info;
+	mode_str = ice_devlink_loopback_mode_to_str(pi->loopback_mode);
+	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
+
+	return 0;
+}
+
+/**
+ * ice_devlink_loopback_set - Set loopback parameter.
+ * @devlink: Pointer to the devlink instance.
+ * @id: The parameter ID to set.
+ * @ctx: Context to get the parameter value.
+ * @extack: Netlink extended ACK structure.
+ *
+ * Return: Zero.
+ */
+static int ice_devlink_loopback_set(struct devlink *devlink, u32 id,
+				    struct devlink_param_gset_ctx *ctx,
+				    struct netlink_ext_ack *extack)
+{
+	int new_loopback_mode = ice_devlink_loopback_str_to_mode(ctx->val.vstr);
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_port_info *pi;
+
+	pi = pf->hw.port_info;
+	if (pi->loopback_mode != new_loopback_mode) {
+		pi->loopback_mode = new_loopback_mode;
+		dev_info(dev, "Setting loopback to %s\n", ctx->val.vstr);
+		ice_schedule_reset(pf, ICE_RESET_CORER);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_loopback_validate - Validate passed loopback parameter value.
+ * @devlink: Unused pointer to devlink instance.
+ * @id: The parameter ID to validate.
+ * @val: Value to validate.
+ * @extack: Netlink extended ACK structure.
+ *
+ * Supported values are:
+ * "enabled" - loopback is enabled, "disabled" - loopback is disabled
+ * "prioritized" - loopback traffic is prioritized in scheduling.
+ *
+ * Return: Zero when passed parameter value is supported. Negative value on
+ * error.
+ */
+static int ice_devlink_loopback_validate(struct devlink *devlink, u32 id,
+					 union devlink_param_value val,
+					 struct netlink_ext_ack *extack)
+{
+	if (ice_devlink_loopback_str_to_mode(val.vstr) < 0) {
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
+	ICE_DEVLINK_PARAM_ID_LOOPBACK,
 };
 
 static const struct devlink_param ice_dvl_rdma_params[] = {
@@ -1405,6 +1524,12 @@ static const struct devlink_param ice_dvl_sched_params[] = {
 			     ice_devlink_tx_sched_layers_get,
 			     ice_devlink_tx_sched_layers_set,
 			     ice_devlink_tx_sched_layers_validate),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOOPBACK,
+			     "loopback", DEVLINK_PARAM_TYPE_STRING,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_loopback_get,
+			     ice_devlink_loopback_set,
+			     ice_devlink_loopback_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 621a2ca7093e..10f437ec79a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -232,6 +232,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
 #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
 };
 
+/* Loopback port parameter mode values. */
+enum ice_loopback_mode {
+	ICE_LOOPBACK_MODE_ENABLED = 0,
+	ICE_LOOPBACK_MODE_DISABLED = 1,
+	ICE_LOOPBACK_MODE_PRIORITIZED = 2,
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
+	u8 loopback_mode;
+#define ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_VALID BIT(2)
+	u8 reserved[9];
 };
 
 /* These resource type defines are used for all switch resource
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9ae61cd8923e..f98bd7da9f77 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1086,6 +1086,7 @@ int ice_init_hw(struct ice_hw *hw)
 		goto err_unroll_cqinit;
 	}
 
+	hw->port_info->loopback_mode = ICE_LOOPBACK_MODE_ENABLED;
 	/* set the back pointer to HW */
 	hw->port_info->hw = hw;
 
@@ -3070,6 +3071,9 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
 		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
 	cmd->cmd_flags = cpu_to_le16(cmd_flags);
 
+	cmd->loopback_mode = pi->loopback_mode |
+				ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_VALID;
+
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index aac59c85a911..30c8ecc1e36b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -730,6 +730,7 @@ struct ice_port_info {
 	u16 sw_id;			/* Initial switch ID belongs to port */
 	u16 pf_vf_num;
 	u8 port_state;
+	u8 loopback_mode;
 #define ICE_SCHED_PORT_STATE_INIT	0x0
 #define ICE_SCHED_PORT_STATE_READY	0x1
 	u8 lport;
-- 
2.40.1


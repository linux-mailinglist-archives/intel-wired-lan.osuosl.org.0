Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CBE900120
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 12:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D035405D6;
	Fri,  7 Jun 2024 10:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2MPew4ph1Vxi; Fri,  7 Jun 2024 10:46:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D17040465
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717757162;
	bh=fd9NhUBUQNlk5hcmzreot2qjum5AWwcL3hRiY+AQHO4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IpGZTWcV7bfsoXn7IuIsCOyeqi6ZBCw1/LELVInZQ+aa3DgsqWqsBbgKdMRQ0Fwk2
	 AYHTWDgLTXOaIx/rXwyc8HAyfXGSh0e2NbJY9x93FJNyHbC+wcmWEXFrvfkQeF8Vdh
	 uup8pQCW4ksP4FhAGBnqnvfgytSYdSPjMP9b3KRpcvOkbHfivrJPA8l2ZjVKIz6PvS
	 kfEgDlyTuSqHL574xxaFQmEvU0BCl/laxwJqZqcjFTrHy4LK3YwpiR8Dnehim1p3z1
	 glHOY/y20Qq25FnaCnVZd6cJnC+0ff9f/DKaRiUPOH0kGDVkzjcbPBo0sCW88NdT0q
	 BQVm304sm2bdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D17040465;
	Fri,  7 Jun 2024 10:46:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68FBB1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 10:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54DCC81B48
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 10:46:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46pjDKWER0UG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 10:45:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0CC3281B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CC3281B3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CC3281B3E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 10:45:58 +0000 (UTC)
X-CSE-ConnectionGUID: mHXQxSqeTE+SxxznUqgDyQ==
X-CSE-MsgGUID: lTOMpxrbTj2zXearOHxMQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="11962340"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="11962340"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:45:58 -0700
X-CSE-ConnectionGUID: SJCL072sQtiarq1ois4ggQ==
X-CSE-MsgGUID: bO6tg7efQa6Yekar8pOthA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="75768340"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 07 Jun 2024 03:45:52 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AA3D412406;
 Fri,  7 Jun 2024 11:45:48 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  7 Jun 2024 12:43:49 +0200
Message-Id: <20240607104349.823255-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717757159; x=1749293159;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R+4LRs25tYmnNXdfcqR+SAshLXXAzIhOTEUVKL71VWA=;
 b=DYpV2JWiCsWKFdiYul3acFf7GtmZ9G3tNOUQ9tPuWbOOxPEbs4Qq7tFs
 i0+NWN4H6xqg4098f1NWNnBNsnztTy1W1TSdrn0OOH/L3JlG6u0UXmR8R
 UgbgTj9QP8wURgpfyhsEmFHzljJGZCATlNQFU8zo59616d34LUhXBbAgQ
 Ki2xSPG8HZWA7R869GdfU0oMB7DvuAqBFirTlPpdND+t5WKeuogaZN0MH
 n269/Lzq4j0sU57S71b5zpVlb4g59/ni4r3u71aXlsUplUODC9dZMJvN3
 QsCZrMlGMl+duKpRiPU2SXzIc5KdzdYDWrGyQQlskg3fIfQ/MQjgCQb2m
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DYpV2JWi
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: Add support for devlink
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
Cc: jacob.e.keller@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 jiri@resnulli.us
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
v4: change in documentation about what types of functions
    are affected
---
 Documentation/networking/devlink/ice.rst      |  25 ++++
 .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 5 files changed, 166 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 830c04354222..e3972d03cea0 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -11,6 +11,7 @@ Parameters
 ==========
 
 .. list-table:: Generic parameters implemented
+   :widths: 5 5 90
 
    * - Name
      - Mode
@@ -68,6 +69,30 @@ Parameters
 
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
+        It impacts all kinds of functions: physical, virtual and
+        subfunctions.
+        Supported values are:
+
+        ``enabled`` - loopback traffic is allowed on port
+
+        ``disabled`` - loopback traffic is not allowed on this port
+
+        ``prioritized`` - loopback traffic is prioritized on this port
+
+        Default value of ``local_forwarding`` parameter is ``enabled``.
+        ``prioritized`` provides ability to adjust loopback traffic rate to increase
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
index 868d7d26a422..db4f93fd076e 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -731,6 +731,7 @@ struct ice_port_info {
 	u16 sw_id;			/* Initial switch ID belongs to port */
 	u16 pf_vf_num;
 	u8 port_state;
+	u8 local_fwd_mode;
 #define ICE_SCHED_PORT_STATE_INIT	0x0
 #define ICE_SCHED_PORT_STATE_READY	0x1
 	u8 lport;
-- 
2.40.1


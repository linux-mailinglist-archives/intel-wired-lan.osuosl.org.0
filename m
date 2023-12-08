Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF24809764
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 01:42:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDD4743649;
	Fri,  8 Dec 2023 00:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDD4743649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701996163;
	bh=8tZIRUsC+5eadhmUTVlUWvVs4CseZD8OQnumjNlLQtY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5ledHAkbdB5ND6/ieWRm+DJ9RmJ9MN5NriE3u9poawvSqObg6YS32t22n/I2t+DD1
	 +WQdcN4IvVf6/p73efGMnVqZZScDXVNQnxr3t01ii7FM4SppSJLqx5Q63YtFHuDRNU
	 j6OIwOKiO73RpbjfCdBozAYF2yjq85oOwZDe4U+/i2AzOrS/gPKhmjnUQKylrwLzyV
	 eEa4Ke+4uUNXGtrw370sAcBQO+3y8lzsjaY5uIE4HivPUhUJsu/1YVvRGrwBaYShgk
	 q+waPX7L8Q1oxl+XxNCPp5d9GHVojb8PZC7PpbDZGpSzYwQXLqUQOGjKyYAHZ7FiYc
	 LvH+nFcQ204aw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-0fJsSg8U66; Fri,  8 Dec 2023 00:42:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D53774012A;
	Fri,  8 Dec 2023 00:42:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D53774012A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F04DC1BF57C
 for <intel-wired-lan@osuosl.org>; Fri,  8 Dec 2023 00:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D43D941901
 for <intel-wired-lan@osuosl.org>; Fri,  8 Dec 2023 00:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D43D941901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkTxksuGpLKv for <intel-wired-lan@osuosl.org>;
 Fri,  8 Dec 2023 00:42:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6AD3417FE
 for <intel-wired-lan@osuosl.org>; Fri,  8 Dec 2023 00:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6AD3417FE
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="7691199"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; 
   d="scan'208";a="7691199"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 16:42:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="862683735"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="862683735"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 16:42:32 -0800
From: Pawel Kaminski <pawel.kaminski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu,  7 Dec 2023 16:42:27 -0800
Message-ID: <20231208004227.195801-1-pawel.kaminski@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701996154; x=1733532154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=orVjUD5ddP8xPXk2wsMYSkl3zxdQMjEZln+bLNxXy9o=;
 b=RQX09MqHI4qxCGTEvTSfbppvxfqD5X8rzJYufLv9f+xC+XWlgLmvBvZt
 Oge7ZCWMeZ6mPPHFuTkInI9doCuKBC3duIQGfkZIHUXGIp84jl3XJJXSJ
 LtfNmldKE6P8tgwCTpelVQ9cIYSnt4t49tXHfHj7o9Kh3sx4IBH/ZuJDm
 Y7M6NofQMi46y0JFXxEGTCcF7gMq2U9ac8tLRwlFFi0cr3j4ozRlVrcTC
 htfbfo2bSvRUtY/cyhwtgxyceXw4rEt2cCLEPbcnxsmFriQjw8wxNN/Ge
 ZNXLUgdtoIeUHbYJ+li8tqXGdBtfkxdQrMcvujvnbcfeiRdq5KPz1bPDF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RQX09MqH
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for devlink
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
---
Changes in v2:
 - improved commit message,
 - added documentation change
 - changed parameter devlink mode to "runtime"
 - Link to v1: https://lore.kernel.org/all/20231201235949.62728-1-pawel.kaminski@intel.com/
---
 Documentation/networking/devlink/ice.rst      |  15 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 128 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 5 files changed, 158 insertions(+), 3 deletions(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 7f30ebd5debb..efc6be109dc3 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -11,6 +11,7 @@ Parameters
 ==========
 
 .. list-table:: Generic parameters implemented
+   :widths: 5 5 90
 
    * - Name
      - Mode
@@ -22,6 +23,20 @@ Parameters
      - runtime
      - mutually exclusive with ``enable_roce``
 
+.. list-table:: Driver specific parameters implemented
+   :widths: 5 5 90
+
+   * - Name
+     - Mode
+     - Description
+   * - ``loopback``
+     - runtime
+     - Controls loopback behavior by tuning scheduler bandwidth.
+       Supported values are ``enabled``, ``disabled``, ``prioritized``.
+       The latter allows for bandwidth higher than external port speed
+       when looping back traffic between VFs. Works with 8x10G and 4x25G
+       cards.
+
 Info versions
 =============
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 6a5e974a1776..13d0e3cbc24c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -230,6 +230,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
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
@@ -238,7 +245,9 @@ struct ice_aqc_set_port_params {
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
index 2f67ea1feb60..2efa781efcdb 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1019,7 +1019,7 @@ int ice_init_hw(struct ice_hw *hw)
 		status = -ENOMEM;
 		goto err_unroll_cqinit;
 	}
-
+	hw->port_info->loopback_mode = ICE_LOOPBACK_MODE_ENABLED;
 	/* set the back pointer to HW */
 	hw->port_info->hw = hw;
 
@@ -2962,6 +2962,10 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
 	cmd = &desc.params.set_port_params;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
+
+	cmd->loopback_mode = pi->loopback_mode |
+				ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_VALID;
+
 	if (double_vlan)
 		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
 	cmd->cmd_flags = cpu_to_le16(cmd_flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 65be56f2af9e..97182bacafa3 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1429,6 +1429,127 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
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
+ *
+ * Return: Zero.
+ */
+static int ice_devlink_loopback_set(struct devlink *devlink, u32 id,
+				    struct devlink_param_gset_ctx *ctx)
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
+enum ice_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_LOOPBACK,
+};
+
 static const struct devlink_param ice_devlink_params[] = {
 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      ice_devlink_enable_roce_get,
@@ -1438,7 +1559,12 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
-
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOOPBACK,
+			     "loopback", DEVLINK_PARAM_TYPE_STRING,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_loopback_get,
+			     ice_devlink_loopback_set,
+			     ice_devlink_loopback_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1fff865d0661..c8d75a1820a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -713,6 +713,7 @@ struct ice_port_info {
 	u16 sw_id;			/* Initial switch ID belongs to port */
 	u16 pf_vf_num;
 	u8 port_state;
+	u8 loopback_mode;
 #define ICE_SCHED_PORT_STATE_INIT	0x0
 #define ICE_SCHED_PORT_STATE_READY	0x1
 	u8 lport;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

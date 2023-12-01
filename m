Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B757801852
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Dec 2023 01:00:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48DF442201;
	Sat,  2 Dec 2023 00:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48DF442201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701475207;
	bh=+qZuLmxPOpy+7ZcXwBjTv1TrCckrGkjLQKMqKI2GZEs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Xuq/w7KEsChAjmbaNAcC1xfbyzn+ze3kiClXF0JkV/g7qaX2sT2iwHI0JJyzyp6uB
	 3bt3B5L1Su//SgmHCx0D3VQ0o5ZPoVXMh/rOJgkDFSvF9KAUtWSEoFPdBx8/jC4pu2
	 E5wOg9fvxdlgu9NH9F1fyX1GMcNbIH4M1znZYMw9D4F1z55cqM6lSN6HilDgRZgbOk
	 fbfDll7P9RC6KdltE22VfYMZGx+Uzl+mni9MTd1j7SVCDEs05W7rKFaQFbFMn6o53J
	 pOXLxPsUSDlNGrDcA2Njd19YR2xTyBqIugEhZbkg7Q7nYXGhHAGGpIL+NUpkyT+VTd
	 ThdHMK1nybGIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zvh1K4MboKKG; Sat,  2 Dec 2023 00:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2FBC421FE;
	Sat,  2 Dec 2023 00:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2FBC421FE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FEC71BF2B4
 for <intel-wired-lan@osuosl.org>; Sat,  2 Dec 2023 00:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74177849A8
 for <intel-wired-lan@osuosl.org>; Sat,  2 Dec 2023 00:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74177849A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nfe7KURkjYYO for <intel-wired-lan@osuosl.org>;
 Fri,  1 Dec 2023 23:59:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D32CC849A5
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 23:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D32CC849A5
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="392429557"
X-IronPort-AV: E=Sophos;i="6.04,243,1695711600"; d="scan'208";a="392429557"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 15:59:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="719682202"
X-IronPort-AV: E=Sophos;i="6.04,243,1695711600"; d="scan'208";a="719682202"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 15:59:53 -0800
From: Pawel Kaminski <pawel.kaminski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Fri,  1 Dec 2023 15:59:49 -0800
Message-ID: <20231201235949.62728-1-pawel.kaminski@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701475198; x=1733011198;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2+0ReYztB9A7pnrrDNvw8uGroW6pthTc2yO5Cqask84=;
 b=JjZ90vW8DVkHXooVE5yNKX8mWM6w8ug98baP9oXehjQGk4sUb2zAgEgY
 gYVp3sKl8hcglADwlnHz3qAXZho7bChT7MuH0GpZccpW9Jl+yxdiHhSDy
 Lb0pS1bUd5WO9OKmym4bkUq6yB06XUK9RkX6HRduXsEMmz0d18J5jKq1x
 x9I3W/JDPwtzbeG8SdCXXyGsE4GBnQmVa+JCAOkmViO0apiUa4uQXW31J
 vv3i88w/r0zKDakXkEkUwLlK5kPpA/DwqLmoIhks/GrJ3Ooh6odczoW3g
 9QtLCLtjUvdoJiJx/rlBMviR53VNai/S1bpv49YxA2P6qkeyQ+OQPlDhx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JjZ90vW8
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add support for devlink
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

Add support for devlink loopback param. Supported values are "enabled",
"disabled" and "prioritized". Default configuration is set to "enabled.

By default loopback traffic BW is locked to PF configured BW. HW is
capable of higher speeds on loopback traffic. Loopback param set to
"prioritized" enables HW BW prioritization for VF to VF traffic,
effectively increasing BW between VFs. Applicable to 8x10G and 4x25G
cards.

To achieve max loopback BW one could:
 - Make, as much as possible, fair distribution of loopback usages
   between groups to gain maximal loopback BW.
 - Try to dedicate ports for loopback only traffic, with minimal network
   traffic.

Changing loopback configuration will trigger CORER reset in order to take
effect.

Example command to change current value:
devlink dev param set pci/0000:b2:00.3 name loopback value prioritized \
        cmode permanent

Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 128 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 143 insertions(+), 3 deletions(-)

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
index 65be56f2af9e..8fe5bda5d5fe 100644
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
+ * ice_devlink_loopback_mode_to_str - Get string for lpbk mode.
+ * @mode: Loopback_mode used in port_info struct.
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
+ * ice_devlink_loopback_str_to_mode - Get lpbk mode from string name.
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
+ * @id: the Parameter ID to set.
+ * @ctx: Context to store the parameter value.
+ *
+ * Return: Zero on success.
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
+ * @id: the Parameter ID to set.
+ * @ctx: Context to get the parameter value.
+ *
+ * Return: Zero on success.
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
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
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

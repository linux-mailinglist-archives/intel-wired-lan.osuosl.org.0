Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D74427F230C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 02:28:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8B9C60F97;
	Tue, 21 Nov 2023 01:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8B9C60F97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700530124;
	bh=W5LY6WnB9sTpKEp7Ojy+tLpymLtHF0oC+Tz/Hjm43cA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rpNuWun3Z1BalFOMqs7GPEi+iIEP2xFqmjfxN+0RRCXAtAoW/WGpGXDN7btpRYos2
	 0/rIBKDx/FWtC4xxnf7iIWWubJ/rhSmxhwYsXKlXsdx4WUR2X3P43vuS+DLAD1ufzD
	 RXHJGm9MWAhdkKHbMczVWYc4/BtdWd6KBVAKjLHFtMQEAtKkIs6CnEl78hlPpz/slv
	 Vk2ANZprbgtq/mSVLvt+PrdJw3k39wbkBS7jxXOxx298v5yJyQXfZlODyMe/UP2H+F
	 rIBot/b/6gb5jWMIdrwj3NSP1VUKq21c5tAXRw8ez53X0Vhz7egEwYSU+YRun26XhO
	 0sd3gAAOKSKqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pxwm3P1ZsFKj; Tue, 21 Nov 2023 01:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECF3C60E03;
	Tue, 21 Nov 2023 01:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECF3C60E03
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF12B1BF3CA
 for <intel-wired-lan@osuosl.org>; Tue, 21 Nov 2023 01:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE87040207
 for <intel-wired-lan@osuosl.org>; Tue, 21 Nov 2023 01:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE87040207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYvOtyy-AXsv for <intel-wired-lan@osuosl.org>;
 Tue, 21 Nov 2023 01:28:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D84840128
 for <intel-wired-lan@osuosl.org>; Tue, 21 Nov 2023 01:28:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D84840128
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="456077074"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="456077074"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 17:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="742887024"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="742887024"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 17:28:34 -0800
From: Pawel Kaminski <pawel.kaminski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 20 Nov 2023 17:28:30 -0800
Message-ID: <20231121012830.2261-1-pawel.kaminski@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700530116; x=1732066116;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NAkWlNsjEP1jkTQmAKyhtoZE/VJMQVOUE6yo4aBfDMA=;
 b=SyF9KzPArYH2TRJCL05UPhyXjKjDIS1ldBnEoj4ai6yK883YfN02ZcAY
 rkbR4zbibzHojhhW8+BAJxNXk3qhqbB6uYHi3mFdjSApEo35e/5wbcSHs
 WSbx6gf2LQpF7xLsRPB6bYnvwNlsx87RM7iuX7wnKJl+ZdngYuPMs/AYL
 JNUehBrrQmX92HXfh+ea543pcZZMMOgHQQlMgHsH3RGKYcuR3pQFkR3CC
 W0QDhKZtUgmziI8tD4ZijCcpUgOpXV1kCJFSqNUnHDk7rSHVhH+z36vJV
 dUAxXJEIijSmBWF/3fw1Bg/aneiVzYPTcSb5e5voqShvNU7s/ZzsTOwuc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SyF9KzPA
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Add support for devlink
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
Cc: netdev@vger.kernel.org, Pawel Kaminski <pawel.kaminski@intel.com>,
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

Recommendation for user:
 - Make, as much as possible, fair distribution of loopback usages
   between groups to gain maximal loopback BW.
 - Try to dedicate ports for loopback only traffic, with minimal network
   traffic.

Changing loopback configuration will trigger CORER reset in order to take
effect.

Example command to change current value:
devlink dev param set pci/0000:b2:00.3 name loopback value prioritized \
        cmode permanent

Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   7 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 127 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 139 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 838d9b274d68..2f6b32b6bcdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -232,7 +232,12 @@ struct ice_aqc_set_port_params {
 #define ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA	BIT(2)
 	__le16 bad_frame_vsi;
 	__le16 swid;
-	u8 reserved[10];
+	u8 loopback_mode;
+#define ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_VALID BIT(2)
+#define ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NORMAL 0x00
+#define ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NO 0x01
+#define ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_HIGH 0x02
+	u8 reserved[9];
 };
 
 /* These resource type defines are used for all switch resource
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0157f6e98d3e..cb127c21cd42 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1121,7 +1121,8 @@ int ice_init_hw(struct ice_hw *hw)
 		status = -ENOMEM;
 		goto err_unroll_cqinit;
 	}
-
+	hw->port_info->loopback_mode =
+		ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NORMAL;
 	/* set the back pointer to HW */
 	hw->port_info->hw = hw;
 
@@ -2924,6 +2925,10 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
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
index bc44cc220818..4475cce03967 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1382,6 +1382,126 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+#define DEVLINK_LPBK_DISABLED "disabled"
+#define DEVLINK_LPBK_ENABLED "enabled"
+#define DEVLINK_LPBK_PRIORITIZED "prioritized"
+
+/**
+ * ice_devlink_loopback_mode_to_str - Get string for lpbk mode
+ * @loopback_mode: loopback_mode used in port_info struct
+ *
+ * Returns mode respective string or "Invalid".
+ */
+static const char *ice_devlink_loopback_mode_to_str(u32 loopback_mode)
+{
+	switch (loopback_mode) {
+	case ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NORMAL:
+		return DEVLINK_LPBK_ENABLED;
+	case ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_HIGH:
+		return DEVLINK_LPBK_PRIORITIZED;
+	case ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NO:
+		return DEVLINK_LPBK_DISABLED;
+	}
+
+	return "Invalid mode";
+}
+
+/**
+ * ice_devlink_loopback_str_to_mode - Get lpbk mode from string name
+ * @mode_str: loopback mode string
+ *
+ * Returns mode value or -1 if invalid.
+ */
+static int ice_devlink_loopback_str_to_mode(const char *mode_str)
+{
+	if (!strcmp(mode_str, DEVLINK_LPBK_ENABLED))
+		return ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NORMAL;
+	else if (!strcmp(mode_str, DEVLINK_LPBK_PRIORITIZED))
+		return ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_HIGH;
+	else if (!strcmp(mode_str, DEVLINK_LPBK_DISABLED))
+		return ICE_AQC_SET_P_PARAMS_LOOPBACK_MODE_NO;
+
+	return -EINVAL;
+}
+
+/**
+ * ice_devlink_loopback_get - Get loopback parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to store the parameter value
+ *
+ * Returns zero on success.
+ */
+static int ice_devlink_loopback_get(struct devlink *devlink, u32 id,
+				    struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_port_info *pi = pf->hw.port_info;
+	const char *mode_str;
+
+	mode_str = ice_devlink_loopback_mode_to_str(pi->loopback_mode);
+	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
+
+	return 0;
+}
+
+/**
+ * ice_devlink_loopback_set - Set loopback parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to get the parameter value
+ *
+ * Returns zero on success.
+ */
+static int ice_devlink_loopback_set(struct devlink *devlink, u32 id,
+				    struct devlink_param_gset_ctx *ctx)
+{
+	int new_loopback_mode = ice_devlink_loopback_str_to_mode(ctx->val.vstr);
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_port_info *pi = pf->hw.port_info;
+	struct device *dev = ice_pf_to_dev(pf);
+
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
+ * ice_devlink_loopback_validate - Validate passed loopback parameter value
+ * @devlink: unused pointer to devlink instance
+ * @id: the parameter ID to validate
+ * @val: value to validate
+ * @extack: netlink extended ACK structure
+ *
+ * Supported values are:
+ * "enabled" - loopback is enabled, "disabled" - loopback is disabled
+ * "prioritized" - loopback traffic is prioritized in scheduling
+ *
+ * Returns zero when passed parameter value is supported. Negative value on
+ * error.
+ */
+static int ice_devlink_loopback_validate(struct devlink *devlink, u32 id,
+					 union devlink_param_value val,
+					 struct netlink_ext_ack *extack)
+{
+	if (ice_devlink_loopback_str_to_mode(val.vstr) < 0) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Error: Requested value is not supported.");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+enum ice_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_TX_LOOPBACK,
+};
+
 static const struct devlink_param ice_devlink_params[] = {
 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      ice_devlink_enable_roce_get,
@@ -1391,7 +1511,12 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
-
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_LOOPBACK,
+			"loopback", DEVLINK_PARAM_TYPE_STRING,
+			BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			ice_devlink_loopback_get,
+			ice_devlink_loopback_set,
+			ice_devlink_loopback_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a09556e57803..822e44562302 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -700,6 +700,7 @@ struct ice_port_info {
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

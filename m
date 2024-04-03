Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3CA89672C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 09:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5E9260D95;
	Wed,  3 Apr 2024 07:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 98sSTZYGzLMn; Wed,  3 Apr 2024 07:50:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B47BF60D93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712130639;
	bh=+jlShvm8wMu3Siqbh6fXw3lCnbt1PRi2CBoB1ypiLoc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DEF57cIwHpF6Q8l6EeEC4GclRghcJOma1L5H643rhE0G7x1XEYChs/YPMjzPlE200
	 oGzrDDpdaCpOAc3B9Z4GUgGsFGwGLFG2OM6hvD+dOXy0G5XLLu/N5FyWNYnIfZWVYO
	 MzQSeAwiZceaAL3PB+P5qjpgMWwDSzpsu6nFUqMUwz1jI1lD0gIXanRU/1v8Ye6Glj
	 Hc6fjZKh8RLTyNOpR1JL5rdqK+8S9QVHctuBfRMgo4ulKQ/S+9PU1Gl0nbPWQjm4X9
	 om4SoideJDw8lL5ctucczPB3D3pVdpl6nzG2/RbPxGfZRZ2c0om0WgVvChZk9TS4lN
	 VaTOFJebqcDcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B47BF60D93;
	Wed,  3 Apr 2024 07:50:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 069D81BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 001A460D65
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UL9TnrMGXh9V for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 07:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7026260D74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7026260D74
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7026260D74
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:35 +0000 (UTC)
X-CSE-ConnectionGUID: TFlLZFDaRluHu9BQXEGkYA==
X-CSE-MsgGUID: vByHMJGKQ9uaIizO4jdfcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="10311926"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="10311926"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 00:50:35 -0700
X-CSE-ConnectionGUID: JBVT/xlSQCqbJCX+LmzD9w==
X-CSE-MsgGUID: TVX7BgyWR9yxYncKf2LhLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="55790929"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 03 Apr 2024 00:50:31 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 21B4D36A12;
 Wed,  3 Apr 2024 08:50:29 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 03:41:11 -0400
Message-Id: <20240403074112.7758-6-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
References: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712130635; x=1743666635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0tW3j4CMCOpxeWtoKiVH+MU95ZnVw+Agw1RsWJVoxo4=;
 b=SI0j3HZv/henT87OmMbvEw1I+T5PKx+l4hQs+7yeFCcmxkUNNaIjcPjh
 OUbia+qtnolgHHUy/gheaHSs5ra/Gy/l/h99Q546ezIzptm33ZK3UzIy3
 SkLHx0gU4DhiEBbP4EjEn1nQngDDs4AyHjqBAYalbyYDmRvZBjIVM9MX7
 Pt/gIRYFazmg466drZMWcOHT4hiTh+EfytNAOtn281hL+9+W0iU+oi7cG
 TOgykRQ3NH/xSHhPsARG7XoBpKGX8NK3ntYPCjcrJuy4BzdVbmgk4JKwx
 Te0v7LKV0Ok3Ejma5vLdrpdsozVnEpq189z+Jv/3H6fy8SR3CXrZM08c7
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SI0j3HZv
Subject: [Intel-wired-lan] [PATCH net-next v9 5/6] ice: Add
 tx_scheduling_layers devlink param
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

It was observed that Tx performance was inconsistent across all queues
and/or VSIs and that it was directly connected to existing 9-layer
topology of the Tx scheduler.

Introduce new private devlink param - tx_scheduling_layers. This parameter
gives user flexibility to choose the 5-layer transmit scheduler topology
which helps to smooth out the transmit performance.

Allowed parameter values are 5 and 9.

Example usage:

Show:
devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
pci/0000:4b:00.0:
  name tx_scheduling_layers type driver-specific
    values:
      cmode permanent value 9

Set:
devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
cmode permanent

devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9
cmode permanent

Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 172 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 6 files changed, 191 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index acbace240977..b179eaccc774 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -523,6 +523,156 @@ ice_devlink_reload_empr_finish(struct ice_pf *pf,
 	return 0;
 }
 
+/**
+ * ice_get_tx_topo_user_sel - Read user's choice from flash
+ * @pf: pointer to pf structure
+ * @layers: value read from flash will be saved here
+ *
+ * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
+ *
+ * Returns zero when read was successful, negative values otherwise.
+ */
+static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
+{
+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	err = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (err)
+		return err;
+
+	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
+			      sizeof(usr_sel), &usr_sel, true, true, NULL);
+	if (err)
+		goto exit_release_res;
+
+	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
+		*layers = ICE_SCHED_5_LAYERS;
+	else
+		*layers = ICE_SCHED_9_LAYERS;
+
+exit_release_res:
+	ice_release_nvm(hw);
+
+	return err;
+}
+
+/**
+ * ice_update_tx_topo_user_sel - Save user's preference in flash
+ * @pf: pointer to pf structure
+ * @layers: value to be saved in flash
+ *
+ * Variable "layers" defines user's preference about number of layers in Tx
+ * Scheduler Topology Tree. This choice should be stored in PFA TLV field
+ * and be picked up by driver, next time during init.
+ *
+ * Returns zero when save was successful, negative values otherwise.
+ */
+static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
+{
+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (err)
+		return err;
+
+	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
+			      sizeof(usr_sel), &usr_sel, true, true, NULL);
+	if (err)
+		goto exit_release_res;
+
+	if (layers == ICE_SCHED_5_LAYERS)
+		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
+	else
+		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
+
+	err = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
+				      sizeof(usr_sel.data), &usr_sel.data,
+				      true, NULL, NULL);
+exit_release_res:
+	ice_release_nvm(hw);
+
+	return err;
+}
+
+/**
+ * ice_devlink_tx_sched_layers_get - Get tx_scheduling_layers parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to store the parameter value
+ *
+ * Returns zero on success and negative value on failure.
+ */
+static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
+					   struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	int err;
+
+	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to get the parameter value
+ * @extack: netlink extended ACK structure
+ *
+ * Returns zero on success and negative value on failure.
+ */
+static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
+					   struct devlink_param_gset_ctx *ctx,
+					   struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	int err;
+
+	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
+	if (err)
+		return err;
+
+	NL_SET_ERR_MSG_MOD(extack,
+			   "Tx scheduling layers have been changed on this device. You must do the PCI slot powercycle for the change to take effect.");
+
+	return 0;
+}
+
+/**
+ * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
+ *                                        parameter value
+ * @devlink: unused pointer to devlink instance
+ * @id: the parameter ID to validate
+ * @val: value to validate
+ * @extack: netlink extended ACK structure
+ *
+ * Supported values are:
+ * - 5 - five layers Tx Scheduler Topology Tree
+ * - 9 - nine layers Tx Scheduler Topology Tree
+ *
+ * Returns zero when passed parameter value is supported. Negative value on
+ * error.
+ */
+static int ice_devlink_tx_sched_layers_validate(struct devlink *devlink, u32 id,
+						union devlink_param_value val,
+						struct netlink_ext_ack *extack)
+{
+	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Wrong number of tx scheduler layers provided.");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
  * @pf: pf struct
@@ -1235,6 +1385,11 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+enum ice_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
+};
+
 static const struct devlink_param ice_devlink_params[] = {
 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      ice_devlink_enable_roce_get,
@@ -1244,7 +1399,13 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
-
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
+			     "tx_scheduling_layers",
+			     DEVLINK_PARAM_TYPE_U8,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_tx_sched_layers_get,
+			     ice_devlink_tx_sched_layers_set,
+			     ice_devlink_tx_sched_layers_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
@@ -1304,9 +1465,16 @@ void ice_devlink_unregister(struct ice_pf *pf)
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
+	struct ice_hw *hw = &pf->hw;
+	size_t params_size;
+
+	params_size =  ARRAY_SIZE(ice_devlink_params);
+
+	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
+		params_size--;
 
 	return devl_params_register(devlink, ice_devlink_params,
-				    ARRAY_SIZE(ice_devlink_params));
+				    params_size);
 }
 
 void ice_devlink_unregister_params(struct ice_pf *pf)
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 0487c425ae24..e76c388b9905 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1684,6 +1684,15 @@ struct ice_aqc_nvm {
 
 #define ICE_AQC_NVM_START_POINT			0
 
+#define ICE_AQC_NVM_TX_TOPO_MOD_ID		0x14B
+
+struct ice_aqc_nvm_tx_topo_user_sel {
+	__le16 length;
+	u8 data;
+#define ICE_AQC_NVM_TX_TOPO_USER_SEL	BIT(4)
+	u8 reserved;
+};
+
 /* NVM Checksum Command (direct, 0x0706) */
 struct ice_aqc_nvm_checksum {
 	u8 flags;
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 319a2d6fe26c..f81db6c107c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -286,10 +286,9 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
  *
  * Returns: zero on success, or a negative error code on failure.
  */
-static int
-ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
-			u16 block_size, u8 *block, bool last_cmd,
-			u8 *reset_level, struct netlink_ext_ack *extack)
+int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
+			    u16 block_size, u8 *block, bool last_cmd,
+			    u8 *reset_level, struct netlink_ext_ack *extack)
 {
 	u16 completion_module, completion_retval;
 	struct device *dev = ice_pf_to_dev(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
index 750574885716..04b200462757 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
@@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
 			     struct netlink_ext_ack *extack);
 int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
 			    struct netlink_ext_ack *extack);
+int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
+			    u16 block_size, u8 *block, bool last_cmd,
+			    u8 *reset_level, struct netlink_ext_ack *extack);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index d4e05d2cb30c..84eab92dc03c 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -18,10 +18,9 @@
  *
  * Read the NVM using the admin queue commands (0x0701)
  */
-static int
-ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
-		void *data, bool last_command, bool read_shadow_ram,
-		struct ice_sq_cd *cd)
+int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
+		    u16 length, void *data, bool last_command,
+		    bool read_shadow_ram, struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
 	struct ice_aqc_nvm *cmd;
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 774c2317967d..63cdc6bdac58 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -14,6 +14,9 @@ struct ice_orom_civd_info {
 
 int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
+int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
+		    u16 length, void *data, bool last_command,
+		    bool read_shadow_ram, struct ice_sq_cd *cd);
 int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
-- 
2.38.1


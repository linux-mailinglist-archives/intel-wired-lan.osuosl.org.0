Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AF67BD669
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 11:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97D5C8208B;
	Mon,  9 Oct 2023 09:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97D5C8208B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696842667;
	bh=KWfeFfrQOM7/8lqv8ETFxZD/eoIEyP/Bt3iOPq58g5c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GvMTC1w8eqxf670DNqrS8JQtwyLyRqp1hLFrQ9Fh589261l6k/1Mf/F7a2FMDuuju
	 r/ROu44SI6x7GNuSUSHJeIQ6DHI99ou6fwfTYp7i2jqpNOQUI/jp1PBBkhZeKrkFZU
	 yhZoIquwdQgd5eFmQZYf+Tpxip124syfEKDSsMxCVLkMOBzXjtEC97UdJzrcEP7E5N
	 3K3m+Y0nyagWi33Zv/RzhosQovQAWIHyuM9J/CWyU1tb0+2ZgJ92vdEupogOS09a1j
	 oADn6hQX/6n3w1CGMmJB/IYUI1hQDQkN2Jn06i4sgUGSzGqA8j4Ma1yjtgtZVEBH8s
	 CyzHvEojIwiBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4o6t_Tce8nu; Mon,  9 Oct 2023 09:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE9C78208C;
	Mon,  9 Oct 2023 09:11:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE9C78208C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 802BC1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 09:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 668C560D6C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 09:10:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 668C560D6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nedvIL82vVxD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 09:10:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCB5E60C13
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 09:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCB5E60C13
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="382978416"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="382978416"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:10:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="843635724"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="843635724"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2023 02:10:41 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2A153365A6;
 Mon,  9 Oct 2023 10:10:40 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Oct 2023 05:07:10 -0400
Message-Id: <20231009090711.136777-5-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231009090711.136777-1-mateusz.polchlopek@intel.com>
References: <20231009090711.136777-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696842643; x=1728378643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tkc8agmVOmyhZ70IJFdk21jdiK9X2goN0WvtHdCYIZQ=;
 b=h8Xzhi3xLw10KTYIWjdR/Ha3MkLibjzDwcmDz2VHUDr/z+utkNfabA/6
 ymrCejPBgBWf0C105MotxuXSeWjdD333zzn0S2RoMjCkPS6OR7rFmXCgY
 IN35qbbiXT1ANbVEgRymugi7q2asO9Gv8soOKMCRC4DFwV8yFsWPGnNNV
 6YrexdKMeopYt80az+3iJUwdDS89jStOXl+gL1GgESPAq6v6sB5aXDfFH
 nRxESWYN16ega1sdwkZ7AiZYG7r6wmyozdSAEeCGU/vbUHd+7VbHtXRuJ
 qqPZktD02y+O9k5fbNUmbmafJ+iHmX8xH4jpNOVEC+YCGxtPaev3bQbYU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h8Xzhi3x
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: Add
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 174 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 6 files changed, 192 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index cea1f6f7053f..1202abfb9eb3 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1616,6 +1616,15 @@ struct ice_aqc_nvm {
 };
 
 #define ICE_AQC_NVM_START_POINT			0
+#define ICE_AQC_NVM_TX_TOPO_MOD_ID		0x14B
+
+struct ice_aqc_nvm_tx_topo_user_sel {
+	__le16 length;
+	u8 data;
+#define ICE_AQC_NVM_TX_TOPO_USER_SEL		BIT(4)
+
+	u8 reserved;
+};
 
 /* NVM Checksum Command (direct, 0x0706) */
 struct ice_aqc_nvm_checksum {
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..55974079aa3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -736,6 +736,172 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
 	return ice_devlink_port_split(devlink, port, 1, extack);
 }
 
+enum ice_devlink_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+};
+
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
+	if (err)
+		err = -EIO;
+
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
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
+	if (err) {
+		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to get the parameter value
+ *
+ * Returns zero on success and negative value on failure.
+ */
+static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
+					   struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
+	if (err)
+		return -EIO;
+
+	dev_warn(dev, "Tx scheduling layers have been changed on this device. You must reboot the system for the change to take effect.");
+
+	return 0;
+}
+
+/**
+ * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
+ *					  parameter value
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
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_hw *hw = &pf->hw;
+
+	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
+		NL_SET_ERR_MSG_MOD(extack, "Error: Requested feature is not supported by the FW on this device. Update the FW and run this command again.");
+		return -EOPNOTSUPP;
+	}
+
+	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
+		NL_SET_ERR_MSG_MOD(extack, "Error: Wrong number of tx scheduler layers provided.");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
  * @pf: pf struct
@@ -1389,7 +1555,13 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
-
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+			     "tx_scheduling_layers",
+			     DEVLINK_PARAM_TYPE_U8,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_tx_sched_layers_get,
+			     ice_devlink_tx_sched_layers_set,
+			     ice_devlink_tx_sched_layers_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
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
index f6f52a248066..745f2459943f 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -18,7 +18,7 @@
  *
  * Read the NVM using the admin queue commands (0x0701)
  */
-static int
+int
 ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 		void *data, bool last_command, bool read_shadow_ram,
 		struct ice_sq_cd *cd)
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 774c2317967d..88978b9a95b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -14,6 +14,9 @@ struct ice_orom_civd_info {
 
 int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
+int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
+		    void *data, bool last_command, bool read_shadow_ram,
+		    struct ice_sq_cd *cd);
 int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326E5B1AB4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Sep 2022 12:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDE0961242;
	Thu,  8 Sep 2022 10:55:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDE0961242
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662634514;
	bh=DRNkWmbdhh1Rkq9/mPk/AHidkjCWgwOePUx5l2YXq1c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o7e0lMkmaR6EKNdZ/rZ61uAmEdYHQX6/urNYEeeiSudfTFY+xdnNP8rboS67uNWJG
	 r+U2KVAj7N+hku9acbJfU8nRl1VZ4PrXXhOPm3gXP2qCfdqAuEwHl6jZvijl39Kaj4
	 MrJ7hxcSm/qhiCpKce0XhWUFmTtBGKWQLRP47PbGwGzpDUt8r3owCDJkg/vjqs2lL6
	 cM2Z8vJr25gjNDbj5FmWCO14iutn+eBlc3QYL/O7+2ZGItKMmZvKsiDyGYaAoSDnax
	 +ZMQDJZYJAkw77+idkb/5grPab8sZTsHIbscdKFYlbovKpGiat2iy2vLH0mAcE3Io6
	 +B4qpmRD9/SCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UavU9GjfnXyQ; Thu,  8 Sep 2022 10:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73D4961222;
	Thu,  8 Sep 2022 10:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73D4961222
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A75D11BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87CE641B78
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87CE641B78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0v4O-dSe24wm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Sep 2022 10:54:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E82A41B6C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E82A41B6C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 10:54:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="323329355"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="323329355"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:54:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="645033400"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:54:51 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Sep 2022 12:54:26 +0200
Message-Id: <20220908105427.183225-5-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220908105427.183225-1-michal.wilczynski@intel.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662634493; x=1694170493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yvLvWhvn0cYx0AB/K7E3C8wZJAeQ4xXx7+A/uTSIDbU=;
 b=G/ocsM1V5uDLiiiixhxmChh34oHZhx15cEn5whbptLvUorfbZG1mN+Ds
 rdggn+NzfWF29HEkxy7bIAoAw9aazWutnLPTActyo0S3RQtex/vBZ17zj
 +0dnTPN1wQIy/99pdD55513Ljq3Yd9jnru6uUieMOJzBoflixBB2/U/Ek
 VT8ob8AT1kWj1+Y3+nKICWC/8N3hNRLGpHHxsF0AKnwW6ZYVR4aRK1ujQ
 s8dWDvFcnMXxJIeFNeax87ay3fc6OZUDSbx9f9DfbHo0jAtwo2YF/Lzw6
 6e//RKqHPlEVkf5oCEc0eAU4/Vpd74FU+QxiL/8clI/ljvXNjwFXHZO2U
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G/ocsM1V
Subject: [Intel-wired-lan] [PATCH net-next v9 4/5] ice: Add txbalancing
 devlink param
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

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

It was observed that Tx performance was inconsistent across all queues
and/or VSIs and that it was directly connected to existing 9-layer
topology of the Tx scheduler.

Introduce new private devlink param - txbalance. This parameter gives user
flexibility to choose the 5-layer transmit scheduler topology which helps
to smooth out the transmit performance.

Allowed parameter values are true for enabled and false for disabled.

Example usage:

Show:
devlink dev param show pci/0000:4b:00.0 name txbalancing
pci/0000:4b:00.0:
  name txbalancing type driver-specific
    values:
      cmode permanent value true

Set:
devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode
permanent

Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 161 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
 6 files changed, 181 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 7521593cc7ac..c8c8b66e3f43 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1571,6 +1571,15 @@ struct ice_aqc_nvm {
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
index e6ec20079ced..a63af88fc037 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -374,6 +374,160 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
+enum ice_devlink_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+};
+
+/**
+ * ice_get_tx_topo_user_sel - Read user's choice from flash
+ * @pf: pointer to pf structure
+ * @txbalance_ena: value read from flash will be saved here
+ *
+ * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
+ *
+ * Returns zero when read was successful, negative values otherwise.
+ */
+static int ice_get_tx_topo_user_sel(struct ice_pf *pf, bool *txbalance_ena)
+{
+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
+	struct ice_hw *hw = &pf->hw;
+	int status;
+
+	status = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (status)
+		return status;
+
+	status = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
+				 sizeof(usr_sel), &usr_sel, true, true, NULL);
+	ice_release_nvm(hw);
+
+	*txbalance_ena = usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL;
+
+	return status;
+}
+
+/**
+ * ice_update_tx_topo_user_sel - Save user's preference in flash
+ * @pf: pointer to pf structure
+ * @txbalance_ena: value to be saved in flash
+ *
+ * When txbalance_ena is set to true it means user's preference is to use
+ * five layer Tx Scheduler Topology Tree, when it is set to false then it is
+ * nine layer. This choice should be stored in PFA TLV field and should be
+ * picked up by driver, next time during init.
+ *
+ * Returns zero when save was successful, negative values otherwise.
+ */
+static int ice_update_tx_topo_user_sel(struct ice_pf *pf, bool txbalance_ena)
+{
+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
+	struct ice_hw *hw = &pf->hw;
+	int status;
+
+	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (status)
+		return status;
+
+	status = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
+				 sizeof(usr_sel), &usr_sel, true, true, NULL);
+	if (status)
+		goto exit_release_res;
+
+	if (txbalance_ena)
+		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
+	else
+		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
+
+	status = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
+					 sizeof(usr_sel.data), &usr_sel.data,
+					 true, NULL, NULL);
+
+exit_release_res:
+	ice_release_nvm(hw);
+
+	return status;
+}
+
+/**
+ * ice_devlink_txbalance_get - Get txbalance parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to store the parameter value
+ *
+ * Returns zero on success and negative value on failure.
+ */
+static int
+ice_devlink_txbalance_get(struct devlink *devlink, u32 id,
+			  struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	int status;
+
+	status = ice_get_tx_topo_user_sel(pf, &ctx->val.vbool);
+	if (status) {
+		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_txbalance_set - Set txbalance parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to get the parameter value
+ *
+ * Returns zero on success and negative value on failure.
+ */
+static int
+ice_devlink_txbalance_set(struct devlink *devlink, u32 id,
+			  struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	int status;
+
+	status = ice_update_tx_topo_user_sel(pf, ctx->val.vbool);
+	if (status)
+		return -EIO;
+
+	dev_warn(dev, "Transmit balancing setting has been changed on this device. You must reboot the system for the change to take effect");
+
+	return 0;
+}
+
+/**
+ * ice_devlink_txbalance_validate - Validate passed txbalance parameter value
+ * @devlink: unused pointer to devlink instance
+ * @id: the parameter ID to validate
+ * @val: value to validate
+ * @extack: netlink extended ACK structure
+ *
+ * Supported values are:
+ * true - five layer, false - nine layer Tx Scheduler Topology Tree
+ *
+ * Returns zero when passed parameter value is supported. Negative value on
+ * error.
+ */
+static int ice_devlink_txbalance_validate(struct devlink *devlink, u32 id,
+					  union devlink_param_value val,
+					  struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_hw *hw = &pf->hw;
+
+	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Error: Requested feature is not supported by the FW on this device. Update the FW and run this command again.");
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
 /**
  * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
  * @devlink: pointer to the devlink instance to reload
@@ -838,6 +992,13 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+			     "txbalancing",
+			     DEVLINK_PARAM_TYPE_BOOL,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_txbalance_get,
+			     ice_devlink_txbalance_set,
+			     ice_devlink_txbalance_validate),
 
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 3dc5662d62a6..2e8db018a630 100644
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
index c262dc886e6a..928e0e9eca47 100644
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
index 774c2317967d..90f36e19e06b 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -15,6 +15,10 @@ struct ice_orom_civd_info {
 int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
 int
+ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
+		void *data, bool last_command, bool read_shadow_ram,
+		struct ice_sq_cd *cd);
+int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
 int
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

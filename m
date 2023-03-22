Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3186C4B64
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 14:13:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4823401B5;
	Wed, 22 Mar 2023 13:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4823401B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679490787;
	bh=1R+ruI3L+Y1u87ycXyRE8kHQqdxhLfUoJbYMrvHjoM4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g7/ydwY9p9GP+LTaVNkIRnI0aQrWKx+e1wz9ZaWQfwOhHWGAU5Z/fNsvsCw0axH2j
	 oE/PDLCoNx5LOOPdQfpcQUgUAhdKSoRSF3HLfXq3K6r9yScsG5FsspErJX6bRV/uWs
	 FFT6YrD5jsMBe/DTZlyDvBSHvqEk1I6Hl85SXH8ynG4q96c6VuA0ZquOhn87tJIxw/
	 wm6Ma453FsQiTiKQ7WcFV/y3k2/8lgeNwA9Q4RBprRAknOjjdyfypPnR8atdVDH4yP
	 v/ZnHzhnKnw+5GbOPCNtoxnWOVmztGM6RmITBkIaWHXRVO2PSDLqA8Cp4STiHFDazM
	 Oc1k+pOlUhNmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgriqiWCH0vj; Wed, 22 Mar 2023 13:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ABE640125;
	Wed, 22 Mar 2023 13:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ABE640125
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1776D1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDD6141D69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD6141D69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4G7gp280sKms for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 13:12:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 517934194E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 517934194E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340743725"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340743725"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714394684"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="714394684"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:48 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 14:12:26 +0100
Message-Id: <20230322131227.244687-5-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230322131227.244687-1-michal.wilczynski@intel.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679490770; x=1711026770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5OBR9ADYu34c5hOA2bvlbOGais6UITXp0Pg3Tny184c=;
 b=ZXYl6wSQgwTg0tQwwMP+U/nu5iaWXh80l19hUicodjG7zvxtI9x6I0UT
 RrddGh7nAacqZJrit9KIw3hZCwGJ91JQYIEfdQfZiWR2Eb4PgeSDMWprx
 WsmMPZHYKzcAZUyA+lMzzl7g8Tsi8GCuFLtPR5HoSsmbG2c5d8FNdu1+Z
 EsLfbD2rwavSLCMHOO42df0nUla7VQ7tyjGuLA2m5GGuRvP63VrRy95y5
 PshzYzHRvxFDoWRXO2j0Sb/Rb428gzoj0BuVEkXPihlyaPiUTis1zl44N
 cntUn79AOwj0t+fRnRAwvhlZOG8C0kvpA2VFh+QVqQpFfZRzduueYC7mj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZXYl6wSQ
Subject: [Intel-wired-lan] [PATCH net-next v11 4/5] ice: Add txbalancing
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
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 163 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   2 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 6 files changed, 179 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index ef2d30dc996d..740236b3f0fc 100644
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
index bc44cc220818..eb00f75c1ae6 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -736,6 +736,161 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
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
+	if (txbalance_ena)
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
+ * ice_devlink_txbalance_get - Get txbalance parameter
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to store the parameter value
+ *
+ * Returns zero on success and negative value on failure.
+ */
+static int ice_devlink_txbalance_get(struct devlink *devlink, u32 id,
+				     struct devlink_param_gset_ctx *ctx)
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
+static int ice_devlink_txbalance_set(struct devlink *devlink, u32 id,
+				     struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	int status;
+
+	status = ice_update_tx_topo_user_sel(pf, ctx->val.vbool);
+	if (status)
+		return -EIO;
+
+	dev_warn(dev,
+		 "Transmit balancing setting has been changed on this device. You must reboot the system for the change to take effect");
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
  * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
  * @pf: pf struct
@@ -1391,7 +1546,13 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
-
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+			     "txbalancing",
+			     DEVLINK_PARAM_TYPE_BOOL,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_txbalance_get,
+			     ice_devlink_txbalance_set,
+			     ice_devlink_txbalance_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 3dc5662d62a6..dc5b49104674 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -286,7 +286,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
  *
  * Returns: zero on success, or a negative error code on failure.
  */
-static int
+int
 ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 			u16 block_size, u8 *block, bool last_cmd,
 			u8 *reset_level, struct netlink_ext_ack *extack)
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
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

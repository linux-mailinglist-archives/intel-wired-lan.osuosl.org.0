Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE53D6B8FFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 11:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 652EC40111;
	Tue, 14 Mar 2023 10:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 652EC40111
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678789640;
	bh=xH3vYRc5jFCyDl2W2rGuxyJPlWE6XOaet3TGFYNff/s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AvljV3/sV0hdM5qVHoKM8j2kgVUtOKPSiSkkGn9k1WjnP1dJfAI/o4L3hTX1HcoPt
	 3B+yVj56p8mMQszn8nYtxsN/hQs3TDYGnoC31WHlCyCVu1K5rnuRez6NdHinjsSF0+
	 77yK8wcKhddLihr48gL4x0ev+AbU7MFBVATu3/mRZoLQuhHX4H7ExJIkT6B4OzMm1V
	 4wLtQwUwiuIXp95zUakdNUMwAYhTiwt6QEQ93tw88irHgS1khIqiSaSIxq8c7ek3fP
	 98uiKIX7Jeijc9AIE0QAIOpWbKrSDH7/jdAS92Rgjk0ACPsVuQJ4gFMezn+JcObB5/
	 A/QMMN8Q++csg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7m41xuDEgd34; Tue, 14 Mar 2023 10:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ED6540A21;
	Tue, 14 Mar 2023 10:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1ED6540A21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA5B11BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 10:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CEAB401ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 10:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CEAB401ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyegHXYAT15r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 10:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C949408ED
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C949408ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 10:26:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325749599"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="325749599"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 03:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="656292650"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="656292650"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 03:25:37 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Mar 2023 11:25:13 +0100
Message-Id: <20230314102514.46636-5-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230314102514.46636-1-michal.wilczynski@intel.com>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678789616; x=1710325616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HT/jD2AdIZJGTC1wWmSCU1kFAZslKKrKEfYeq0qGgDo=;
 b=eVOaBqMG+Fm533fo3cLjkr1GyVYFetaS+loE2CjCxtKtyOO0yPR5cUWW
 572+1r+yBtBRN1zR+C8aP785LaJzeUE248W4/LqtXWUCuddqgE0pvt1xh
 huyc1ZuDI8SVy9V/wBKAvsidJagX1Qc8wb2wnQ9RvAzUy4ORrNdvX8/y2
 /7vfyJxJE9TpIET2Glt+pKco7XDmeW6/eMorx4bx6tu1+22dyI0Y2gyOH
 7QBnguiXvlIPqmCxLCW/8+63dnyOrF35ZQ2KAEwD7Q5yl/p/CbZlN1IrP
 aemqrHUTfF5DGryv3FBQOTF0gfG+QYdbtfcDPsbX6A8chwxCu9ptgMWpG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eVOaBqMG
Subject: [Intel-wired-lan] [PATCH net-next v10 4/5] ice: Add txbalancing
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
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 162 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   2 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 6 files changed, 178 insertions(+), 3 deletions(-)

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
index bc44cc220818..8fbaa45ae757 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -736,6 +736,160 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
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
+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
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
+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
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
+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
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
@@ -1391,7 +1545,13 @@ static const struct devlink_param ice_devlink_params[] = {
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

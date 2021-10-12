Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466AD429A7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 02:42:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 857684019F;
	Tue, 12 Oct 2021 00:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PMbs_kOXIi8e; Tue, 12 Oct 2021 00:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BE1A4019E;
	Tue, 12 Oct 2021 00:42:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73B271BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED00B4019F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id APShO5hasVDP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1018401A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="226961367"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="226961367"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="524017498"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:46 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 17:41:12 -0700
Message-Id: <20211012004113.1583133-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211012004113.1583133-1-jacob.e.keller@intel.com>
References: <20211012004113.1583133-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 3/4] ice: move
 ice_devlink_flash_update and merge with ice_flash_pldm_image
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

The ice_devlink_flash_update function performs a few upfront checks and
then calls ice_flash_pldm_image.

Most if these checks make more sense in the context of code within
ice_flash_pldm_image. Merge ice_devlink_flash_update and
ice_flash_pldm_image into one function, placing it in ice_fw_update.c

Since this is still the entry point for devlink, call the function
ice_devlink_flash_update instead of ice_flash_pldm_image. This leaves a
single function which handles the devlink parameters and then initiates
a PLDM update.

When merging the calls to ice_cancel_pending_update function, notice
that both it and the main flash update process take the NVM hardware
semaphore. We can eliminate the call to get the semaphore from
ice_cancel_pending_update by placing the check after we acquire the
semaphore during ice_flash_pldm_image.

With this change, the ice_devlink_flash_update function in
ice_fw_update.c becomes the main entry point for flash update. It
elimintes some unnecessary boiler plate code between the two previous
functions. The ultimate motivation for this is that it eases supporting
a dry run with the PLDM library in a future change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 50 --------------
 .../net/ethernet/intel/ice/ice_fw_update.c    | 69 ++++++++++---------
 .../net/ethernet/intel/ice/ice_fw_update.h    |  7 +-
 3 files changed, 41 insertions(+), 85 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 34ceb8e964fe..c64286aad7be 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -370,56 +370,6 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
-/**
- * ice_devlink_flash_update - Update firmware stored in flash on the device
- * @devlink: pointer to devlink associated with device to update
- * @params: flash update parameters
- * @extack: netlink extended ACK structure
- *
- * Perform a device flash update. The bulk of the update logic is contained
- * within the ice_flash_pldm_image function.
- *
- * Returns: zero on success, or an error code on failure.
- */
-static int
-ice_devlink_flash_update(struct devlink *devlink,
-			 struct devlink_flash_update_params *params,
-			 struct netlink_ext_ack *extack)
-{
-	struct ice_pf *pf = devlink_priv(devlink);
-	struct ice_hw *hw = &pf->hw;
-	u8 preservation;
-	int err;
-
-	if (!params->overwrite_mask) {
-		/* preserve all settings and identifiers */
-		preservation = ICE_AQC_NVM_PRESERVE_ALL;
-	} else if (params->overwrite_mask == DEVLINK_FLASH_OVERWRITE_SETTINGS) {
-		/* overwrite settings, but preserve the vital device identifiers */
-		preservation = ICE_AQC_NVM_PRESERVE_SELECTED;
-	} else if (params->overwrite_mask == (DEVLINK_FLASH_OVERWRITE_SETTINGS |
-					      DEVLINK_FLASH_OVERWRITE_IDENTIFIERS)) {
-		/* overwrite both settings and identifiers, preserve nothing */
-		preservation = ICE_AQC_NVM_NO_PRESERVATION;
-	} else {
-		NL_SET_ERR_MSG_MOD(extack, "Requested overwrite mask is not supported");
-		return -EOPNOTSUPP;
-	}
-
-	if (!hw->dev_caps.common_cap.nvm_unified_update) {
-		NL_SET_ERR_MSG_MOD(extack, "Current firmware does not support unified update");
-		return -EOPNOTSUPP;
-	}
-
-	err = ice_cancel_pending_update(pf, NULL, extack);
-	if (err)
-		return err;
-
-	devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
-
-	return ice_flash_pldm_image(pf, params->fw, preservation, extack);
-}
-
 static const struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
 	.eswitch_mode_get = ice_eswitch_mode_get,
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 489766e6ca6b..9de7f6cb4b93 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -652,8 +652,9 @@ static const struct pldmfw_ops ice_fwu_ops = {
  *
  * Returns: zero on success, or a negative error code on failure.
  */
-int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
-			      struct netlink_ext_ack *extack)
+static int
+ice_cancel_pending_update(struct ice_pf *pf, const char *component,
+			  struct netlink_ext_ack *extack)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 	struct device *dev = ice_pf_to_dev(pf);
@@ -720,27 +721,14 @@ int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 					   "Canceling previous pending update",
 					   component, 0, 0);
 
-	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
-	if (err) {
-		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
-		return err;
-	}
-
 	pending |= ICE_AQC_NVM_REVERT_LAST_ACTIV;
-	err = ice_switch_flash_banks(pf, pending, extack);
-
-	ice_release_nvm(hw);
-
-	return err;
+	return ice_switch_flash_banks(pf, pending, extack);
 }
 
 /**
- * ice_flash_pldm_image - Write a PLDM-formatted firmware image to the device
- * @pf: private device driver structure
- * @fw: firmware object pointing to the relevant firmware file
- * @preservation: preservation level to request from firmware
+ * ice_devlink_flash_update - Write a firmware image to the device
+ * @devlink: pointer to devlink associated with the device to update
+ * @params: devlink flash update parameters
  * @extack: netlink extended ACK structure
  *
  * Parse the data for a given firmware file, verifying that it is a valid PLDM
@@ -753,23 +741,35 @@ int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
  *
  * Returns: zero on success or a negative error code on failure.
  */
-int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
-			 u8 preservation, struct netlink_ext_ack *extack)
+int ice_devlink_flash_update(struct devlink *devlink,
+			     struct devlink_flash_update_params *params,
+			     struct netlink_ext_ack *extack)
 {
+	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_fwu_priv priv;
+	u8 preservation;
 	int err;
 
-	switch (preservation) {
-	case ICE_AQC_NVM_PRESERVE_ALL:
-	case ICE_AQC_NVM_PRESERVE_SELECTED:
-	case ICE_AQC_NVM_NO_PRESERVATION:
-	case ICE_AQC_NVM_FACTORY_DEFAULT:
-		break;
-	default:
-		WARN(1, "Unexpected preservation level request %u", preservation);
-		return -EINVAL;
+	if (!params->overwrite_mask) {
+		/* preserve all settings and identifiers */
+		preservation = ICE_AQC_NVM_PRESERVE_ALL;
+	} else if (params->overwrite_mask == DEVLINK_FLASH_OVERWRITE_SETTINGS) {
+		/* overwrite settings, but preserve the vital device identifiers */
+		preservation = ICE_AQC_NVM_PRESERVE_SELECTED;
+	} else if (params->overwrite_mask == (DEVLINK_FLASH_OVERWRITE_SETTINGS |
+					      DEVLINK_FLASH_OVERWRITE_IDENTIFIERS)) {
+		/* overwrite both settings and identifiers, preserve nothing */
+		preservation = ICE_AQC_NVM_NO_PRESERVATION;
+	} else {
+		NL_SET_ERR_MSG_MOD(extack, "Requested overwrite mask is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (!hw->dev_caps.common_cap.nvm_unified_update) {
+		NL_SET_ERR_MSG_MOD(extack, "Current firmware does not support unified update");
+		return -EOPNOTSUPP;
 	}
 
 	memset(&priv, 0, sizeof(priv));
@@ -780,6 +780,8 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 	priv.pf = pf;
 	priv.activate_flags = preservation;
 
+	devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
+
 	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (err) {
 		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
@@ -788,7 +790,11 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 		return err;
 	}
 
-	err = pldmfw_flash_image(&priv.context, fw);
+	err = ice_cancel_pending_update(pf, NULL, extack);
+	if (err)
+		goto out_release_nvm;
+
+	err = pldmfw_flash_image(&priv.context, params->fw);
 	if (err == -ENOENT) {
 		dev_err(dev, "Firmware image has no record matching this device\n");
 		NL_SET_ERR_MSG_MOD(extack, "Firmware image has no record matching this device");
@@ -800,6 +806,7 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 		dev_err(dev, "Failed to flash PLDM image, err %d", err);
 	}
 
+out_release_nvm:
 	ice_release_nvm(hw);
 
 	return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
index 1f84ef18bfd1..be6d222124f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
@@ -4,9 +4,8 @@
 #ifndef _ICE_FW_UPDATE_H_
 #define _ICE_FW_UPDATE_H_
 
-int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
-			 u8 preservation, struct netlink_ext_ack *extack);
-int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
-			      struct netlink_ext_ack *extack);
+int ice_devlink_flash_update(struct devlink *devlink,
+			     struct devlink_flash_update_params *params,
+			     struct netlink_ext_ack *extack);
 
 #endif
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

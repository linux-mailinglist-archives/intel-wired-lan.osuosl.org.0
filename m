Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E1A42FE97
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Oct 2021 01:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E91DC83BA4;
	Fri, 15 Oct 2021 23:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwV322pP3LKR; Fri, 15 Oct 2021 23:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C467083BA3;
	Fri, 15 Oct 2021 23:13:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D5431BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 23:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3878340238
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 23:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n5VJQV3byxb3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Oct 2021 23:13:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAD6440208
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 23:13:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="251452632"
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="251452632"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 16:13:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="488609463"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 16:13:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 15 Oct 2021 16:13:03 -0700
Message-Id: <20211015231304.3080026-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v3 1/2] ice: move
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

With this change, the ice_devlink_flash_update function in
ice_fw_update.c becomes the main entry point for flash update. It
elimintes some unnecessary boiler plate code between the two previous
functions. The ultimate motivation for this is that it eases supporting
a dry run with the PLDM library in a future change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

Changes since v2
* don't hold NVM resource while issuing the discover device capabilities
  firmware command

 drivers/net/ethernet/intel/ice/ice_devlink.c  | 50 -----------------
 .../net/ethernet/intel/ice/ice_fw_update.c    | 54 ++++++++++++-------
 .../net/ethernet/intel/ice/ice_fw_update.h    |  7 ++-
 3 files changed, 39 insertions(+), 72 deletions(-)

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
index 489766e6ca6b..1f8e0e5d5660 100644
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
@@ -737,10 +738,9 @@ int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
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
@@ -753,23 +753,35 @@ int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
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
@@ -780,6 +792,12 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 	priv.pf = pf;
 	priv.activate_flags = preservation;
 
+	devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
+
+	err = ice_cancel_pending_update(pf, NULL, extack);
+	if (err)
+		return err;
+
 	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (err) {
 		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
@@ -788,7 +806,7 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 		return err;
 	}
 
-	err = pldmfw_flash_image(&priv.context, fw);
+	err = pldmfw_flash_image(&priv.context, params->fw);
 	if (err == -ENOENT) {
 		dev_err(dev, "Firmware image has no record matching this device\n");
 		NL_SET_ERR_MSG_MOD(extack, "Firmware image has no record matching this device");
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

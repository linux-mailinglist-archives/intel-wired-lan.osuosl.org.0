Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E88544041EA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 01:50:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B1A3613F9;
	Wed,  8 Sep 2021 23:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bcdw40Ex_ynf; Wed,  8 Sep 2021 23:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59A77613F2;
	Wed,  8 Sep 2021 23:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BCE21BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47C88613F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6s8b9ofE8dc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C0B9613F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="306193167"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="306193167"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693729501"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Sep 2021 16:49:23 -0700
Message-Id: <20210908234924.3416592-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210908234924.3416592-1-jacob.e.keller@intel.com>
References: <20210908234924.3416592-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 3/4] ice: refactor ice_flash_pldm_image
 and combine with ice_devlink_flash_update
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

Most of these checks actually make more sense within the context of
ice_flash_pldm_image. Refactor this function to fit the argument format
of the .flash_update devlink handler, and merge the checks from
ice_devlink_flash_update.

Note that the check for overwrite mask was converted to a switch because
it made the check easier to read by avoiding the massively long line or
weird line breaks that were hard for my eyes to follow.

When moving the ice_cancel_pending_update function, notice that it also
takes the NVM semaphore. The main flash update process also requires the
NVM hardware semaphore. We can eliminate the call to get the semaphore
from ice_cancel_pending_update by placing the check after we acquire the
semaphore during ice_flash_pldm_image.

With this change, the ice_flash_pldm_image becomes the main entry point
for the devlink flash update, eliminating some unnecessary boiler plate
code. This also eases supporting a dry run with the PLDM library in
a future change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 52 +-------------
 .../net/ethernet/intel/ice/ice_fw_update.c    | 70 +++++++++++--------
 .../net/ethernet/intel/ice/ice_fw_update.h    |  7 +-
 3 files changed, 45 insertions(+), 84 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index dbf54fb5c9ee..40d1d113c1ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -372,62 +372,12 @@ static int ice_devlink_info_get(struct devlink *devlink,
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
 	.eswitch_mode_set = ice_eswitch_mode_set,
 	.info_get = ice_devlink_info_get,
-	.flash_update = ice_devlink_flash_update,
+	.flash_update = ice_flash_pldm_image,
 };
 
 static void ice_devlink_free(void *devlink_ptr)
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index ae1360d8554e..18fdf90d21d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -658,8 +658,9 @@ static const struct pldmfw_ops ice_fwu_ops = {
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
@@ -727,28 +728,14 @@ int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 					   "Canceling previous pending update",
 					   component, 0, 0);
 
-	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
-	if (status) {
-		dev_err(dev, "Failed to acquire device flash lock, err %s aq_err %s\n",
-			ice_stat_str(status),
-			ice_aq_str(hw->adminq.sq_last_status));
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
-		return -EIO;
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
  * ice_flash_pldm_image - Write a PLDM-formatted firmware image to the device
- * @pf: private device driver structure
- * @fw: firmware object pointing to the relevant firmware file
- * @preservation: preservation level to request from firmware
+ * @devlink: pointer to devlink associated with the device to update
+ * @params: devlink flash update parameters
  * @extack: netlink extended ACK structure
  *
  * Parse the data for a given firmware file, verifying that it is a valid PLDM
@@ -761,24 +748,42 @@ int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
  *
  * Returns: zero on success or a negative error code on failure.
  */
-int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
-			 u8 preservation, struct netlink_ext_ack *extack)
+int ice_flash_pldm_image(struct devlink *devlink,
+			 struct devlink_flash_update_params *params,
+			 struct netlink_ext_ack *extack)
 {
+	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_fwu_priv priv;
 	enum ice_status status;
+	u8 preservation;
 	int err;
 
-	switch (preservation) {
-	case ICE_AQC_NVM_PRESERVE_ALL:
-	case ICE_AQC_NVM_PRESERVE_SELECTED:
-	case ICE_AQC_NVM_NO_PRESERVATION:
-	case ICE_AQC_NVM_FACTORY_DEFAULT:
+	switch (params->overwrite_mask) {
+	case 0:
+		/* preserve all settings and identifiers */
+		preservation = ICE_AQC_NVM_PRESERVE_ALL;
+		break;
+	case DEVLINK_FLASH_OVERWRITE_SETTINGS:
+		/* overwrite settings, but preserve vital information such as
+		 * device identifiers.
+		 */
+		preservation = ICE_AQC_NVM_PRESERVE_SELECTED;
+		break;
+	case (DEVLINK_FLASH_OVERWRITE_SETTINGS |
+	      DEVLINK_FLASH_OVERWRITE_IDENTIFIERS):
+		/* overwrite both settings and identifiers, preserve nothing */
+		preservation = ICE_AQC_NVM_NO_PRESERVATION;
 		break;
 	default:
-		WARN(1, "Unexpected preservation level request %u", preservation);
-		return -EINVAL;
+		NL_SET_ERR_MSG_MOD(extack, "Requested overwrite mask is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (!hw->dev_caps.common_cap.nvm_unified_update) {
+		NL_SET_ERR_MSG_MOD(extack, "Current firmware does not support unified update");
+		return -EOPNOTSUPP;
 	}
 
 	memset(&priv, 0, sizeof(priv));
@@ -789,6 +794,8 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 	priv.pf = pf;
 	priv.activate_flags = preservation;
 
+	devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
+
 	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (status) {
 		dev_err(dev, "Failed to acquire device flash lock, err %s aq_err %s\n",
@@ -798,7 +805,11 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 		return -EIO;
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
@@ -810,6 +821,7 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 		dev_err(dev, "Failed to flash PLDM image, err %d", err);
 	}
 
+out_release_nvm:
 	ice_release_nvm(hw);
 
 	return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
index 1f84ef18bfd1..d12e81a00f11 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
@@ -4,9 +4,8 @@
 #ifndef _ICE_FW_UPDATE_H_
 #define _ICE_FW_UPDATE_H_
 
-int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
-			 u8 preservation, struct netlink_ext_ack *extack);
-int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
-			      struct netlink_ext_ack *extack);
+int ice_flash_pldm_image(struct devlink *devlink,
+			 struct devlink_flash_update_params *params,
+			 struct netlink_ext_ack *extack);
 
 #endif
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

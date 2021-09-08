Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C97B4041E9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 01:49:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02E2A402F9;
	Wed,  8 Sep 2021 23:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6DiUVTHFt26; Wed,  8 Sep 2021 23:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D23B740302;
	Wed,  8 Sep 2021 23:49:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BE711BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB0406070E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIRkGpWL9VgD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F4CE613F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="306193165"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="306193165"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693729499"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Sep 2021 16:49:22 -0700
Message-Id: <20210908234924.3416592-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210908234924.3416592-1-jacob.e.keller@intel.com>
References: <20210908234924.3416592-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 2/4] ice: move and rename
 ice_check_for_pending_update
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

The ice_devlink_flash_update function performs a few checks and then
calls ice_flash_pldm_image. One of these checks is to call
ice_check_for_pending_update. This function checks if the device has
a pending update, and cancels it if so. This is necessary to allow
a new flash update to proceed.

We want to refactor the ice code to eliminate ice_devlink_flash_update,
moving its checks into ice_flash_pldm_image.

To do this, ice_check_for_pending_update will become static, and only
called by ice_flash_pldm_image. To make this change easier to review,
first just move the function up within the ice_fw_update.c file.

While at it, note that the function has a misleading name. Its primary
action is to cancel a pending update. Using the verb "check" does not
imply this. Rename it to ice_cancel_pending_update.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c  |   2 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    | 152 +++++++++---------
 .../net/ethernet/intel/ice/ice_fw_update.h    |   4 +-
 3 files changed, 79 insertions(+), 79 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 66a11ec941a3..dbf54fb5c9ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -413,7 +413,7 @@ ice_devlink_flash_update(struct devlink *devlink,
 		return -EOPNOTSUPP;
 	}
 
-	err = ice_check_for_pending_update(pf, NULL, extack);
+	err = ice_cancel_pending_update(pf, NULL, extack);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index f8601d5b0b19..ae1360d8554e 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -648,89 +648,18 @@ static const struct pldmfw_ops ice_fwu_ops = {
 };
 
 /**
- * ice_flash_pldm_image - Write a PLDM-formatted firmware image to the device
- * @pf: private device driver structure
- * @fw: firmware object pointing to the relevant firmware file
- * @preservation: preservation level to request from firmware
- * @extack: netlink extended ACK structure
- *
- * Parse the data for a given firmware file, verifying that it is a valid PLDM
- * formatted image that matches this device.
- *
- * Extract the device record Package Data and Component Tables and send them
- * to the firmware. Extract and write the flash data for each of the three
- * main flash components, "fw.mgmt", "fw.undi", and "fw.netlist". Notify
- * firmware once the data is written to the inactive banks.
- *
- * Returns: zero on success or a negative error code on failure.
- */
-int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
-			 u8 preservation, struct netlink_ext_ack *extack)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
-	struct ice_fwu_priv priv;
-	enum ice_status status;
-	int err;
-
-	switch (preservation) {
-	case ICE_AQC_NVM_PRESERVE_ALL:
-	case ICE_AQC_NVM_PRESERVE_SELECTED:
-	case ICE_AQC_NVM_NO_PRESERVATION:
-	case ICE_AQC_NVM_FACTORY_DEFAULT:
-		break;
-	default:
-		WARN(1, "Unexpected preservation level request %u", preservation);
-		return -EINVAL;
-	}
-
-	memset(&priv, 0, sizeof(priv));
-
-	priv.context.ops = &ice_fwu_ops;
-	priv.context.dev = dev;
-	priv.extack = extack;
-	priv.pf = pf;
-	priv.activate_flags = preservation;
-
-	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
-	if (status) {
-		dev_err(dev, "Failed to acquire device flash lock, err %s aq_err %s\n",
-			ice_stat_str(status),
-			ice_aq_str(hw->adminq.sq_last_status));
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
-		return -EIO;
-	}
-
-	err = pldmfw_flash_image(&priv.context, fw);
-	if (err == -ENOENT) {
-		dev_err(dev, "Firmware image has no record matching this device\n");
-		NL_SET_ERR_MSG_MOD(extack, "Firmware image has no record matching this device");
-	} else if (err) {
-		/* Do not set a generic extended ACK message here. A more
-		 * specific message may already have been set by one of our
-		 * ops.
-		 */
-		dev_err(dev, "Failed to flash PLDM image, err %d", err);
-	}
-
-	ice_release_nvm(hw);
-
-	return err;
-}
-
-/**
- * ice_check_for_pending_update - Check for a pending flash update
+ * ice_cancel_pending_update - Cancel any pending update for a component
  * @pf: the PF driver structure
  * @component: if not NULL, the name of the component being updated
  * @extack: Netlink extended ACK structure
  *
- * Check whether the device already has a pending flash update. If such an
- * update is found, cancel it so that the requested update may proceed.
+ * Cancel any pending update for the specified component. If component is
+ * NULL, all device updates will be canceled.
  *
  * Returns: zero on success, or a negative error code on failure.
  */
-int ice_check_for_pending_update(struct ice_pf *pf, const char *component,
-				 struct netlink_ext_ack *extack)
+int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
+			      struct netlink_ext_ack *extack)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 	struct device *dev = ice_pf_to_dev(pf);
@@ -814,3 +743,74 @@ int ice_check_for_pending_update(struct ice_pf *pf, const char *component,
 
 	return err;
 }
+
+/**
+ * ice_flash_pldm_image - Write a PLDM-formatted firmware image to the device
+ * @pf: private device driver structure
+ * @fw: firmware object pointing to the relevant firmware file
+ * @preservation: preservation level to request from firmware
+ * @extack: netlink extended ACK structure
+ *
+ * Parse the data for a given firmware file, verifying that it is a valid PLDM
+ * formatted image that matches this device.
+ *
+ * Extract the device record Package Data and Component Tables and send them
+ * to the firmware. Extract and write the flash data for each of the three
+ * main flash components, "fw.mgmt", "fw.undi", and "fw.netlist". Notify
+ * firmware once the data is written to the inactive banks.
+ *
+ * Returns: zero on success or a negative error code on failure.
+ */
+int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
+			 u8 preservation, struct netlink_ext_ack *extack)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	struct ice_fwu_priv priv;
+	enum ice_status status;
+	int err;
+
+	switch (preservation) {
+	case ICE_AQC_NVM_PRESERVE_ALL:
+	case ICE_AQC_NVM_PRESERVE_SELECTED:
+	case ICE_AQC_NVM_NO_PRESERVATION:
+	case ICE_AQC_NVM_FACTORY_DEFAULT:
+		break;
+	default:
+		WARN(1, "Unexpected preservation level request %u", preservation);
+		return -EINVAL;
+	}
+
+	memset(&priv, 0, sizeof(priv));
+
+	priv.context.ops = &ice_fwu_ops;
+	priv.context.dev = dev;
+	priv.extack = extack;
+	priv.pf = pf;
+	priv.activate_flags = preservation;
+
+	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (status) {
+		dev_err(dev, "Failed to acquire device flash lock, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
+		return -EIO;
+	}
+
+	err = pldmfw_flash_image(&priv.context, fw);
+	if (err == -ENOENT) {
+		dev_err(dev, "Firmware image has no record matching this device\n");
+		NL_SET_ERR_MSG_MOD(extack, "Firmware image has no record matching this device");
+	} else if (err) {
+		/* Do not set a generic extended ACK message here. A more
+		 * specific message may already have been set by one of our
+		 * ops.
+		 */
+		dev_err(dev, "Failed to flash PLDM image, err %d", err);
+	}
+
+	ice_release_nvm(hw);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
index c6390f6851ff..1f84ef18bfd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
@@ -6,7 +6,7 @@
 
 int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 			 u8 preservation, struct netlink_ext_ack *extack);
-int ice_check_for_pending_update(struct ice_pf *pf, const char *component,
-				 struct netlink_ext_ack *extack);
+int ice_cancel_pending_update(struct ice_pf *pf, const char *component,
+			      struct netlink_ext_ack *extack);
 
 #endif
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF269429A7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 02:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D67A9404DE;
	Tue, 12 Oct 2021 00:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCinbYIK_eCA; Tue, 12 Oct 2021 00:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1011404CB;
	Tue, 12 Oct 2021 00:41:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 622F91BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B20364019E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W75SE7F852P3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31CFF401A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="226961366"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="226961366"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="524017496"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:45 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 17:41:11 -0700
Message-Id: <20211012004113.1583133-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211012004113.1583133-1-jacob.e.keller@intel.com>
References: <20211012004113.1583133-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 2/4] ice: move and rename
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
 .../net/ethernet/intel/ice/ice_fw_update.c    | 148 +++++++++---------
 .../net/ethernet/intel/ice/ice_fw_update.h    |   4 +-
 3 files changed, 77 insertions(+), 77 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 5dc3ee03d219..34ceb8e964fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -411,7 +411,7 @@ ice_devlink_flash_update(struct devlink *devlink,
 		return -EOPNOTSUPP;
 	}
 
-	err = ice_check_for_pending_update(pf, NULL, extack);
+	err = ice_cancel_pending_update(pf, NULL, extack);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index ccdfd2f030d8..489766e6ca6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -642,87 +642,18 @@ static const struct pldmfw_ops ice_fwu_ops = {
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
-	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
-	if (err) {
-		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
-		return err;
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
@@ -804,3 +735,72 @@ int ice_check_for_pending_update(struct ice_pf *pf, const char *component,
 
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
+	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (err) {
+		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
+		return err;
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

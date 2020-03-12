Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7B21826E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:58:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82E75864D1;
	Thu, 12 Mar 2020 01:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYYDfewlvXWv; Thu, 12 Mar 2020 01:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED31B863A1;
	Thu, 12 Mar 2020 01:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0C9C1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B49F08854C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m99pL2oh2xy7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BEE488C19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:58:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="236656310"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga008.jf.intel.com with ESMTP; 11 Mar 2020 18:58:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:58:13 -0700
Message-Id: <20200312015818.1007882-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312015818.1007882-1-jacob.e.keller@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 4/9] ice: discover and store size of
 available flash
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When reading from the NVM using a flat address, it is useful to know the
upper bound on the size of the flash contents. This value is not stored
within the NVM.

We can determine the size by performing a bisection between upper and
lower bounds. It is known that the size cannot exceed 16 MB (offset of
0xFFFFFF).

Use a while loop to bisect the upper and lower bounds by reading one
byte at a time. On a failed read, lower the maximum bound. On
a successful read, increase the lower bound.

Save this as the flash_size in the ice_nvm_info structure that contains
data related to the NVM.

The size will be used in a future patch for implementing full NVM read
via ethtool's GEEPROM command.

The maximum possible size for the flash is bounded by the size limit for
the NVM AdminQ commands. Add a new macro, ICE_AQC_NVM_MAX_OFFSET, which
can be used to represent this upper bound.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 62 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 3 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f7d4befcf283..a1066c4bf40d 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1233,6 +1233,7 @@ struct ice_aqc_sff_eeprom {
  * NVM Update commands (indirect 0x0703)
  */
 struct ice_aqc_nvm {
+#define ICE_AQC_NVM_MAX_OFFSET		0xFFFFFF
 	__le16 offset_low;
 	u8 offset_high;
 	u8 cmd_flags;
@@ -1798,6 +1799,7 @@ enum ice_aq_err {
 	ICE_AQ_RC_ENOMEM	= 9,  /* Out of memory */
 	ICE_AQ_RC_EBUSY		= 12, /* Device or resource busy */
 	ICE_AQ_RC_EEXIST	= 13, /* Object already exists */
+	ICE_AQ_RC_EINVAL	= 14, /* Invalid argument */
 	ICE_AQ_RC_ENOSPC	= 16, /* No space left or allocation failure */
 	ICE_AQ_RC_ENOSYS	= 17, /* Function not implemented */
 	ICE_AQ_RC_ENOSEC	= 24, /* Missing security manifest */
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index ef68fa989a57..4cdce0370963 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -26,8 +26,7 @@ ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 
 	cmd = &desc.params.nvm;
 
-	/* In offset the highest byte must be zeroed. */
-	if (offset & 0xFF000000)
+	if (offset > ICE_AQC_NVM_MAX_OFFSET)
 		return ICE_ERR_PARAM;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_read);
@@ -363,6 +362,58 @@ static enum ice_status ice_get_orom_ver_info(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_discover_flash_size - Discover the available flash size.
+ * @hw: pointer to the HW struct
+ *
+ * The device flash could be up to 16MB in size. However, it is possible that
+ * the actual size is smaller. Use bisection to determine the accessible size
+ * of flash memory.
+ */
+static enum ice_status ice_discover_flash_size(struct ice_hw *hw)
+{
+	u32 min_size = 0, max_size = ICE_AQC_NVM_MAX_OFFSET + 1;
+	enum ice_status status;
+
+	status = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (status)
+		return status;
+
+	while ((max_size - min_size) > 1) {
+		u32 offset = (max_size + min_size) / 2;
+		u32 len = 1;
+		u8 data;
+
+		status = ice_read_flat_nvm(hw, offset, &len, &data, false);
+		if (status == ICE_ERR_AQ_ERROR &&
+		    hw->adminq.sq_last_status == ICE_AQ_RC_EINVAL) {
+			ice_debug(hw, ICE_DBG_NVM,
+				  "%s: New upper bound of %u bytes\n",
+				  __func__, offset);
+			status = 0;
+			max_size = offset;
+		} else if (!status) {
+			ice_debug(hw, ICE_DBG_NVM,
+				  "%s: New lower bound of %u bytes\n",
+				  __func__, offset);
+			min_size = offset;
+		} else {
+			/* an unexpected error occurred */
+			goto err_read_flat_nvm;
+		}
+	}
+
+	ice_debug(hw, ICE_DBG_NVM,
+		  "Predicted flash size is %u bytes\n", max_size);
+
+	hw->nvm.flash_size = max_size;
+
+err_read_flat_nvm:
+	ice_release_nvm(hw);
+
+	return status;
+}
+
 /**
  * ice_init_nvm - initializes NVM setting
  * @hw: pointer to the HW struct
@@ -421,6 +472,13 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 
 	nvm->eetrack = (eetrack_hi << 16) | eetrack_lo;
 
+	status = ice_discover_flash_size(hw);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM,
+			  "NVM init error: failed to discover flash size.\n");
+		return status;
+	}
+
 	switch (hw->device_id) {
 	/* the following devices do not have boot_cfg_tlv yet */
 	case ICE_DEV_ID_E823C_BACKPLANE:
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 72591b4aca11..200aceae4323 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -253,6 +253,7 @@ struct ice_nvm_info {
 	struct ice_orom_info orom;	/* Option ROM version info */
 	u32 eetrack;			/* NVM data version */
 	u16 sr_words;			/* Shadow RAM size in words */
+	u32 flash_size;			/* Size of available flash in bytes */
 	u8 major_ver;			/* major version of NVM package */
 	u8 minor_ver;			/* minor version of dev starter */
 	u8 blank_nvm_mode;        /* is NVM empty (no FW present) */
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

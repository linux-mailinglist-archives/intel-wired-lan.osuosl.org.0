Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BBC58FB99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 13:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7633382A5D;
	Thu, 11 Aug 2022 11:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7633382A5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660218414;
	bh=h3fIe0Etvchqi9WgqzsJqG+z1fKvkEyommAI53XCcXY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BV6lPrM1oQneDLMzJznxg+pCcyVq8eg3Gmy+XNc7Ac3S4fQkxv1jH2y2Da6WUHrlR
	 eEQjyxoCqewW9vauZchqBBW132Y8HJMGJu4B2m+cBOUEAwKOkWKOId9FihmXrq5uN6
	 NWJ8K7tIo/miLEiOuKFmhXUYXYyWuqtztg6VuQJW4avKfFLRJ+df00i2Zrkj4QKQE8
	 9x111jgHpgTYYimssqeojm6A3VhhVDCxUgPwc3DWcAsdIkd2pcEfRMHVwyYofqAJK9
	 sQ2NiJJcrcEmkKvYBdt8wyg21jfwHf1OLi4t2wHr5+LfgWeKpOGbfJjDwuTtVo49nz
	 G/xwtm+oKINCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtOtI12L2y-I; Thu, 11 Aug 2022 11:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08AB282A4E;
	Thu, 11 Aug 2022 11:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08AB282A4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A9F31BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 11:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02058417E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 11:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02058417E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gpb4LoLdWJFq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 11:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40F5D417E5
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40F5D417E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 11:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="271101367"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="271101367"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 04:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="851178104"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 11 Aug 2022 04:46:43 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 13:45:52 +0200
Message-Id: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660218406; x=1691754406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+EmJVN6VCmlLQBE57BZPSibLQmgrqsoO+KXecqQLbhM=;
 b=jsEsZdiMzW/MdTwa03hIaHnT9s19eHvznoEVg8lD8RVIYsTO5vOmp1Wf
 W/zSlXHDSpvRKNDZedu1xxmcRDBWyGvnmjuTCCjdZ/LlxcXcVdnaCkI7+
 qrulxLq9KCxHUFCtke9SYdEllpBp2kORbGXqU6pVycS3p4D6/7Nfc9jw+
 5Ts5GGsJldYm01iU3v8sReemcwG3wiH9iBHjmlA6Mj8FyTN41VTz4yVQ7
 9tJtSFuUFfEjtjggRgLoKws7xK9PL4/y94S4WVqtBItRyFPye91mB3vSl
 YiQtYD3F2N7eDPG7slvbxk5E82aUVgRBuofKkN1JHDcRuGeDGHREigxd0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jsEsZdiM
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix inventory failed error
 during flash update
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

After updating flash image on E810 card with NVM update tool
there was an error: The inventory process failed.

This was reported at bugzilla thread #2114483 and caused by the tool
trying to read devlink parameters fw.mgmt.minsrev and fw.undi.minsrev
but those parameters were not registered by the driver.

The ice NVM flash has a security revision field for the main NVM bank
and the Option ROM bank. In addition to the revision within the module,
the device also has a minimum security revision TLV area. This minimum
security revision field indicates the minimum value that will be
accepted for the associated security revision when loading the NVM bank.

These parameters are permanent (i.e. stored in flash), and are used to
indicate the minimum security revision of the associated NVM bank. If
the image in the bank has a lower security revision, then the flash
loader will not continue loading that flash bank.

Fix this by adding two new devlink parameters fw.mgmt.minsrev
and fw.undi.minsrev and function to read they respective values.

This idea was proposed before with both write and read funcionality
but was rejected by community. This patch focuses on read only.

Fixes: 1adf7ead8204 ("ice: enable initial devlink support")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Link: https://lore.kernel.org/netdev/20210129004332.3004826-5-anthony.l.nguyen@intel.com/
---
 Documentation/networking/devlink/ice.rst      | 33 +++++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 17 ++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 90 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 53 +++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++
 6 files changed, 202 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 8c082b139bbd..aabd33a7f7da 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -90,6 +90,39 @@ The ``ice`` driver reports the following versions
       - 0xee16ced7
       - The first 4 bytes of the hash of the netlist module contents.
 
+Parameters
+==========
+
+The minimum security revision fields of the ice device control whether the
+associated flash section can be loaded. If the security revision field of
+the section -- ``fw.mgmt.srev`` for the main firmware section and
+``fw.undi.srev`` for the Option ROM -- is lower than the associated minimum
+security revision, then the device will not load that section of firmware.
+
+The ``ice`` driver implements driver-specific parameters for reading the
+minimum security revision fields associated those two sections of the device
+flash. Note that the device will not allow lowering a minimum security
+revision, nor will it allow increasing the security revision higher than the
+associated security revision of the active flash image.
+
+.. list-table:: Minimum security revision parameters
+      :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``fw.undi.minsrev``
+     - u32
+     - permanent
+     - The device's minimum security revision for the ``fw.undi`` section of
+       the flash.
+   * - ``fw.mgmt.minsrev``
+     - u32
+     - permanent
+     - The device's minimum security revision for the ``fw.mgmt`` section of
+       the flash.
+
 Flash Update
 ============
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 9939238573a4..4d46f91adbdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1509,6 +1509,23 @@ struct ice_aqc_nvm_checksum {
 	u8 rsvd2[12];
 };
 
+#define ICE_AQC_NVM_MINSREV_MOD_ID		0x130
+
+/* Used for reading and writing MinSRev using 0x0701 and 0x0703. Note that the
+ * type field is excluded from the section when reading and writing from
+ * a module using the module_typeid field with these AQ commands.
+ */
+struct ice_aqc_nvm_minsrev {
+	__le16 length;
+	__le16 validity;
+#define ICE_AQC_NVM_MINSREV_NVM_VALID          BIT(0)
+#define ICE_AQC_NVM_MINSREV_OROM_VALID         BIT(1)
+	__le16 nvm_minsrev_l;
+	__le16 nvm_minsrev_h;
+	__le16 orom_minsrev_l;
+	__le16 orom_minsrev_h;
+};
+
 /* Used for NVM Set Package Data command - 0x070A */
 struct ice_aqc_nvm_pkg_data {
 	u8 reserved[3];
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 3337314a7b35..95f1653306d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -372,6 +372,83 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
+enum ice_devlink_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV,
+	ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV,
+};
+
+/**
+ * ice_devlink_minsrev_get - Get the current minimum security revision
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to get
+ * @ctx: context to return the parameter value
+ *
+ * Returns: zero on success, or an error code on failure.
+ */
+static int
+ice_devlink_minsrev_get(struct devlink *devlink, u32 id,
+			struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_minsrev_info minsrevs = {};
+
+	if (id != ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV &&
+	    id != ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV)
+		return -EINVAL;
+
+	if (ice_get_nvm_minsrevs(&pf->hw, &minsrevs)) {
+		dev_warn(dev, "Failed to read minimum security revision data from flash\n");
+		return -EIO;
+	}
+
+	/* We report zero if the device has not yet had a valid minimum
+	 * security revision programmed for the associated module. This makes
+	 * sense because it is not possible to have a security revision of
+	 * less than zero. Thus, all images will be able to load if the
+	 * minimum security revision is zero, the same as the case where the
+	 * minimum value is indicated as invalid.
+	 */
+	switch (id) {
+	case ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV:
+		if (minsrevs.nvm_valid)
+			ctx->val.vu32 = minsrevs.nvm;
+		else
+			ctx->val.vu32 = 0;
+		break;
+	case ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV:
+		if (minsrevs.orom_valid)
+			ctx->val.vu32 = minsrevs.orom;
+		else
+			ctx->val.vu32 = 0;
+		break;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_minsrev_set - Set the minimum security revision
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to return the parameter value
+ *
+ * Currently manually changing minimum security revision is not supported.
+ *
+ * Returns: EINVAL.
+ */
+static int
+ice_devlink_minsrev_set(struct devlink *devlink, u32 id,
+			struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	dev_err(ice_pf_to_dev(pf), "Setting minimum security revision is not available\n");
+
+	return -EINVAL;
+}
+
 /**
  * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
  * @devlink: pointer to the devlink instance to reload
@@ -589,6 +666,19 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV,
+			     "fw.mgmt.minsrev",
+			     DEVLINK_PARAM_TYPE_U32,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_minsrev_get,
+			     ice_devlink_minsrev_set, NULL),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV,
+			     "fw.undi.minsrev",
+			     DEVLINK_PARAM_TYPE_U32,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_minsrev_get,
+			     ice_devlink_minsrev_set, NULL),
+
 
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 13cdb5ea594d..1c3fa733387d 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -1139,6 +1139,59 @@ int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags)
 	return err;
 }
 
+/**
+ * ice_get_nvm_minsrevs - Get the Minimum Security Revision values from flash
+ * @hw: pointer to the HW struct
+ * @minsrevs: structure to store NVM and OROM minsrev values
+ *
+ * Read the Minimum Security Revision TLV and extract the revision values from
+ * the flash image into a readable structure for processing.
+ */
+int ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs)
+{
+	struct ice_aqc_nvm_minsrev data;
+	int status;
+	u16 valid;
+
+	status = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (status)
+		return status;
+
+	status = ice_aq_read_nvm(hw, ICE_AQC_NVM_MINSREV_MOD_ID, 0,
+				 sizeof(data), &data, true, false, NULL);
+
+	ice_release_nvm(hw);
+
+	if (status)
+		return status;
+
+	valid = le16_to_cpu(data.validity);
+
+	/* Extract NVM minimum security revision */
+	if (valid & ICE_AQC_NVM_MINSREV_NVM_VALID) {
+		u16 minsrev_l, minsrev_h;
+
+		minsrev_l = le16_to_cpu(data.nvm_minsrev_l);
+		minsrev_h = le16_to_cpu(data.nvm_minsrev_h);
+
+		minsrevs->nvm = minsrev_h << 16 | minsrev_l;
+		minsrevs->nvm_valid = true;
+	}
+
+	/* Extract the OROM minimum security revision */
+	if (valid & ICE_AQC_NVM_MINSREV_OROM_VALID) {
+		u16 minsrev_l, minsrev_h;
+
+		minsrev_l = le16_to_cpu(data.orom_minsrev_l);
+		minsrev_h = le16_to_cpu(data.orom_minsrev_h);
+
+		minsrevs->orom = minsrev_h << 16 | minsrev_l;
+		minsrevs->orom_valid = true;
+	}
+
+	return 0;
+}
+
 /**
  * ice_aq_nvm_update_empr
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 856d1ad4398b..b44ecb8b9341 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -20,6 +20,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 int
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type);
+int ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
 int ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom);
 int ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 861b64322959..c14fa57b1cb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -428,6 +428,14 @@ struct ice_nvm_info {
 	u8 minor;
 };
 
+/* Minimum Security Revision information */
+struct ice_minsrev_info {
+	u32 nvm;
+	u32 orom;
+	u8 nvm_valid : 1;
+	u8 orom_valid : 1;
+};
+
 /* netlist version information */
 struct ice_netlist_info {
 	u32 major;			/* major high/low */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

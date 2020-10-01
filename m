Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E3128054E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 19:33:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E3F7820379;
	Thu,  1 Oct 2020 17:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C2PMgggry-Hw; Thu,  1 Oct 2020 17:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A51823504;
	Thu,  1 Oct 2020 17:32:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 203BC1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AB1886AFE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPhQBexP8mvT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 17:32:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C0A4A86B00
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:42 +0000 (UTC)
IronPort-SDR: 4q9p4/LeHayHJ4FoTKM7hMWeURxxMymEyT4za0RIJ4CvFLOig+EW80s1MJ2fYqrvPPq654j7cA
 cxHOvHt4sLxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162870725"
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="162870725"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:41 -0700
IronPort-SDR: CvzH+MsxbcOBmVDHT39WkDIzfTr1P6fKSm2DZlEUuELjVSacMrc+TNZLJJyO6lS04ZkzO+gDYp
 8qTEI7ji807Q==
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="514815543"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Oct 2020 10:31:44 -0700
Message-Id: <20201001173144.712615-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.497.g54e85e7af1ac
In-Reply-To: <20201001173144.712615-1-jacob.e.keller@intel.com>
References: <20201001173144.712615-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [intel-wired-lan 4/4] ice: add devlink parameters
 to read and write minimum security revision
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

The ice NVM flash has a security revision field for the main NVM bank
and the Option ROM bank. In addition to the revision within the module,
the device also has a minimum security revision TLV area. This minimum
security revision field indicates the minimum value that will be
accepted for the associated security revision when loading the NVM bank.

Add functions to read and update the minimum security revisions. Use
these functions to implement devlink parameters, "fw.undi.minsrev" and
"fw.mgmt.minsrev".

These parameters are permanent (i.e. stored in flash), and are used to
indicate the minimum security revision of the associated NVM bank. If
the image in the bank has a lower security revision, then the flash
loader will not continue loading that flash bank.

The new parameters allow for opting in to update the minimum security
revision to ensure that a flash image with a known security flaw cannot
be loaded.

Note that the minimum security revision cannot be reduced, only
increased. The driver also refuses to allow an update if the currently
active image revision is lower than the requested value. This is done to
avoid potentially updating the value such that the device can no longer
start.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/ice.rst      |  34 +++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  17 ++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 218 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 112 +++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   8 +
 8 files changed, 397 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 07baf475076c..ebeacc70c6e9 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -90,6 +90,40 @@ The ``ice`` driver reports the following versions
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
+The ``ice`` driver implements driver-specific parameters for updating the
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
+
 Flash Update
 ============
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b06fbe99d8e9..40c96662458a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1334,6 +1334,8 @@ struct ice_aqc_nvm_checksum {
 	u8 rsvd2[12];
 };
 
+#define ICE_AQC_NVM_MINSREV_MOD_ID		0x130
+
 /* The result of netlist NVM read comes in a TLV format. The actual data
  * (netlist header) starts from word offset 1 (byte 2). The FW strips
  * out the type field from the TLV header so all the netlist fields
@@ -1361,6 +1363,21 @@ struct ice_aqc_nvm_checksum {
 #define ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH		0xA
 #define ICE_AQC_NVM_NETLIST_ID_BLK_CUST_VER		0x2F
 
+/* Used for reading and writing MinSRev using 0x0701 and 0x0703. Note that the
+ * type field is excluded from the section when reading and writing from
+ * a module using the module_typeid field with these AQ commands.
+ */
+struct ice_aqc_nvm_minsrev {
+	__le16 length;
+	__le16 validity;
+#define ICE_AQC_NVM_MINSREV_NVM_VALID		BIT(0)
+#define ICE_AQC_NVM_MINSREV_OROM_VALID		BIT(1)
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
index 8bc7853a8a99..f59ac69b7a75 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -250,6 +250,193 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return 0;
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
+ice_devlink_minsrev_get(struct devlink *devlink, u32 id, struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_minsrev_info minsrevs = {};
+	enum ice_status status;
+
+	if (id != ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV &&
+	    id != ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV)
+		return -EINVAL;
+
+	status = ice_get_nvm_minsrevs(&pf->hw, &minsrevs);
+	if (status) {
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
+ * Set the minimum security revision value for fw.mgmt or fw.undi. The kernel
+ * calls the validate handler before calling this, so we do not need to
+ * duplicate those checks here.
+ *
+ * Returns: zero on success, or an error code on failure.
+ */
+static int
+ice_devlink_minsrev_set(struct devlink *devlink, u32 id, struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_minsrev_info minsrevs = {};
+	enum ice_status status;
+
+	switch (id) {
+	case ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV:
+		minsrevs.nvm_valid = true;
+		minsrevs.nvm = ctx->val.vu32;
+		break;
+	case ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV:
+		minsrevs.orom_valid = true;
+		minsrevs.orom = ctx->val.vu32;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	status = ice_update_nvm_minsrevs(&pf->hw, &minsrevs);
+	if (status) {
+		dev_warn(dev, "Failed to update minimum security revision data\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_minsrev_validate - Validate a minimum security revision update
+ * @devlink: unused pointer to devlink instance
+ * @id: the parameter ID to validate
+ * @val: value to validate
+ * @extack: netlink extended ACK structure
+ *
+ * Check that a proposed update to a minimum security revision field is valid.
+ * Each minimum security revision can only be increased, not decreased.
+ * Additionally, we verify that the value is never set higher than the
+ * security revision of the active flash component.
+ *
+ * Returns: zero if the value is valid, -ERANGE if it is out of range, and
+ * -EINVAL if this function is called with the wrong ID.
+ */
+static int
+ice_devlink_minsrev_validate(struct devlink *devlink, u32 id, union devlink_param_value val,
+			     struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_minsrev_info minsrevs = {};
+	enum ice_status status;
+
+	if (id != ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV &&
+	    id != ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV)
+		return -EINVAL;
+
+	status = ice_get_nvm_minsrevs(&pf->hw, &minsrevs);
+	if (status) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to read minimum security revision data from flash");
+		return -EIO;
+	}
+
+	switch (id) {
+	case ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV:
+		if (val.vu32 > pf->hw.flash.nvm.srev) {
+			NL_SET_ERR_MSG_MOD(extack, "Cannot update fw.mgmt minimum security revision higher than the currently running firmware");
+			dev_dbg(dev, "Attempted to set fw.mgmt.minsrev to %u, but running firmware has srev %u\n",
+				val.vu32, pf->hw.flash.nvm.srev);
+			return -EPERM;
+		}
+
+		if (minsrevs.nvm_valid && val.vu32 < minsrevs.nvm) {
+			NL_SET_ERR_MSG_MOD(extack, "Cannot lower the minimum security revision for fw.mgmt flash section");
+			dev_dbg(dev, "Attempted  to set fw.mgmt.minsrev to %u, but current minsrev is %u\n",
+				val.vu32, minsrevs.nvm);
+			return -EPERM;
+		}
+		break;
+	case ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV:
+		if (val.vu32 > pf->hw.flash.orom.srev) {
+			NL_SET_ERR_MSG_MOD(extack, "Cannot update fw.undi minimum security revision higher than the currently running firmware");
+			dev_dbg(dev, "Attempted to set fw.undi.minsrev to %u, but running firmware has srev %u\n",
+				val.vu32, pf->hw.flash.orom.srev);
+			return -EPERM;
+		}
+
+		if (minsrevs.orom_valid && val.vu32 < minsrevs.orom) {
+			NL_SET_ERR_MSG_MOD(extack, "Cannot lower the minimum security revision for fw.undi flash section");
+			dev_dbg(dev, "Attempted  to set fw.undi.minsrev to %u, but current minsrev is %u\n",
+				val.vu32, minsrevs.orom);
+			return -EPERM;
+		}
+		break;
+	}
+
+	return 0;
+}
+
+/* devlink parameters for the ice driver */
+static const struct devlink_param ice_devlink_params[] = {
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV,
+			     "fw.mgmt.minsrev",
+			     DEVLINK_PARAM_TYPE_U32,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_minsrev_get,
+			     ice_devlink_minsrev_set,
+			     ice_devlink_minsrev_validate),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV,
+			     "fw.undi.minsrev",
+			     DEVLINK_PARAM_TYPE_U32,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     ice_devlink_minsrev_get,
+			     ice_devlink_minsrev_set,
+			     ice_devlink_minsrev_validate),
+};
+
 /**
  * ice_devlink_flash_update - Update firmware stored in flash on the device
  * @devlink: pointer to devlink associated with device to update
@@ -369,6 +556,13 @@ int ice_devlink_register(struct ice_pf *pf)
 		return err;
 	}
 
+	err = devlink_params_register(devlink, ice_devlink_params,
+				      ARRAY_SIZE(ice_devlink_params));
+	if (err) {
+		dev_err(dev, "devlink params registration failed: %d\n", err);
+		return err;
+	}
+
 	return 0;
 }
 
@@ -380,7 +574,29 @@ int ice_devlink_register(struct ice_pf *pf)
  */
 void ice_devlink_unregister(struct ice_pf *pf)
 {
-	devlink_unregister(priv_to_devlink(pf));
+	struct devlink *devlink = priv_to_devlink(pf);
+
+	devlink_params_unregister(devlink, ice_devlink_params,
+				  ARRAY_SIZE(ice_devlink_params));
+	devlink_unregister(devlink);
+}
+
+/**
+ * ice_devlink_params_publish - Publish parameters to allow user access.
+ * @pf: the PF structure pointer
+ */
+void ice_devlink_params_publish(struct ice_pf __maybe_unused *pf)
+{
+	devlink_params_publish(priv_to_devlink(pf));
+}
+
+/**
+ * ice_devlink_params_unpublish - Unpublish parameters to prevent user access.
+ * @pf: the PF structure pointer
+ */
+void ice_devlink_params_unpublish(struct ice_pf __maybe_unused *pf)
+{
+	devlink_params_unpublish(priv_to_devlink(pf));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index 6e806a08dc23..31b9928e9596 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -8,6 +8,8 @@ struct ice_pf *ice_allocate_pf(struct device *dev);
 
 int ice_devlink_register(struct ice_pf *pf);
 void ice_devlink_unregister(struct ice_pf *pf);
+void ice_devlink_params_publish(struct ice_pf *pf);
+void ice_devlink_params_unpublish(struct ice_pf *pf);
 int ice_devlink_create_port(struct ice_pf *pf);
 void ice_devlink_destroy_port(struct ice_pf *pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1d74466ce77f..e6932bfb9544 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4072,6 +4072,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	}
 
 	ice_devlink_init_regions(pf);
+	ice_devlink_params_publish(pf);
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
 	pf->hw.udp_tunnel_nic.unset_port = ice_udp_tunnel_unset_port;
@@ -4261,6 +4262,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	devm_kfree(dev, pf->vsi);
 err_init_pf_unroll:
 	ice_deinit_pf(pf);
+	ice_devlink_params_unpublish(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
@@ -4374,6 +4376,7 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_vsi_free_q_vectors(pf->vsi[i]);
 	}
 	ice_deinit_pf(pf);
+	ice_devlink_params_unpublish(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(&pf->hw);
 	ice_devlink_unregister(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 785d16ed99cb..e233dcb64adb 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -1072,6 +1072,118 @@ enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags)
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
 
+/**
+ * ice_get_nvm_minsrevs - Get the Minimum Security Revision values from flash
+ * @hw: pointer to the HW struct
+ * @minsrevs: structure to store NVM and OROM minsrev values
+ *
+ * Read the Minimum Security Revision TLV and extract the revision values from
+ * the flash image into a readable structure for processing.
+ */
+enum ice_status
+ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs)
+{
+	struct ice_aqc_nvm_minsrev data;
+	enum ice_status status;
+	u16 valid;
+
+	status = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (status)
+		return status;
+
+	status = ice_aq_read_nvm(hw, ICE_AQC_NVM_MINSREV_MOD_ID, 0, sizeof(data),
+				 &data, true, false, NULL);
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
+/**
+ * ice_update_nvm_minsrevs - Update minimum security revision TLV data in flash
+ * @hw: pointer to the HW struct
+ * @minsrevs: minimum security revision information
+ *
+ * Update the NVM or Option ROM minimum security revision fields in the PFA
+ * area of the flash. Reads the minsrevs->nvm_valid and minsrevs->orom_valid
+ * fields to determine what update is being requested. If the valid bit is not
+ * set for that module, then the associated minsrev will be left as is.
+ */
+enum ice_status
+ice_update_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs)
+{
+	struct ice_aqc_nvm_minsrev data;
+	enum ice_status status;
+
+	if (!minsrevs->nvm_valid && !minsrevs->orom_valid) {
+		ice_debug(hw, ICE_DBG_NVM, "At least one of NVM and OROM MinSrev must be valid");
+		return ICE_ERR_PARAM;
+	}
+
+	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (status)
+		return status;
+
+	/* Get current data */
+	status = ice_aq_read_nvm(hw, ICE_AQC_NVM_MINSREV_MOD_ID, 0, sizeof(data),
+				 &data, true, false, NULL);
+	if (status)
+		goto exit_release_res;
+
+	if (minsrevs->nvm_valid) {
+		data.nvm_minsrev_l = cpu_to_le16(minsrevs->nvm & 0xFFFF);
+		data.nvm_minsrev_h = cpu_to_le16(minsrevs->nvm >> 16);
+		data.validity |= cpu_to_le16(ICE_AQC_NVM_MINSREV_NVM_VALID);
+	}
+
+	if (minsrevs->orom_valid) {
+		data.orom_minsrev_l = cpu_to_le16(minsrevs->orom & 0xFFFF);
+		data.orom_minsrev_h = cpu_to_le16(minsrevs->orom >> 16);
+		data.validity |= cpu_to_le16(ICE_AQC_NVM_MINSREV_OROM_VALID);
+	}
+
+	/* Update flash data */
+	status = ice_aq_update_nvm(hw, ICE_AQC_NVM_MINSREV_MOD_ID, 0, sizeof(data), &data,
+				   true, ICE_AQC_NVM_SPECIAL_UPDATE, NULL);
+	if (status)
+		goto exit_release_res;
+
+	/* Dump the Shadow RAM to the flash */
+	status = ice_nvm_write_activate(hw, 0);
+
+exit_release_res:
+	ice_release_nvm(hw);
+
+	return status;
+}
+
 /**
  * ice_aq_nvm_update_empr
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 8d430909f846..8cfb9b9ac638 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -14,6 +14,10 @@ enum ice_status
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type);
 enum ice_status
+ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
+enum ice_status
+ice_update_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
+enum ice_status
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size);
 enum ice_status ice_init_nvm(struct ice_hw *hw);
 enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 0e0cbf90c431..f387641195a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -322,6 +322,14 @@ struct ice_nvm_info {
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
2.28.0.497.g54e85e7af1ac

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

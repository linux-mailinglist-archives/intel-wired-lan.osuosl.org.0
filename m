Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E982AFBD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9794986A54;
	Thu, 12 Nov 2020 00:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWfFkjBdR_1L; Thu, 12 Nov 2020 00:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CF5386A97;
	Thu, 12 Nov 2020 00:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9470E1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EF05860D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjHL4lDgCVdG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C497B85C1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:13 +0000 (UTC)
IronPort-SDR: iMIHIqC2aaL3QWeDkD1YXy0xKrawjIn1T7O8F58DNm1iU3HSSzAJAGeoW0iCbHC02XbmMSy6a1
 5SWXletPAPjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170347633"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="170347633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:07 -0800
IronPort-SDR: 6t26cElULbsj+3trojPQbcbK/KKEbbYRUyO/Fg5+wvqJXa4kdg6iQNN2DGJ/Z6LPUk0n+d6wlh
 EzhycKPFpc/w==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="309015620"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:06 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 16:43:29 -0800
Message-Id: <20201112004330.2896993-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201112004330.2896993-1-jacob.e.keller@intel.com>
References: <20201112004330.2896993-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 6/7] ice: display stored netlist
 versions via devlink info
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

Add a function to read the inactive netlist bank for version
information. To support this, refactor how we read the netlist version
data. Instead of using the firmware AQ interface with a module ID, read
from the flash as a flat NVM, using ice_read_flash_module.

This change requires a slight adjustment to the offset values used, as
reading from the flat NVM includes the type field (which was stripped by
firmware previously). Cleanup the macro names and move them to
ice_type.h. For clarity in how we calculate the offsets and so that
programmers can easily map the offset value to the data sheet, use
a wrapper macro to account for the offset adjustments.

Use the newly added ice_get_inactive_netlist_ver function to extract the
version data from the pending netlist module update. Add the stored
variants of "fw.netlist", and "fw.netlist.build" to the info version map
array.

With this change, we now report the pending netlist module version if we
detect a pending but not complete netlist update when reporting firmware
versions.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  27 ---
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  38 ++++
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 164 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_status.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  35 ++++
 7 files changed, 176 insertions(+), 93 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index ce9090c009e8..d384ad2dfdab 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1343,33 +1343,6 @@ struct ice_aqc_nvm_checksum {
 
 #define ICE_AQC_NVM_MINSREV_MOD_ID		0x130
 
-/* The result of netlist NVM read comes in a TLV format. The actual data
- * (netlist header) starts from word offset 1 (byte 2). The FW strips
- * out the type field from the TLV header so all the netlist fields
- * should adjust their offset value by 1 word (2 bytes) in order to map
- * their correct location.
- */
-#define ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID		0x11B
-#define ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN_OFFSET	1
-#define ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN		2 /* In bytes */
-#define ICE_AQC_NVM_NETLIST_NODE_COUNT_OFFSET		2
-#define ICE_AQC_NVM_NETLIST_NODE_COUNT_LEN		2 /* In bytes */
-#define ICE_AQC_NVM_NETLIST_NODE_COUNT_M		ICE_M(0x3FF, 0)
-#define ICE_AQC_NVM_NETLIST_ID_BLK_START_OFFSET		5
-#define ICE_AQC_NVM_NETLIST_ID_BLK_LEN			0x30 /* In words */
-
-/* netlist ID block field offsets (word offsets) */
-#define ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_LOW	2
-#define ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_HIGH	3
-#define ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_LOW	4
-#define ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_HIGH	5
-#define ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_LOW		6
-#define ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_HIGH		7
-#define ICE_AQC_NVM_NETLIST_ID_BLK_REV_LOW		8
-#define ICE_AQC_NVM_NETLIST_ID_BLK_REV_HIGH		9
-#define ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH		0xA
-#define ICE_AQC_NVM_NETLIST_ID_BLK_CUST_VER		0x2F
-
 /* Used for reading and writing MinSRev using 0x0701 and 0x0703. Note that the
  * type field is excluded from the section when reading and writing from
  * a module using the module_typeid field with these AQ commands.
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 26bee486997f..392b90e58add 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -10,6 +10,7 @@
 struct ice_info_ctx {
 	char buf[128];
 	struct ice_nvm_info pending_nvm;
+	struct ice_netlist_info pending_netlist;
 	struct ice_hw_dev_caps dev_caps;
 };
 
@@ -195,6 +196,30 @@ static int ice_info_netlist_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	return 0;
 }
 
+static int ice_info_pending_netlist_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_netlist_info *netlist = &ctx->pending_netlist;
+
+	/* The netlist version fields are BCD formatted */
+	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
+			 netlist->major, netlist->minor,
+			 netlist->type >> 16, netlist->type & 0xFFFF, netlist->rev,
+			 netlist->cust_ver);
+
+	return 0;
+}
+
+static int ice_info_pending_netlist_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	struct ice_netlist_info *netlist = &ctx->pending_netlist;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist)
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
+
+	return 0;
+}
+
 #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter }
 #define running(key, getter) { ICE_VERSION_RUNNING, key, getter }
 #define stored(key, getter) { ICE_VERSION_STORED, key, getter }
@@ -226,7 +251,9 @@ static const struct ice_devlink_version {
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_APP, ice_info_ddp_pkg_version),
 	running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
 	running("fw.netlist", ice_info_netlist_ver),
+	stored("fw.netlist", ice_info_pending_netlist_ver),
 	running("fw.netlist.build", ice_info_netlist_build),
+	stored("fw.netlist.build", ice_info_pending_netlist_build),
 };
 
 /**
@@ -274,6 +301,17 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		}
 	}
 
+	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist) {
+		status = ice_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
+		if (status) {
+			dev_dbg(dev, "Unable to read inactive Netlist version data, status %s aq_err %s\n",
+				ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+
+			/* disable display of pending Option ROM */
+			ctx->dev_caps.common_cap.nvm_update_pending_netlist = false;
+		}
+	}
+
 	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack, "Unable to set driver name");
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f1fa22189750..5692c9db5829 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6310,6 +6310,8 @@ const char *ice_stat_str(enum ice_status stat_err)
 		return "ICE_ERR_OUT_OF_RANGE";
 	case ICE_ERR_ALREADY_EXISTS:
 		return "ICE_ERR_ALREADY_EXISTS";
+	case ICE_ERR_NVM:
+		return "ICE_ERR_NVM";
 	case ICE_ERR_NVM_CHECKSUM:
 		return "ICE_ERR_NVM_CHECKSUM";
 	case ICE_ERR_BUF_TOO_SHORT:
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 9613d24eaa06..8bc2df09a11a 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -408,6 +408,29 @@ ice_read_orom_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u
 	return status;
 }
 
+/**
+ * ice_read_netlist_module - Read data from the netlist module area
+ * @hw: pointer to the HW structure
+ * @bank: whether to read from the active or inactive module
+ * @offset: offset into the netlist to read from
+ * @data: storage for returned word value
+ *
+ * Read a word from the specified netlist bank.
+ */
+static enum ice_status
+ice_read_netlist_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
+{
+	enum ice_status status;
+	__le16 data_local;
+
+	status = ice_read_flash_module(hw, bank, ICE_SR_NETLIST_BANK_PTR, offset * sizeof(u16),
+				       (__force u8 *)&data_local, sizeof(u16));
+	if (!status)
+		*data = le16_to_cpu(data_local);
+
+	return status;
+}
+
 /**
  * ice_read_sr_word - Reads Shadow RAM word and acquire NVM if necessary
  * @hw: pointer to the HW structure
@@ -739,85 +762,94 @@ ice_get_orom_ver_info(struct ice_hw *hw, struct ice_orom_info *orom)
 }
 
 /**
- * ice_get_netlist_ver_info
+ * ice_get_netlist_info
  * @hw: pointer to the HW struct
- * @ver: pointer to netlist version info structure
+ * @bank: whether to read from the active or inactive flash bank
+ * @netlist: pointer to netlist version info structure
  *
- * Get the netlist version information
+ * Get the netlist version information from the requested bank. Reads the Link
+ * Topology section to find the Netlist ID block and extract the relevant
+ * information into the netlist version structure.
  */
 static enum ice_status
-ice_get_netlist_ver_info(struct ice_hw *hw, struct ice_netlist_info *ver)
+ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
+		     struct ice_netlist_info *netlist)
 {
-	enum ice_status ret;
-	u32 id_blk_start;
-	__le16 raw_data;
-	u16 data, i;
-	u16 *buff;
+	u16 module_id, length, node_count, i;
+	enum ice_status status;
+	u16 *id_blk;
 
-	ret = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (ret)
-		return ret;
-	buff = kcalloc(ICE_AQC_NVM_NETLIST_ID_BLK_LEN, sizeof(*buff),
-		       GFP_KERNEL);
-	if (!buff) {
-		ret = ICE_ERR_NO_MEMORY;
-		goto exit_no_mem;
+	status = ice_read_netlist_module(hw, bank, ICE_NETLIST_TYPE_OFFSET, &module_id);
+	if (status)
+		return status;
+
+	if (module_id != ICE_NETLIST_LINK_TOPO_MOD_ID) {
+		ice_debug(hw, ICE_DBG_NVM, "Expected netlist module_id ID of 0x%04x, but got 0x%04x\n",
+			  ICE_NETLIST_LINK_TOPO_MOD_ID, module_id);
+		return ICE_ERR_NVM;
 	}
 
-	/* read module length */
-	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID,
-			      ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN_OFFSET * 2,
-			      ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN, &raw_data,
-			      false, false, NULL);
-	if (ret)
+	status = ice_read_netlist_module(hw, bank, ICE_LINK_TOPO_MODULE_LEN, &length);
+	if (status)
+		return status;
+
+	/* sanity check that we have at least enough words to store the netlist ID block */
+	if (length < ICE_NETLIST_ID_BLK_SIZE) {
+		ice_debug(hw, ICE_DBG_NVM, "Netlist Link Topology module too small. Expected at least %u words, but got %u words.\n",
+			  ICE_NETLIST_ID_BLK_SIZE, length);
+		return ICE_ERR_NVM;
+	}
+
+	status = ice_read_netlist_module(hw, bank, ICE_LINK_TOPO_NODE_COUNT, &node_count);
+	if (status)
+		return status;
+	node_count &= ICE_LINK_TOPO_NODE_COUNT_M;
+
+	id_blk = kcalloc(ICE_NETLIST_ID_BLK_SIZE, sizeof(*id_blk), GFP_KERNEL);
+	if (!id_blk)
+		return ICE_ERR_NO_MEMORY;
+
+	/* Read out the entire Netlist ID Block at once. */
+	status = ice_read_flash_module(hw, bank, ICE_SR_NETLIST_BANK_PTR,
+				       ICE_NETLIST_ID_BLK_OFFSET(node_count) * sizeof(u16),
+				       (u8 *)id_blk, ICE_NETLIST_ID_BLK_SIZE * sizeof(u16));
+	if (status)
 		goto exit_error;
 
-	data = le16_to_cpu(raw_data);
-	/* exit if length is = 0 */
-	if (!data)
-		goto exit_error;
+	for (i = 0; i < ICE_NETLIST_ID_BLK_SIZE; i++)
+		id_blk[i] = le16_to_cpu(((__force __le16 *)id_blk)[i]);
 
-	/* read node count */
-	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID,
-			      ICE_AQC_NVM_NETLIST_NODE_COUNT_OFFSET * 2,
-			      ICE_AQC_NVM_NETLIST_NODE_COUNT_LEN, &raw_data,
-			      false, false, NULL);
-	if (ret)
-		goto exit_error;
-	data = le16_to_cpu(raw_data) & ICE_AQC_NVM_NETLIST_NODE_COUNT_M;
-
-	/* netlist ID block starts from offset 4 + node count * 2 */
-	id_blk_start = ICE_AQC_NVM_NETLIST_ID_BLK_START_OFFSET + data * 2;
-
-	/* read the entire netlist ID block */
-	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID,
-			      id_blk_start * 2,
-			      ICE_AQC_NVM_NETLIST_ID_BLK_LEN * 2, buff, false,
-			      false, NULL);
-	if (ret)
-		goto exit_error;
-
-	for (i = 0; i < ICE_AQC_NVM_NETLIST_ID_BLK_LEN; i++)
-		buff[i] = le16_to_cpu(((__force __le16 *)buff)[i]);
-
-	ver->major = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_HIGH] << 16) |
-		buff[ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_LOW];
-	ver->minor = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_HIGH] << 16) |
-		buff[ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_LOW];
-	ver->type = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_HIGH] << 16) |
-		buff[ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_LOW];
-	ver->rev = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_REV_HIGH] << 16) |
-		buff[ICE_AQC_NVM_NETLIST_ID_BLK_REV_LOW];
-	ver->cust_ver = buff[ICE_AQC_NVM_NETLIST_ID_BLK_CUST_VER];
+	netlist->major = id_blk[ICE_NETLIST_ID_BLK_MAJOR_VER_HIGH] << 16 |
+			 id_blk[ICE_NETLIST_ID_BLK_MAJOR_VER_LOW];
+	netlist->minor = id_blk[ICE_NETLIST_ID_BLK_MINOR_VER_HIGH] << 16 |
+			 id_blk[ICE_NETLIST_ID_BLK_MINOR_VER_LOW];
+	netlist->type = id_blk[ICE_NETLIST_ID_BLK_TYPE_HIGH] << 16 |
+			id_blk[ICE_NETLIST_ID_BLK_TYPE_LOW];
+	netlist->rev = id_blk[ICE_NETLIST_ID_BLK_REV_HIGH] << 16 |
+		       id_blk[ICE_NETLIST_ID_BLK_REV_LOW];
+	netlist->cust_ver = id_blk[ICE_NETLIST_ID_BLK_CUST_VER];
 	/* Read the left most 4 bytes of SHA */
-	ver->hash = buff[ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH + 15] << 16 |
-		buff[ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH + 14];
+	netlist->hash = id_blk[ICE_NETLIST_ID_BLK_SHA_HASH_WORD(15)] << 16 |
+			id_blk[ICE_NETLIST_ID_BLK_SHA_HASH_WORD(14)];
 
 exit_error:
-	kfree(buff);
-exit_no_mem:
-	ice_release_nvm(hw);
-	return ret;
+	kfree(id_blk);
+
+	return status;
+}
+
+/**
+ * ice_get_inactive_netlist_ver
+ * @hw: pointer to the HW struct
+ * @netlist: pointer to netlist version info structure
+ *
+ * Read the netlist version data from the inactive netlist bank. Used to
+ * extract version data of a pending flash update in order to display the
+ * version data.
+ */
+enum ice_status ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *netlist)
+{
+	return ice_get_netlist_info(hw, ICE_INACTIVE_FLASH_BANK, netlist);
 }
 
 /**
@@ -1073,7 +1105,7 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 	}
 
 	/* read the netlist version information */
-	status = ice_get_netlist_ver_info(hw, &flash->netlist);
+	status = ice_get_netlist_info(hw, ICE_ACTIVE_FLASH_BANK, &flash->netlist);
 	if (status)
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read netlist info.\n");
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index c5c737b7b062..34b5d9589ecc 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -20,6 +20,8 @@ ice_update_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
 enum ice_status
 ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm);
 enum ice_status
+ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *netlist);
+enum ice_status
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size);
 enum ice_status ice_init_nvm(struct ice_hw *hw);
 enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
diff --git a/drivers/net/ethernet/intel/ice/ice_status.h b/drivers/net/ethernet/intel/ice/ice_status.h
index 4028c6365172..dbf66057371d 100644
--- a/drivers/net/ethernet/intel/ice/ice_status.h
+++ b/drivers/net/ethernet/intel/ice/ice_status.h
@@ -29,6 +29,7 @@ enum ice_status {
 	ICE_ERR_HW_TABLE			= -19,
 	ICE_ERR_FW_DDP_MISMATCH			= -20,
 
+	ICE_ERR_NVM				= -50,
 	ICE_ERR_NVM_CHECKSUM			= -51,
 	ICE_ERR_BUF_TOO_SHORT			= -52,
 	ICE_ERR_NVM_BLANK_MODE			= -53,
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a9832b85f157..9265b8190499 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -857,6 +857,41 @@ struct ice_hw_port_stats {
 /* Size in bytes of Option ROM trailer */
 #define ICE_NVM_OROM_TRAILER_LENGTH		(2 * ICE_CSS_HEADER_LENGTH)
 
+/* The Link Topology Netlist section is stored as a series of words. It is
+ * stored in the NVM as a TLV, with the first two words containing the type
+ * and length.
+ */
+#define ICE_NETLIST_LINK_TOPO_MOD_ID		0x011B
+#define ICE_NETLIST_TYPE_OFFSET			0x0000
+#define ICE_NETLIST_LEN_OFFSET			0x0001
+
+/* The Link Topology section follows the TLV header. When reading the netlist
+ * using ice_read_netlist_module, we need to account for the 2-word TLV
+ * header.
+ */
+#define ICE_NETLIST_LINK_TOPO_OFFSET(n)		((n) + 2)
+
+#define ICE_LINK_TOPO_MODULE_LEN		ICE_NETLIST_LINK_TOPO_OFFSET(0x0000)
+#define ICE_LINK_TOPO_NODE_COUNT		ICE_NETLIST_LINK_TOPO_OFFSET(0x0001)
+
+#define ICE_LINK_TOPO_NODE_COUNT_M		ICE_M(0x3FF, 0)
+
+/* The Netlist ID Block is located after all of the Link Topology nodes. */
+#define ICE_NETLIST_ID_BLK_SIZE			0x30
+#define ICE_NETLIST_ID_BLK_OFFSET(n)		ICE_NETLIST_LINK_TOPO_OFFSET(0x0004 + 2 * (n))
+
+/* netlist ID block field offsets (word offsets) */
+#define ICE_NETLIST_ID_BLK_MAJOR_VER_LOW	0x02
+#define ICE_NETLIST_ID_BLK_MAJOR_VER_HIGH	0x03
+#define ICE_NETLIST_ID_BLK_MINOR_VER_LOW	0x04
+#define ICE_NETLIST_ID_BLK_MINOR_VER_HIGH	0x05
+#define ICE_NETLIST_ID_BLK_TYPE_LOW		0x06
+#define ICE_NETLIST_ID_BLK_TYPE_HIGH		0x07
+#define ICE_NETLIST_ID_BLK_REV_LOW		0x08
+#define ICE_NETLIST_ID_BLK_REV_HIGH		0x09
+#define ICE_NETLIST_ID_BLK_SHA_HASH_WORD(n)	(0x0A + (n))
+#define ICE_NETLIST_ID_BLK_CUST_VER		0x2F
+
 /* Auxiliary field, mask, and shift definition for Shadow RAM and NVM Flash */
 #define ICE_SR_CTRL_WORD_1_S		0x06
 #define ICE_SR_CTRL_WORD_1_M		(0x03 << ICE_SR_CTRL_WORD_1_S)
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

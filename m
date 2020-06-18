Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A65721FFB43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 20:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39A6C87CBB;
	Thu, 18 Jun 2020 18:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qmGtRHCFi-ev; Thu, 18 Jun 2020 18:46:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B729A87CB8;
	Thu, 18 Jun 2020 18:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 017471BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 18:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC1CE87CA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 18:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-kbNqRLbzKF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 18:46:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0F2987C93
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 18:46:14 +0000 (UTC)
IronPort-SDR: E36/bHnYksyezq82Ct90VbIIz7W9gPB84gjNJXLpAtNFLUIGAsLbvKgNkhw/nPC/LAx0lzTVCG
 pXDKCrhdIHMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="144205750"
X-IronPort-AV: E=Sophos;i="5.75,252,1589266800"; d="scan'208";a="144205750"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 11:46:14 -0700
IronPort-SDR: 7hw8/VdOvRQzorUBa27bJ0aAw6m0ghDldvgj/2aRQnZ30U90DUt8Ja1twzPsEoDm+vxwa52Ho0
 D8iL2YPAgIGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,252,1589266800"; d="scan'208";a="383608413"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2020 11:46:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 18 Jun 2020 11:46:11 -0700
Message-Id: <20200618184611.2641181-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] ice: implement snapshot for device
 capabilities
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

Add a new devlink region used for capturing a snapshot of the device
capabilities buffer which is reported by the firmware over the AdminQ.
This information can useful in debugging driver and firmware
interactions.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
v2
* Fixed ice_devlink_destroy_regions to properly release the new region

 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c  | 66 +++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_common.h  |  3 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 59 +++++++++++++++++
 4 files changed, 115 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a4cda8212e64..7486d010a619 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -373,6 +373,7 @@ struct ice_pf {
 	struct devlink_port devlink_port;
 
 	struct devlink_region *nvm_region;
+	struct devlink_region *devcaps_region;
 
 	/* OS reserved IRQ details */
 	struct msix_entry *msix_entries;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index bce0e1281168..e3cb7bd1ecab 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1823,20 +1823,27 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 }
 
 /**
- * ice_aq_discover_caps - query function/device capabilities
+ * ice_aq_list_caps - query function/device capabilities
  * @hw: pointer to the HW struct
- * @buf: a virtual buffer to hold the capabilities
- * @buf_size: Size of the virtual buffer
- * @cap_count: cap count needed if AQ err==ENOMEM
- * @opc: capabilities type to discover - pass in the command opcode
+ * @buf: a buffer to hold the capabilities
+ * @buf_size: size of the buffer
+ * @cap_count: if not NULL, set to the number of capabilities reported
+ * @opc: capabilities type to discover, device or function
  * @cd: pointer to command details structure or NULL
  *
- * Get the function(0x000a)/device(0x000b) capabilities description from
- * the firmware.
+ * Get the function (0x000A) or device (0x000B) capabilities description from
+ * firmware and store it in the buffer.
+ *
+ * If the cap_count pointer is not NULL, then it is set to the number of
+ * capabilities firmware will report. Note that if the buffer size is too
+ * small, it is possible the command will return ICE_AQ_ERR_ENOMEM. The
+ * cap_count will still be updated in this case. It is recommended that the
+ * buffer size be set to ICE_AQ_MAX_BUF_LEN (the largest possible buffer that
+ * firmware could return) to avoid this.
  */
-static enum ice_status
-ice_aq_discover_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
-		     enum ice_adminq_opc opc, struct ice_sq_cd *cd)
+enum ice_status
+ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
+		 enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_list_caps *cmd;
 	struct ice_aq_desc desc;
@@ -1849,12 +1856,43 @@ ice_aq_discover_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		return ICE_ERR_PARAM;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
-
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
-	if (!status)
-		ice_parse_caps(hw, buf, le32_to_cpu(cmd->count), opc);
-	else if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOMEM)
+
+	if (cap_count)
 		*cap_count = le32_to_cpu(cmd->count);
+
+	return status;
+}
+
+/**
+ * ice_aq_discover_caps - query function/device capabilities
+ * @hw: pointer to the HW struct
+ * @buf: a virtual buffer to hold the capabilities
+ * @buf_size: Size of the virtual buffer
+ * @cap_count: cap count needed if AQ err==ENOMEM
+ * @opc: capabilities type to discover - pass in the command opcode
+ * @cd: pointer to command details structure or NULL
+ *
+ * Get the function(0x000a)/device(0x000b) capabilities description from
+ * the firmware.
+ *
+ * NOTE: this function has the side effect of updating the hw->dev_caps or
+ * hw->func_caps by way of calling ice_parse_caps.
+ */
+static enum ice_status
+ice_aq_discover_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
+		     enum ice_adminq_opc opc, struct ice_sq_cd *cd)
+{
+	u32 local_cap_count = 0;
+	enum ice_status status;
+
+	status = ice_aq_list_caps(hw, buf, buf_size, &local_cap_count,
+				  opc, cd);
+	if (!status)
+		ice_parse_caps(hw, buf, local_cap_count, opc);
+	else if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOMEM)
+		*cap_count = local_cap_count;
+
 	return status;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 9b9e50d2398b..e72529e9f022 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -87,6 +87,9 @@ enum ice_status
 ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
+enum ice_status
+ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
+		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
 void
 ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
 		    u16 link_speeds_bitmap);
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index a73d06e06b5d..3ea470e8cfa2 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -397,12 +397,60 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	return 0;
 }
 
+/**
+ * ice_devlink_devcaps_snapshot - Capture snapshot of device capabilities
+ * @devlink: the devlink instance
+ * @extack: extended ACK response structure
+ * @data: on exit points to snapshot data buffer
+ *
+ * This function is called in response to the DEVLINK_CMD_REGION_TRIGGER for
+ * the device-caps devlink region. It captures a snapshot of the device
+ * capabilities reported by firmware.
+ *
+ * @returns zero on success, and updates the data pointer. Returns a non-zero
+ * error code on failure.
+ */
+static int
+ice_devlink_devcaps_snapshot(struct devlink *devlink,
+			     struct netlink_ext_ack *extack, u8 **data)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	enum ice_status status;
+	void *devcaps;
+
+	devcaps = vzalloc(ICE_AQ_MAX_BUF_LEN);
+	if (!devcaps)
+		return -ENOMEM;
+
+	status = ice_aq_list_caps(hw, devcaps, ICE_AQ_MAX_BUF_LEN, NULL,
+				  ice_aqc_opc_list_dev_caps, NULL);
+	if (status) {
+		dev_dbg(dev, "ice_aq_list_caps: failed to read device capabilities, err %d aq_err %d\n",
+			status, hw->adminq.sq_last_status);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to read device capabilities");
+		vfree(devcaps);
+		return -EIO;
+	}
+
+	*data = (u8 *)devcaps;
+
+	return 0;
+}
+
 static const struct devlink_region_ops ice_nvm_region_ops = {
 	.name = "nvm-flash",
 	.destructor = vfree,
 	.snapshot = ice_devlink_nvm_snapshot,
 };
 
+static const struct devlink_region_ops ice_devcaps_region_ops = {
+	.name = "device-caps",
+	.destructor = vfree,
+	.snapshot = ice_devlink_devcaps_snapshot,
+};
+
 /**
  * ice_devlink_init_regions - Initialize devlink regions
  * @pf: the PF device structure
@@ -424,6 +472,15 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 			PTR_ERR(pf->nvm_region));
 		pf->nvm_region = NULL;
 	}
+
+	pf->devcaps_region = devlink_region_create(devlink,
+						   &ice_devcaps_region_ops, 10,
+						   ICE_AQ_MAX_BUF_LEN);
+	if (IS_ERR(pf->devcaps_region)) {
+		dev_err(dev, "failed to create device-caps devlink region, err %ld\n",
+			PTR_ERR(pf->devcaps_region));
+		pf->devcaps_region = NULL;
+	}
 }
 
 /**
@@ -436,4 +493,6 @@ void ice_devlink_destroy_regions(struct ice_pf *pf)
 {
 	if (pf->nvm_region)
 		devlink_region_destroy(pf->nvm_region);
+	if (pf->devcaps_region)
+		devlink_region_destroy(pf->devcaps_region);
 }
-- 
2.25.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

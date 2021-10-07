Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C9C425FBD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D407B6080B;
	Thu,  7 Oct 2021 22:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WaW5z_-XvFOZ; Thu,  7 Oct 2021 22:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 225D8607E8;
	Thu,  7 Oct 2021 22:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CB111BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E58A74068C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tzR7D0y5n9Ut for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5380940A06
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226331560"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226331560"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327185"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:23 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:24 -0700
Message-Id: <20211007220127.70514-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 07 Oct 2021 22:17:22 +0000
Subject: [Intel-wired-lan] [PATCH net-next 4/7] ice: Remove enum ice_status
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

Replace uses of ice_status to, as equivalent as possible, error codes.
Remove enum ice_status and its helper conversion function as they are no
longer needed.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 192 +++++++-------
 drivers/net/ethernet/intel/ice/ice_controlq.c |  62 ++---
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  31 ++-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  10 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |   8 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 194 +++++++--------
 drivers/net/ethernet/intel/ice/ice_flow.c     |  74 +++---
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  37 +--
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  12 +-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +--
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   8 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    | 186 +++++++-------
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  26 +-
 drivers/net/ethernet/intel/ice/ice_status.h   |  44 ----
 drivers/net/ethernet/intel/ice/ice_switch.c   | 234 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   8 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  24 +-
 24 files changed, 568 insertions(+), 654 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_status.h

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index d09c8473e1f6..b7869c510cba 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -938,13 +938,13 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 				 rel_vmvf_num, NULL);
 
 	/* if the disable queue command was exercised during an
-	 * active reset flow, ICE_ERR_RESET_ONGOING is returned.
+	 * active reset flow, -EBUSY is returned.
 	 * This is not an error as the reset operation disables
 	 * queues at the hardware level anyway.
 	 */
-	if (status == ICE_ERR_RESET_ONGOING) {
+	if (status == -EBUSY) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "Reset in progress. LAN Tx queues already disabled\n");
-	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
+	} else if (status == -ENOENT) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "LAN Tx queues do not exist, nothing to disable\n");
 	} else if (status) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5207d46d2559..a217b0f269ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2,7 +2,6 @@
 /* Copyright (c) 2018, Intel Corporation. */
 
 #include "ice_common.h"
-#include "ice_lib.h"
 #include "ice_sched.h"
 #include "ice_adminq_cmd.h"
 #include "ice_flow.h"
@@ -19,7 +18,7 @@
 static int ice_set_mac_type(struct ice_hw *hw)
 {
 	if (hw->vendor_id != PCI_VENDOR_ID_INTEL)
-		return ICE_ERR_DEVICE_NOT_SUPPORTED;
+		return -ENODEV;
 
 	switch (hw->device_id) {
 	case ICE_DEV_ID_E810C_BACKPLANE:
@@ -135,7 +134,7 @@ ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
 	cmd = &desc.params.mac_read;
 
 	if (buf_size < sizeof(*resp))
-		return ICE_ERR_BUF_TOO_SHORT;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_manage_mac_read);
 
@@ -148,7 +147,7 @@ ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
 
 	if (!(flags & ICE_AQC_MAN_MAC_LAN_ADDR_VALID)) {
 		ice_debug(hw, ICE_DBG_LAN, "got invalid MAC address\n");
-		return ICE_ERR_CFG;
+		return -EIO;
 	}
 
 	/* A single port can report up to two (LAN and WoL) addresses */
@@ -188,12 +187,12 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	cmd = &desc.params.get_phy;
 
 	if (!pcaps || (report_mode & ~ICE_AQC_REPORT_MODE_M) || !pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	hw = pi->hw;
 
 	if (report_mode == ICE_AQC_REPORT_DFLT_CFG &&
 	    !ice_fw_supports_report_dflt_cfg(hw))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_caps);
 
@@ -432,7 +431,7 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	u16 cmd_flags;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	hw = pi->hw;
 	li_old = &pi->phy.link_info_old;
 	hw_media_type = &pi->phy.media_type;
@@ -563,7 +562,7 @@ ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd)
 	cmd = &desc.params.set_mac_cfg;
 
 	if (max_frame_size == 0)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_mac_cfg);
 
@@ -588,7 +587,7 @@ static int ice_init_fltr_mgmt_struct(struct ice_hw *hw)
 	sw = hw->switch_info;
 
 	if (!sw)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	INIT_LIST_HEAD(&sw->vsi_list_map_head);
 	sw->prof_res_bm_init = 0;
@@ -674,7 +673,7 @@ static int ice_get_fw_log_cfg(struct ice_hw *hw)
 	size = sizeof(*config) * ICE_AQC_FW_LOG_ID_MAX;
 	config = devm_kzalloc(ice_hw_to_dev(hw), size, GFP_KERNEL);
 	if (!config)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logging_info);
 
@@ -788,7 +787,7 @@ static int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
 						    sizeof(*data),
 						    GFP_KERNEL);
 				if (!data)
-					return ICE_ERR_NO_MEMORY;
+					return -ENOMEM;
 			}
 
 			val = i << ICE_AQC_FW_LOG_ID_S;
@@ -954,7 +953,7 @@ int ice_init_hw(struct ice_hw *hw)
 	hw->port_info = devm_kzalloc(ice_hw_to_dev(hw),
 				     sizeof(*hw->port_info), GFP_KERNEL);
 	if (!hw->port_info) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_unroll_cqinit;
 	}
 
@@ -983,7 +982,7 @@ int ice_init_hw(struct ice_hw *hw)
 
 	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_unroll_sched;
 	}
 
@@ -1004,7 +1003,7 @@ int ice_init_hw(struct ice_hw *hw)
 	/* need a valid SW entry point to build a Tx tree */
 	if (!hw->sw_entry_point_layer) {
 		ice_debug(hw, ICE_DBG_SCHED, "invalid sw entry point\n");
-		status = ICE_ERR_CFG;
+		status = -EIO;
 		goto err_unroll_sched;
 	}
 	INIT_LIST_HEAD(&hw->agg_list);
@@ -1024,7 +1023,7 @@ int ice_init_hw(struct ice_hw *hw)
 	mac_buf_len = 2 * sizeof(struct ice_aqc_manage_mac_read_resp);
 
 	if (!mac_buf) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_unroll_fltr_mgmt_struct;
 	}
 
@@ -1114,7 +1113,7 @@ int ice_check_reset(struct ice_hw *hw)
 
 	if (cnt == grst_timeout) {
 		ice_debug(hw, ICE_DBG_INIT, "Global reset polling failed to complete.\n");
-		return ICE_ERR_RESET_FAILED;
+		return -EIO;
 	}
 
 #define ICE_RESET_DONE_MASK	(GLNVM_ULD_PCIER_DONE_M |\
@@ -1141,7 +1140,7 @@ int ice_check_reset(struct ice_hw *hw)
 	if (cnt == ICE_PF_RESET_WAIT_COUNT) {
 		ice_debug(hw, ICE_DBG_INIT, "Wait for Reset Done timed out. GLNVM_ULD = 0x%x\n",
 			  reg);
-		return ICE_ERR_RESET_FAILED;
+		return -EIO;
 	}
 
 	return 0;
@@ -1167,7 +1166,7 @@ static int ice_pf_reset(struct ice_hw *hw)
 	    (rd32(hw, GLNVM_ULD) & ICE_RESET_DONE_MASK) ^ ICE_RESET_DONE_MASK) {
 		/* poll on global reset currently in progress until done */
 		if (ice_check_reset(hw))
-			return ICE_ERR_RESET_FAILED;
+			return -EIO;
 
 		return 0;
 	}
@@ -1192,7 +1191,7 @@ static int ice_pf_reset(struct ice_hw *hw)
 
 	if (cnt == ICE_PF_RESET_WAIT_COUNT) {
 		ice_debug(hw, ICE_DBG_INIT, "PF reset polling failed to complete.\n");
-		return ICE_ERR_RESET_FAILED;
+		return -EIO;
 	}
 
 	return 0;
@@ -1226,7 +1225,7 @@ int ice_reset(struct ice_hw *hw, enum ice_reset_req req)
 		val = GLGEN_RTRIG_GLOBR_M;
 		break;
 	default:
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	val |= rd32(hw, GLGEN_RTRIG);
@@ -1251,10 +1250,10 @@ ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
 	u8 i;
 
 	if (!ice_rxq_ctx)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	if (rxq_index > QRX_CTRL_MAX_INDEX)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Copy each dword separately to HW */
 	for (i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
@@ -1311,7 +1310,7 @@ ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 	u8 ctx_buf[ICE_RXQ_CTX_SZ] = { 0 };
 
 	if (!rlan_ctx)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	rlan_ctx->prefena = 1;
 
@@ -1367,9 +1366,8 @@ static int
 ice_sbq_send_cmd(struct ice_hw *hw, struct ice_sbq_cmd_desc *desc,
 		 void *buf, u16 buf_size, struct ice_sq_cd *cd)
 {
-	return ice_status_to_errno(ice_sq_send_cmd(hw, ice_get_sbq(hw),
-						   (struct ice_aq_desc *)desc,
-						   buf, buf_size, cd));
+	return ice_sq_send_cmd(hw, ice_get_sbq(hw),
+			       (struct ice_aq_desc *)desc, buf, buf_size, cd);
 }
 
 /**
@@ -1471,7 +1469,7 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		if (buf) {
 			buf_cpy = kzalloc(buf_size, GFP_KERNEL);
 			if (!buf_cpy)
-				return ICE_ERR_NO_MEMORY;
+				return -ENOMEM;
 		}
 
 		memcpy(&desc_cpy, desc, sizeof(desc_cpy));
@@ -1599,7 +1597,7 @@ ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 	cmd = &desc.params.driver_ver;
 
 	if (!dv)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_ver);
 
@@ -1652,12 +1650,12 @@ int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading)
  * Requests common resource using the admin queue commands (0x0008).
  * When attempting to acquire the Global Config Lock, the driver can
  * learn of three states:
- *  1) ICE_SUCCESS -        acquired lock, and can perform download package
- *  2) ICE_ERR_AQ_ERROR -   did not get lock, driver should fail to load
- *  3) ICE_ERR_AQ_NO_WORK - did not get lock, but another driver has
- *                          successfully downloaded the package; the driver does
- *                          not have to download the package and can continue
- *                          loading
+ *  1) 0 -         acquired lock, and can perform download package
+ *  2) -EIO -      did not get lock, driver should fail to load
+ *  3) -EALREADY - did not get lock, but another driver has
+ *                 successfully downloaded the package; the driver does
+ *                 not have to download the package and can continue
+ *                 loading
  *
  * Note that if the caller is in an acquire lock, perform action, release lock
  * phase of operation, it is possible that the FW may detect a timeout and issue
@@ -1705,15 +1703,15 @@ ice_aq_req_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 		} else if (le16_to_cpu(cmd_resp->status) ==
 			   ICE_AQ_RES_GLBL_IN_PROG) {
 			*timeout = le32_to_cpu(cmd_resp->timeout);
-			return ICE_ERR_AQ_ERROR;
+			return -EIO;
 		} else if (le16_to_cpu(cmd_resp->status) ==
 			   ICE_AQ_RES_GLBL_DONE) {
-			return ICE_ERR_AQ_NO_WORK;
+			return -EALREADY;
 		}
 
 		/* invalid FW response, force a timeout immediately */
 		*timeout = 0;
-		return ICE_ERR_AQ_ERROR;
+		return -EIO;
 	}
 
 	/* If the resource is held by some other driver, the command completes
@@ -1772,12 +1770,12 @@ ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 
 	status = ice_aq_req_res(hw, res, access, 0, &time_left, NULL);
 
-	/* A return code of ICE_ERR_AQ_NO_WORK means that another driver has
+	/* A return code of -EALREADY means that another driver has
 	 * previously acquired the resource and performed any necessary updates;
 	 * in this case the caller does not obtain the resource and has no
 	 * further work to do.
 	 */
-	if (status == ICE_ERR_AQ_NO_WORK)
+	if (status == -EALREADY)
 		goto ice_acquire_res_exit;
 
 	if (status)
@@ -1790,7 +1788,7 @@ ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 		timeout = (timeout > delay) ? timeout - delay : 0;
 		status = ice_aq_req_res(hw, res, access, 0, &time_left, NULL);
 
-		if (status == ICE_ERR_AQ_NO_WORK)
+		if (status == -EALREADY)
 			/* lock free, but no work to do */
 			break;
 
@@ -1798,15 +1796,15 @@ ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 			/* lock acquired */
 			break;
 	}
-	if (status && status != ICE_ERR_AQ_NO_WORK)
+	if (status && status != -EALREADY)
 		ice_debug(hw, ICE_DBG_RES, "resource acquire timed out.\n");
 
 ice_acquire_res_exit:
-	if (status == ICE_ERR_AQ_NO_WORK) {
+	if (status == -EALREADY) {
 		if (access == ICE_RES_WRITE)
 			ice_debug(hw, ICE_DBG_RES, "resource indicates no work to do.\n");
 		else
-			ice_debug(hw, ICE_DBG_RES, "Warning: ICE_ERR_AQ_NO_WORK not expected\n");
+			ice_debug(hw, ICE_DBG_RES, "Warning: -EALREADY not expected\n");
 	}
 	return status;
 }
@@ -1828,7 +1826,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
 	/* there are some rare cases when trying to release the resource
 	 * results in an admin queue timeout, so handle them correctly
 	 */
-	while ((status == ICE_ERR_AQ_TIMEOUT) &&
+	while ((status == -EIO) &&
 	       (total_delay < hw->adminq.sq_cmd_timeout)) {
 		mdelay(1);
 		status = ice_aq_release_res(hw, res, 0, NULL);
@@ -1858,10 +1856,10 @@ ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
 	cmd = &desc.params.sw_res_ctrl;
 
 	if (!buf)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (buf_size < flex_array_size(buf, elem, num_entries))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
 
@@ -1890,7 +1888,7 @@ ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
 	buf_len = struct_size(buf, elem, num);
 	buf = kzalloc(buf_len, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Prepare buffer to allocate resource. */
 	buf->num_elems = cpu_to_le16(num);
@@ -1927,7 +1925,7 @@ int ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
 	buf_len = struct_size(buf, elem, num);
 	buf = kzalloc(buf_len, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Prepare buffer to free resource. */
 	buf->num_elems = cpu_to_le16(num);
@@ -2508,7 +2506,7 @@ ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 
 	if (opc != ice_aqc_opc_list_func_caps &&
 	    opc != ice_aqc_opc_list_dev_caps)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
@@ -2536,7 +2534,7 @@ ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
 
 	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!cbuf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Although the driver doesn't know the number of capabilities the
 	 * device will return, we can simply send a 4KB buffer, the maximum
@@ -2570,7 +2568,7 @@ ice_discover_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_caps)
 
 	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!cbuf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Although the driver doesn't know the number of capabilities the
 	 * device will return, we can simply send a 4KB buffer, the maximum
@@ -2921,7 +2919,7 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 	int status;
 
 	if (!cfg)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Ensure that only valid bits of cfg->caps can be turned on. */
 	if (cfg->caps & ~ICE_AQ_PHY_ENA_VALID_MASK) {
@@ -2968,7 +2966,7 @@ int ice_update_link_info(struct ice_port_info *pi)
 	int status;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	li = &pi->phy.link_info;
 
@@ -2984,7 +2982,7 @@ int ice_update_link_info(struct ice_port_info *pi)
 		pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps),
 				     GFP_KERNEL);
 		if (!pcaps)
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 
 		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 					     pcaps, NULL);
@@ -3088,7 +3086,7 @@ ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 	u8 pause_mask = 0x0;
 
 	if (!pi || !cfg)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	switch (req_mode) {
 	case ICE_FC_FULL:
@@ -3136,14 +3134,14 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 	struct ice_hw *hw;
 
 	if (!pi || !aq_failures)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	*aq_failures = 0;
 	hw = pi->hw;
 
 	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Get the current PHY config */
 	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG,
@@ -3277,13 +3275,13 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 	struct ice_hw *hw;
 
 	if (!pi || !cfg)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	hw = pi->hw;
 
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	status = ice_aq_get_phy_caps(pi, false,
 				     (ice_fw_supports_report_dflt_cfg(hw) ?
@@ -3323,7 +3321,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		cfg->link_fec_opt |= pcaps->link_fec_options;
 		break;
 	default:
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		break;
 	}
 
@@ -3360,7 +3358,7 @@ int ice_get_link_status(struct ice_port_info *pi, bool *link_up)
 	int status = 0;
 
 	if (!pi || !link_up)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	phy_info = &pi->phy;
 
@@ -3508,7 +3506,7 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 	int status;
 
 	if (!data || (mem_addr & 0xff00))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_sff_eeprom);
 	cmd = &desc.params.read_write_sff_param;
@@ -3547,13 +3545,13 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params
 	u8 *lut;
 
 	if (!params)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	vsi_handle = params->vsi_handle;
 	lut = params->lut;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle) || !lut)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	lut_size = params->lut_size;
 	lut_type = params->lut_type;
@@ -3582,7 +3580,7 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params
 			  ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_M);
 		break;
 	default:
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto ice_aq_get_set_rss_lut_exit;
 	}
 
@@ -3617,7 +3615,7 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params
 		}
 		fallthrough;
 	default:
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto ice_aq_get_set_rss_lut_exit;
 	}
 
@@ -3702,7 +3700,7 @@ ice_aq_get_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *key)
 {
 	if (!ice_is_vsi_valid(hw, vsi_handle) || !key)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	return __ice_aq_get_set_rss_key(hw, ice_get_hw_vsi_num(hw, vsi_handle),
 					key, false);
@@ -3721,7 +3719,7 @@ ice_aq_set_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *keys)
 {
 	if (!ice_is_vsi_valid(hw, vsi_handle) || !keys)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	return __ice_aq_get_set_rss_key(hw, ice_get_hw_vsi_num(hw, vsi_handle),
 					keys, true);
@@ -3763,10 +3761,10 @@ ice_aq_add_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_add_txqs);
 
 	if (!qg_list)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (num_qgrps > ICE_LAN_TXQ_MAX_QGRPS)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	for (i = 0, list = qg_list; i < num_qgrps; i++) {
 		sum_size += struct_size(list, txqs, list->num_txqs);
@@ -3775,7 +3773,7 @@ ice_aq_add_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	}
 
 	if (buf_size != sum_size)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
@@ -3813,10 +3811,10 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 
 	/* qg_list can be NULL only in VM/VF reset flow */
 	if (!qg_list && !rst_src)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (num_qgrps > ICE_LAN_TXQ_MAX_QGRPS)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	cmd->num_entries = num_qgrps;
 
@@ -3865,7 +3863,7 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	}
 
 	if (buf_size != sz)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 do_aq:
 	status = ice_aq_send_cmd(hw, &desc, qg_list, buf_size, cd);
@@ -3923,8 +3921,7 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
 
 	cmd->num_qset_grps = num_qset_grps;
 
-	return ice_status_to_errno(ice_aq_send_cmd(hw, &desc, qset_list,
-						   buf_size, cd));
+	return ice_aq_send_cmd(hw, &desc, qset_list, buf_size, cd);
 }
 
 /* End of FW Admin Queue command wrappers */
@@ -4150,7 +4147,7 @@ ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 			ice_write_qword(src_ctx, dest_ctx, &ce_info[f]);
 			break;
 		default:
-			return ICE_ERR_INVAL_SIZE;
+			return -EINVAL;
 		}
 	}
 
@@ -4206,15 +4203,15 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 	struct ice_hw *hw;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	if (num_qgrps > 1 || buf->num_txqs > 1)
-		return ICE_ERR_MAX_LIMIT;
+		return -ENOSPC;
 
 	hw = pi->hw;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&pi->sched_lock);
 
@@ -4222,7 +4219,7 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 	if (!q_ctx) {
 		ice_debug(hw, ICE_DBG_SCHED, "Enaq: invalid queue handle %d\n",
 			  q_handle);
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto ena_txq_exit;
 	}
 
@@ -4230,7 +4227,7 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 	parent = ice_sched_get_free_qparent(pi, vsi_handle, tc,
 					    ICE_SCHED_NODE_OWNER_LAN);
 	if (!parent) {
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto ena_txq_exit;
 	}
 
@@ -4305,14 +4302,14 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		enum ice_disq_rst_src rst_src, u16 vmvf_num,
 		struct ice_sq_cd *cd)
 {
-	int status = ICE_ERR_DOES_NOT_EXIST;
+	int status = -ENOENT;
 	struct ice_aqc_dis_txq_item *qg_list;
 	struct ice_q_ctx *q_ctx;
 	struct ice_hw *hw;
 	u16 i, buf_size;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	hw = pi->hw;
 
@@ -4324,13 +4321,13 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		if (rst_src)
 			return ice_aq_dis_lan_txq(hw, 0, NULL, 0, rst_src,
 						  vmvf_num, NULL);
-		return ICE_ERR_CFG;
+		return -EIO;
 	}
 
 	buf_size = struct_size(qg_list, q_id, 1);
 	qg_list = kzalloc(buf_size, GFP_KERNEL);
 	if (!qg_list)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	mutex_lock(&pi->sched_lock);
 
@@ -4385,10 +4382,10 @@ ice_cfg_vsi_qs(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
 	u8 i;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&pi->sched_lock);
 
@@ -4437,9 +4434,8 @@ int
 ice_cfg_vsi_rdma(struct ice_port_info *pi, u16 vsi_handle, u16 tc_bitmap,
 		 u16 *max_rdmaqs)
 {
-	return ice_status_to_errno(ice_cfg_vsi_qs(pi, vsi_handle, tc_bitmap,
-						  max_rdmaqs,
-						  ICE_SCHED_NODE_OWNER_RDMA));
+	return ice_cfg_vsi_qs(pi, vsi_handle, tc_bitmap, max_rdmaqs,
+			      ICE_SCHED_NODE_OWNER_RDMA);
 }
 
 /**
@@ -4514,7 +4510,7 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		status = ice_sched_add_node(pi, hw->num_tx_sched_layers - 1,
 					    &node);
 		if (status) {
-			ret = ice_status_to_errno(status);
+			ret = status;
 			break;
 		}
 		qset_teid[i] = le32_to_cpu(node.node_teid);
@@ -4577,7 +4573,7 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 
 	mutex_unlock(&pi->sched_lock);
 	kfree(qg_list);
-	return ice_status_to_errno(status);
+	return status;
 }
 
 /**
@@ -4618,7 +4614,7 @@ int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle)
 	int status;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Replay pre-initialization if there is any */
 	if (vsi_handle == ICE_MAIN_VSI_HANDLE) {
@@ -4780,7 +4776,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 	cmd = &desc.params.read_i2c;
 
 	if (!data)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	data_size = (params & ICE_AQC_I2C_DATA_SIZE_M) >>
 		    ICE_AQC_I2C_DATA_SIZE_S;
@@ -4838,7 +4834,7 @@ ice_aq_set_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 	cmd->param_indx = idx;
 	cmd->param_val = cpu_to_le32(value);
 
-	return ice_status_to_errno(ice_aq_send_cmd(hw, &desc, NULL, 0, cd));
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
 /**
@@ -4873,7 +4869,7 @@ ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 
 	*value = le32_to_cpu(cmd->param_val);
 
@@ -5067,7 +5063,7 @@ ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 	cmd = &desc.params.lldp_set_mib;
 
 	if (buf_size == 0 || !buf)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_set_local_mib);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 005b47f534fd..5b0c1456698e 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -96,7 +96,7 @@ ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 						 &cq->sq.desc_buf.pa,
 						 GFP_KERNEL | __GFP_ZERO);
 	if (!cq->sq.desc_buf.va)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	cq->sq.desc_buf.size = size;
 
 	cq->sq.cmd_buf = devm_kcalloc(ice_hw_to_dev(hw), cq->num_sq_entries,
@@ -107,7 +107,7 @@ ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		cq->sq.desc_buf.va = NULL;
 		cq->sq.desc_buf.pa = 0;
 		cq->sq.desc_buf.size = 0;
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	}
 
 	return 0;
@@ -127,7 +127,7 @@ ice_alloc_ctrlq_rq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 						 &cq->rq.desc_buf.pa,
 						 GFP_KERNEL | __GFP_ZERO);
 	if (!cq->rq.desc_buf.va)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	cq->rq.desc_buf.size = size;
 	return 0;
 }
@@ -165,7 +165,7 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	cq->rq.dma_head = devm_kcalloc(ice_hw_to_dev(hw), cq->num_rq_entries,
 				       sizeof(cq->rq.desc_buf), GFP_KERNEL);
 	if (!cq->rq.dma_head)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	cq->rq.r.rq_bi = (struct ice_dma_mem *)cq->rq.dma_head;
 
 	/* allocate the mapped buffers */
@@ -218,7 +218,7 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	devm_kfree(ice_hw_to_dev(hw), cq->rq.dma_head);
 	cq->rq.dma_head = NULL;
 
-	return ICE_ERR_NO_MEMORY;
+	return -ENOMEM;
 }
 
 /**
@@ -235,7 +235,7 @@ ice_alloc_sq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	cq->sq.dma_head = devm_kcalloc(ice_hw_to_dev(hw), cq->num_sq_entries,
 				       sizeof(cq->sq.desc_buf), GFP_KERNEL);
 	if (!cq->sq.dma_head)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	cq->sq.r.sq_bi = (struct ice_dma_mem *)cq->sq.dma_head;
 
 	/* allocate the mapped buffers */
@@ -266,7 +266,7 @@ ice_alloc_sq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	devm_kfree(ice_hw_to_dev(hw), cq->sq.dma_head);
 	cq->sq.dma_head = NULL;
 
-	return ICE_ERR_NO_MEMORY;
+	return -ENOMEM;
 }
 
 static int
@@ -283,7 +283,7 @@ ice_cfg_cq_regs(struct ice_hw *hw, struct ice_ctl_q_ring *ring, u16 num_entries)
 
 	/* Check one register to verify that config was applied */
 	if (rd32(hw, ring->bal) != lower_32_bits(ring->desc_buf.pa))
-		return ICE_ERR_AQ_ERROR;
+		return -EIO;
 
 	return 0;
 }
@@ -367,13 +367,13 @@ static int ice_init_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 
 	if (cq->sq.count > 0) {
 		/* queue already initialized */
-		ret_code = ICE_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto init_ctrlq_exit;
 	}
 
 	/* verify input for valid configuration */
 	if (!cq->num_sq_entries || !cq->sq_buf_size) {
-		ret_code = ICE_ERR_CFG;
+		ret_code = -EIO;
 		goto init_ctrlq_exit;
 	}
 
@@ -427,13 +427,13 @@ static int ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 
 	if (cq->rq.count > 0) {
 		/* queue already initialized */
-		ret_code = ICE_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto init_ctrlq_exit;
 	}
 
 	/* verify input for valid configuration */
 	if (!cq->num_rq_entries || !cq->rq_buf_size) {
-		ret_code = ICE_ERR_CFG;
+		ret_code = -EIO;
 		goto init_ctrlq_exit;
 	}
 
@@ -482,7 +482,7 @@ ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	mutex_lock(&cq->sq_lock);
 
 	if (!cq->sq.count) {
-		ret_code = ICE_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto shutdown_sq_out;
 	}
 
@@ -549,7 +549,7 @@ ice_shutdown_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	mutex_lock(&cq->rq_lock);
 
 	if (!cq->rq.count) {
-		ret_code = ICE_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto shutdown_rq_out;
 	}
 
@@ -586,7 +586,7 @@ static int ice_init_check_adminq(struct ice_hw *hw)
 		goto init_ctrlq_free_rq;
 
 	if (!ice_aq_ver_check(hw)) {
-		status = ICE_ERR_FW_API_VER;
+		status = -EIO;
 		goto init_ctrlq_free_rq;
 	}
 
@@ -631,14 +631,14 @@ static int ice_init_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
 		cq = &hw->mailboxq;
 		break;
 	default:
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 	cq->qtype = q_type;
 
 	/* verify input for valid configuration */
 	if (!cq->num_rq_entries || !cq->num_sq_entries ||
 	    !cq->rq_buf_size || !cq->sq_buf_size) {
-		return ICE_ERR_CFG;
+		return -EIO;
 	}
 
 	/* setup SQ command write back timeout */
@@ -763,7 +763,7 @@ int ice_init_all_ctrlq(struct ice_hw *hw)
 			return status;
 
 		status = ice_init_check_adminq(hw);
-		if (status != ICE_ERR_AQ_FW_CRITICAL)
+		if (status != -EIO)
 			break;
 
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Retry Admin Queue init due to FW critical error\n");
@@ -978,19 +978,19 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 	/* if reset is in progress return a soft error */
 	if (hw->reset_ongoing)
-		return ICE_ERR_RESET_ONGOING;
+		return -EBUSY;
 	mutex_lock(&cq->sq_lock);
 
 	cq->sq_last_status = ICE_AQ_RC_OK;
 
 	if (!cq->sq.count) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Send queue not initialized.\n");
-		status = ICE_ERR_AQ_EMPTY;
+		status = -EIO;
 		goto sq_send_command_error;
 	}
 
 	if ((buf && !buf_size) || (!buf && buf_size)) {
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto sq_send_command_error;
 	}
 
@@ -998,7 +998,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		if (buf_size > cq->sq_buf_size) {
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Invalid buffer size for Control Send queue: %d.\n",
 				  buf_size);
-			status = ICE_ERR_INVAL_SIZE;
+			status = -EINVAL;
 			goto sq_send_command_error;
 		}
 
@@ -1011,7 +1011,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	if (val >= cq->num_sq_entries) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "head overrun at %d in the Control Send Queue ring\n",
 			  val);
-		status = ICE_ERR_AQ_EMPTY;
+		status = -EIO;
 		goto sq_send_command_error;
 	}
 
@@ -1028,7 +1028,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	 */
 	if (ice_clean_sq(hw, cq) == 0) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Error: Control Send Queue is full.\n");
-		status = ICE_ERR_AQ_FULL;
+		status = -ENOSPC;
 		goto sq_send_command_error;
 	}
 
@@ -1082,7 +1082,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 			if (copy_size > buf_size) {
 				ice_debug(hw, ICE_DBG_AQ_MSG, "Return len %d > than buf len %d\n",
 					  copy_size, buf_size);
-				status = ICE_ERR_AQ_ERROR;
+				status = -EIO;
 			} else {
 				memcpy(buf, dma_buf->va, copy_size);
 			}
@@ -1098,7 +1098,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		}
 		cmd_completed = true;
 		if (!status && retval != ICE_AQ_RC_OK)
-			status = ICE_ERR_AQ_ERROR;
+			status = -EIO;
 		cq->sq_last_status = (enum ice_aq_err)retval;
 	}
 
@@ -1116,10 +1116,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		if (rd32(hw, cq->rq.len) & cq->rq.len_crit_mask ||
 		    rd32(hw, cq->sq.len) & cq->sq.len_crit_mask) {
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Critical FW error.\n");
-			status = ICE_ERR_AQ_FW_CRITICAL;
+			status = -EIO;
 		} else {
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Control Send Queue Writeback timeout.\n");
-			status = ICE_ERR_AQ_TIMEOUT;
+			status = -EIO;
 		}
 	}
 
@@ -1176,7 +1176,7 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 	if (!cq->rq.count) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Receive queue not initialized.\n");
-		ret_code = ICE_ERR_AQ_EMPTY;
+		ret_code = -EIO;
 		goto clean_rq_elem_err;
 	}
 
@@ -1185,7 +1185,7 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 	if (ntu == ntc) {
 		/* nothing to do - shouldn't need to update ring's values */
-		ret_code = ICE_ERR_AQ_NO_WORK;
+		ret_code = -EALREADY;
 		goto clean_rq_elem_out;
 	}
 
@@ -1196,7 +1196,7 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	rq_last_status = (enum ice_aq_err)le16_to_cpu(desc->retval);
 	flags = le16_to_cpu(desc->flags);
 	if (flags & ICE_AQ_FLAG_ERR) {
-		ret_code = ICE_ERR_AQ_ERROR;
+		ret_code = -EIO;
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Receive Queue Event 0x%04X received with error 0x%X\n",
 			  le16_to_cpu(desc->opcode), rq_last_status);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 3ed85405ea53..14cb301210fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -2,7 +2,6 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include "ice_common.h"
-#include "ice_lib.h"
 #include "ice_sched.h"
 #include "ice_dcb.h"
 
@@ -31,7 +30,7 @@ ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
 	cmd = &desc.params.lldp_get_mib;
 
 	if (buf_size == 0 || !buf)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_get_mib);
 
@@ -609,7 +608,7 @@ ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
 	u16 len;
 
 	if (!lldpmib || !dcbcfg)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* set to the start of LLDPDU */
 	lldpmib += ETH_HLEN;
@@ -659,7 +658,7 @@ ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 	/* Allocate the LLDPDU */
 	lldpmib = devm_kzalloc(ice_hw_to_dev(hw), ICE_LLDPDU_SIZE, GFP_KERNEL);
 	if (!lldpmib)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	ret = ice_aq_get_lldp_mib(hw, bridgetype, mib_type, (void *)lldpmib,
 				  ICE_LLDPDU_SIZE, NULL, NULL, NULL);
@@ -684,7 +683,7 @@ ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
  * @cd: pointer to command details structure or NULL
  *
  * Start/Stop the embedded dcbx Agent. In case that this wrapper function
- * returns ICE_SUCCESS, caller will need to check if FW returns back the same
+ * returns 0, caller will need to check if FW returns back the same
  * value as stated in dcbx_agent_status, and react accordingly. (0x0A09)
  */
 int
@@ -762,7 +761,7 @@ int ice_aq_set_pfc_mode(struct ice_hw *hw, u8 pfc_mode, struct ice_sq_cd *cd)
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 
 	/* FW will write the PFC mode set back into cmd->pfc_mode, but if DCB is
 	 * disabled, FW will write back 0 to cmd->pfc_mode. After the AQ has
@@ -910,7 +909,7 @@ ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
 	int ret;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (dcbx_mode == ICE_DCBX_MODE_IEEE)
 		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
@@ -950,7 +949,7 @@ int ice_get_dcb_cfg(struct ice_port_info *pi)
 	int ret;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ret = ice_aq_get_cee_dcb_cfg(pi->hw, &cee_cfg, NULL);
 	if (!ret) {
@@ -980,7 +979,7 @@ int ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
 	int ret = 0;
 
 	if (!hw->func_caps.common_cap.dcb)
-		return ICE_ERR_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	qos_cfg->is_sw_lldp = true;
 
@@ -996,7 +995,7 @@ int ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
 			return ret;
 		qos_cfg->is_sw_lldp = false;
 	} else if (qos_cfg->dcbx_status == ICE_DCBX_STATUS_DIS) {
-		return ICE_ERR_NOT_READY;
+		return -EBUSY;
 	}
 
 	/* Configure the LLDP MIB change event */
@@ -1022,13 +1021,13 @@ int ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib)
 	int ret;
 
 	if (!hw->func_caps.common_cap.dcb)
-		return ICE_ERR_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	/* Get DCBX status */
 	qos_cfg->dcbx_status = ice_get_dcbx_status(hw);
 
 	if (qos_cfg->dcbx_status == ICE_DCBX_STATUS_DIS)
-		return ICE_ERR_NOT_READY;
+		return -EBUSY;
 
 	ret = ice_aq_cfg_lldp_mib_change(hw, ena_mib, NULL);
 	if (!ret)
@@ -1478,7 +1477,7 @@ int ice_set_dcb_cfg(struct ice_port_info *pi)
 	u16 miblen;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	hw = pi->hw;
 
@@ -1487,7 +1486,7 @@ int ice_set_dcb_cfg(struct ice_port_info *pi)
 	/* Allocate the LLDPDU */
 	lldpmib = devm_kzalloc(ice_hw_to_dev(hw), ICE_LLDPDU_SIZE, GFP_KERNEL);
 	if (!lldpmib)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	mib_type = SET_LOCAL_MIB_TYPE_LOCAL_MIB;
 	if (dcbcfg->app_mode == ICE_DCBX_APPS_NON_WILLING)
@@ -1521,7 +1520,7 @@ ice_aq_query_port_ets(struct ice_port_info *pi,
 	int status;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	cmd = &desc.params.port_ets;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_query_port_ets);
 	cmd->port_teid = pi->root->info.node_teid;
@@ -1548,7 +1547,7 @@ ice_update_port_tc_tree_cfg(struct ice_port_info *pi,
 	u8 i, j;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	/* suspend the missing TC nodes */
 	for (i = 0; i < pi->root->num_children; i++) {
 		teid1 = le32_to_cpu(pi->root->children[i]->info.node_teid);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index b9f2abc4d0c7..93fa2ec1d20d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -584,19 +584,19 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	status = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
 				   TNL_SEG_CNT(tun), &prof);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, main_vsi->idx,
 				    main_vsi->idx, ICE_FLOW_PRIO_NORMAL,
 				    seg, &entry1_h);
 	if (status) {
-		err = ice_status_to_errno(status);
+		err = status;
 		goto err_prof;
 	}
 	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, main_vsi->idx,
 				    ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
 				    seg, &entry2_h);
 	if (status) {
-		err = ice_status_to_errno(status);
+		err = status;
 		goto err_entry;
 	}
 
@@ -1211,7 +1211,7 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 	ice_fdir_get_prgm_desc(hw, input, &desc, add);
 	status = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
 	if (status) {
-		err = ice_status_to_errno(status);
+		err = status;
 		goto err_free_all;
 	}
 	err = ice_prgm_fdir_fltr(ctrl_vsi, &desc, pkt);
@@ -1226,7 +1226,7 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 		status = ice_fdir_get_gen_prgm_pkt(hw, input, frag_pkt, true,
 						   is_tun);
 		if (status) {
-			err = ice_status_to_errno(status);
+			err = status;
 			goto err_frag;
 		}
 		err = ice_prgm_fdir_fltr(ctrl_vsi, &desc, frag_pkt);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 17888f5bd68e..9970ac3884f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -919,15 +919,15 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		if (ice_fdir_pkt[idx].flow == flow)
 			break;
 	if (idx == ICE_FDIR_NUM_PKT)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	if (!tun) {
 		memcpy(pkt, ice_fdir_pkt[idx].pkt, ice_fdir_pkt[idx].pkt_len);
 		loc = pkt;
 	} else {
 		if (!ice_get_open_tunnel_port(hw, &tnl_port))
-			return ICE_ERR_DOES_NOT_EXIST;
+			return -ENOENT;
 		if (!ice_fdir_pkt[idx].tun_pkt)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		memcpy(pkt, ice_fdir_pkt[idx].tun_pkt,
 		       ice_fdir_pkt[idx].tun_pkt_len);
 		ice_pkt_insert_u16(pkt, ICE_IPV4_UDP_DST_PORT_OFFSET,
@@ -1111,7 +1111,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	default:
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	if (input->flex_fltr)
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 84cd47e8e30d..01829a5ff83b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -443,7 +443,7 @@ ice_find_boost_entry(struct ice_seg *ice_seg, u16 addr,
 	memset(&state, 0, sizeof(state));
 
 	if (!ice_seg)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	do {
 		tcam = ice_pkg_enum_entry(ice_seg, &state,
@@ -458,7 +458,7 @@ ice_find_boost_entry(struct ice_seg *ice_seg, u16 addr,
 	} while (tcam);
 
 	*entry = NULL;
-	return ICE_ERR_CFG;
+	return -EIO;
 }
 
 /**
@@ -633,7 +633,7 @@ ice_gen_key_word(u8 val, u8 valid, u8 dont_care, u8 nvr_mtch, u8 *key,
 
 	/* 'dont_care' and 'nvr_mtch' masks cannot overlap */
 	if ((dont_care ^ nvr_mtch) != (dont_care | nvr_mtch))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	*key = 0;
 	*key_inv = 0;
@@ -735,11 +735,11 @@ ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
 
 	/* size must be a multiple of 2 bytes. */
 	if (size % 2)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	half_size = size / 2;
 	if (off + len > half_size)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	/* Make sure at most one bit is set in the never match mask. Having more
 	 * than one never match mask bit set will cause HW to consume excessive
@@ -747,13 +747,13 @@ ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
 	 */
 #define ICE_NVR_MTCH_BITS_MAX	1
 	if (nm && !ice_bits_max_set(nm, len, ICE_NVR_MTCH_BITS_MAX))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	for (i = 0; i < len; i++)
 		if (ice_gen_key_word(val[i], upd ? upd[i] : 0xff,
 				     dc ? dc[i] : 0, nm ? nm[i] : 0,
 				     key + off + i, key + half_size + off + i))
-			return ICE_ERR_CFG;
+			return -EIO;
 
 	return 0;
 }
@@ -767,12 +767,12 @@ ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
  * or writing of the package. When attempting to obtain write access, the
  * caller must check for the following two return values:
  *
- * ICE_SUCCESS        - Means the caller has acquired the global config lock
- *                      and can perform writing of the package.
- * ICE_ERR_AQ_NO_WORK - Indicates another driver has already written the
- *                      package or has found that no update was necessary; in
- *                      this case, the caller can just skip performing any
- *                      update of the package.
+ * 0         -  Means the caller has acquired the global config lock
+ *              and can perform writing of the package.
+ * -EALREADY - Indicates another driver has already written the
+ *             package or has found that no update was necessary; in
+ *             this case, the caller can just skip performing any
+ *             update of the package.
  */
 static int
 ice_acquire_global_cfg_lock(struct ice_hw *hw,
@@ -785,7 +785,7 @@ ice_acquire_global_cfg_lock(struct ice_hw *hw,
 
 	if (!status)
 		mutex_lock(&ice_global_cfg_lock_sw);
-	else if (status == ICE_ERR_AQ_NO_WORK)
+	else if (status == -EALREADY)
 		ice_debug(hw, ICE_DBG_PKG, "Global config lock: No work to do\n");
 
 	return status;
@@ -862,7 +862,7 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
 
 	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-	if (status == ICE_ERR_AQ_ERROR) {
+	if (status == -EIO) {
 		/* Read error from buffer only when the FW returned an error */
 		struct ice_aqc_download_pkg_resp *resp;
 
@@ -910,7 +910,7 @@ ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf, u16 buf_size,
 		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
 
 	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-	if (status == ICE_ERR_AQ_ERROR) {
+	if (status == -EIO) {
 		/* Read error from buffer only when the FW returned an error */
 		struct ice_aqc_download_pkg_resp *resp;
 
@@ -1045,7 +1045,7 @@ ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 
 	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
 	if (status) {
-		if (status == ICE_ERR_AQ_NO_WORK)
+		if (status == -EALREADY)
 			return ICE_DDP_PKG_ALREADY_LOADED;
 		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
 	}
@@ -1473,7 +1473,7 @@ static int ice_get_prof_index_max(struct ice_hw *hw)
 	memset(&state, 0, sizeof(state));
 
 	if (!hw->seg)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_seg = hw->seg;
 
@@ -1774,7 +1774,7 @@ ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
 	memset(&state, 0, sizeof(state));
 
 	if (!ids_cnt || !hw->seg)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_seg = hw->seg;
 	do {
@@ -1818,7 +1818,7 @@ ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
 		}
 	} while (fv);
 	if (list_empty(fv_list))
-		return ICE_ERR_CFG;
+		return -EIO;
 	return 0;
 
 err:
@@ -1827,7 +1827,7 @@ ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
 		devm_kfree(ice_hw_to_dev(hw), fvl);
 	}
 
-	return ICE_ERR_NO_MEMORY;
+	return -ENOMEM;
 }
 
 /**
@@ -1903,17 +1903,17 @@ ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count)
 	u16 data_end;
 
 	if (!bld)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	buf = (struct ice_buf_hdr *)&bld->buf;
 
 	/* already an active section, can't increase table size */
 	section_count = le16_to_cpu(buf->section_count);
 	if (section_count > 0)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	if (bld->reserved_section_table_entries + count > ICE_MAX_S_COUNT)
-		return ICE_ERR_CFG;
+		return -EIO;
 	bld->reserved_section_table_entries += count;
 
 	data_end = le16_to_cpu(buf->data_end) +
@@ -2077,14 +2077,14 @@ ice_create_tunnel(struct ice_hw *hw, u16 index,
 		  enum ice_tunnel_type type, u16 port)
 {
 	struct ice_boost_tcam_section *sect_rx, *sect_tx;
-	int status = ICE_ERR_MAX_LIMIT;
+	int status = -ENOSPC;
 	struct ice_buf_build *bld;
 
 	mutex_lock(&hw->tnl_lock);
 
 	bld = ice_pkg_buf_alloc(hw);
 	if (!bld) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto ice_create_tunnel_end;
 	}
 
@@ -2148,7 +2148,7 @@ ice_destroy_tunnel(struct ice_hw *hw, u16 index, enum ice_tunnel_type type,
 		   u16 port)
 {
 	struct ice_boost_tcam_section *sect_rx, *sect_tx;
-	int status = ICE_ERR_MAX_LIMIT;
+	int status = -ENOSPC;
 	struct ice_buf_build *bld;
 
 	mutex_lock(&hw->tnl_lock);
@@ -2156,13 +2156,13 @@ ice_destroy_tunnel(struct ice_hw *hw, u16 index, enum ice_tunnel_type type,
 	if (WARN_ON(!hw->tnl.tbl[index].valid ||
 		    hw->tnl.tbl[index].type != type ||
 		    hw->tnl.tbl[index].port != port)) {
-		status = ICE_ERR_OUT_OF_RANGE;
+		status = -EIO;
 		goto ice_destroy_tunnel_end;
 	}
 
 	bld = ice_pkg_buf_alloc(hw);
 	if (!bld) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto ice_destroy_tunnel_end;
 	}
 
@@ -2265,10 +2265,10 @@ ice_find_prot_off(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 fv_idx,
 	struct ice_fv_word *fv_ext;
 
 	if (prof >= hw->blk[blk].es.count)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (fv_idx >= hw->blk[blk].es.fvw)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	fv_ext = hw->blk[blk].es.t + (prof * hw->blk[blk].es.fvw);
 
@@ -2295,7 +2295,7 @@ static int
 ice_ptg_find_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 *ptg)
 {
 	if (ptype >= ICE_XLT1_CNT || !ptg)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	*ptg = hw->blk[blk].xlt1.ptypes[ptype].ptg;
 	return 0;
@@ -2332,14 +2332,14 @@ ice_ptg_remove_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
 	struct ice_ptg_ptype *p;
 
 	if (ptype > ICE_XLT1_CNT - 1)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (!hw->blk[blk].xlt1.ptg_tbl[ptg].in_use)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	/* Should not happen if .in_use is set, bad config */
 	if (!hw->blk[blk].xlt1.ptg_tbl[ptg].first_ptype)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	/* find the ptype within this PTG, and bypass the link over it */
 	p = hw->blk[blk].xlt1.ptg_tbl[ptg].first_ptype;
@@ -2379,10 +2379,10 @@ ice_ptg_add_mv_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
 	u8 original_ptg;
 
 	if (ptype > ICE_XLT1_CNT - 1)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (!hw->blk[blk].xlt1.ptg_tbl[ptg].in_use && ptg != ICE_DEFAULT_PTG)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	status = ice_ptg_find_ptype(hw, blk, ptype, &original_ptg);
 	if (status)
@@ -2521,7 +2521,7 @@ static int
 ice_vsig_find_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 *vsig)
 {
 	if (!vsig || vsi >= ICE_MAX_VSI)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* As long as there's a default or valid VSIG associated with the input
 	 * VSI, the functions returns a success. Any handling of VSIG will be
@@ -2600,7 +2600,7 @@ ice_find_dup_props_vsig(struct ice_hw *hw, enum ice_block blk,
 			return 0;
 		}
 
-	return ICE_ERR_DOES_NOT_EXIST;
+	return -ENOENT;
 }
 
 /**
@@ -2621,10 +2621,10 @@ ice_vsig_free(struct ice_hw *hw, enum ice_block blk, u16 vsig)
 
 	idx = vsig & ICE_VSIG_IDX_M;
 	if (idx >= ICE_MAX_VSIGS)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (!hw->blk[blk].xlt2.vsig_tbl[idx].in_use)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	hw->blk[blk].xlt2.vsig_tbl[idx].in_use = false;
 
@@ -2682,10 +2682,10 @@ ice_vsig_remove_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 	idx = vsig & ICE_VSIG_IDX_M;
 
 	if (vsi >= ICE_MAX_VSI || idx >= ICE_MAX_VSIGS)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (!hw->blk[blk].xlt2.vsig_tbl[idx].in_use)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	/* entry already in default VSIG, don't have to remove */
 	if (idx == ICE_DEFAULT_VSIG)
@@ -2693,7 +2693,7 @@ ice_vsig_remove_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 
 	vsi_head = &hw->blk[blk].xlt2.vsig_tbl[idx].first_vsi;
 	if (!(*vsi_head))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	vsi_tgt = &hw->blk[blk].xlt2.vsis[vsi];
 	vsi_cur = (*vsi_head);
@@ -2710,7 +2710,7 @@ ice_vsig_remove_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 
 	/* verify if VSI was removed from group list */
 	if (!vsi_cur)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	vsi_cur->vsig = ICE_DEFAULT_VSIG;
 	vsi_cur->changed = 1;
@@ -2741,14 +2741,14 @@ ice_vsig_add_mv_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 	idx = vsig & ICE_VSIG_IDX_M;
 
 	if (vsi >= ICE_MAX_VSI || idx >= ICE_MAX_VSIGS)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* if VSIG not in use and VSIG is not default type this VSIG
 	 * doesn't exist.
 	 */
 	if (!hw->blk[blk].xlt2.vsig_tbl[idx].in_use &&
 	    vsig != ICE_DEFAULT_VSIG)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	status = ice_vsig_find_vsi(hw, blk, vsi, &orig_vsig);
 	if (status)
@@ -2865,7 +2865,7 @@ ice_find_prof_id_with_mask(struct ice_hw *hw, enum ice_block blk,
 	 * field vector and mask. This will cause rule interference.
 	 */
 	if (blk == ICE_BLK_FD)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	for (i = 0; i < (u8)es->count; i++) {
 		u16 off = i * es->fvw;
@@ -2881,7 +2881,7 @@ ice_find_prof_id_with_mask(struct ice_hw *hw, enum ice_block blk,
 		return 0;
 	}
 
-	return ICE_ERR_DOES_NOT_EXIST;
+	return -ENOENT;
 }
 
 /**
@@ -2941,7 +2941,7 @@ ice_alloc_tcam_ent(struct ice_hw *hw, enum ice_block blk, bool btm,
 	u16 res_type;
 
 	if (!ice_tcam_ent_rsrc_type(blk, &res_type))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	return ice_alloc_hw_res(hw, res_type, 1, btm, tcam_idx);
 }
@@ -2960,7 +2960,7 @@ ice_free_tcam_ent(struct ice_hw *hw, enum ice_block blk, u16 tcam_idx)
 	u16 res_type;
 
 	if (!ice_tcam_ent_rsrc_type(blk, &res_type))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	return ice_free_hw_res(hw, res_type, 1, &tcam_idx);
 }
@@ -2982,7 +2982,7 @@ ice_alloc_prof_id(struct ice_hw *hw, enum ice_block blk, u8 *prof_id)
 	u16 get_prof;
 
 	if (!ice_prof_id_rsrc_type(blk, &res_type))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	status = ice_alloc_hw_res(hw, res_type, 1, false, &get_prof);
 	if (!status)
@@ -3006,7 +3006,7 @@ ice_free_prof_id(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 	u16 res_type;
 
 	if (!ice_prof_id_rsrc_type(blk, &res_type))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	return ice_free_hw_res(hw, res_type, 1, &tmp_prof_id);
 }
@@ -3021,7 +3021,7 @@ static int
 ice_prof_inc_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
 	if (prof_id > hw->blk[blk].es.count)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	hw->blk[blk].es.ref_count[prof_id]++;
 
@@ -3143,12 +3143,12 @@ ice_alloc_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 idx, u16 mask,
 		    u16 *mask_idx)
 {
 	bool found_unused = false, found_copy = false;
-	int status = ICE_ERR_MAX_LIMIT;
+	int status = -ENOSPC;
 	u16 unused_idx = 0, copy_idx = 0;
 	u16 i;
 
 	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&hw->blk[blk].masks.lock);
 
@@ -3210,11 +3210,11 @@ static int
 ice_free_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 mask_idx)
 {
 	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (!(mask_idx >= hw->blk[blk].masks.first &&
 	      mask_idx < hw->blk[blk].masks.first + hw->blk[blk].masks.count))
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	mutex_lock(&hw->blk[blk].masks.lock);
 
@@ -3255,7 +3255,7 @@ ice_free_prof_masks(struct ice_hw *hw, enum ice_block blk, u16 prof_id)
 	u16 i;
 
 	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mask_bm = hw->blk[blk].es.mask_ena[prof_id];
 	for (i = 0; i < BITS_PER_BYTE * sizeof(mask_bm); i++)
@@ -3340,7 +3340,7 @@ ice_update_prof_masking(struct ice_hw *hw, enum ice_block blk, u16 prof_id,
 			if (ena_mask & BIT(i))
 				ice_free_prof_mask(hw, blk, i);
 
-		return ICE_ERR_OUT_OF_RANGE;
+		return -EIO;
 	}
 
 	/* enable the masks for this profile */
@@ -3386,7 +3386,7 @@ static int
 ice_prof_dec_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
 	if (prof_id > hw->blk[blk].es.count)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (hw->blk[blk].es.ref_count[prof_id] > 0) {
 		if (!--hw->blk[blk].es.ref_count[prof_id]) {
@@ -3943,7 +3943,7 @@ int ice_init_hw_tbls(struct ice_hw *hw)
 
 err:
 	ice_free_hw_tbls(hw);
-	return ICE_ERR_NO_MEMORY;
+	return -ENOMEM;
 }
 
 /**
@@ -4051,7 +4051,7 @@ ice_vsig_get_ref(struct ice_hw *hw, enum ice_block blk, u16 vsig, u16 *refs)
 	*refs = 0;
 
 	if (!hw->blk[blk].xlt2.vsig_tbl[idx].in_use)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	ptr = hw->blk[blk].xlt2.vsig_tbl[idx].first_vsi;
 	while (ptr) {
@@ -4112,7 +4112,7 @@ ice_prof_bld_es(struct ice_hw *hw, enum ice_block blk,
 						      sizeof(p->es[0]));
 
 			if (!p)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			p->count = cpu_to_le16(1);
 			p->offset = cpu_to_le16(tmp->prof_id);
@@ -4146,7 +4146,7 @@ ice_prof_bld_tcam(struct ice_hw *hw, enum ice_block blk,
 						      struct_size(p, entry, 1));
 
 			if (!p)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			p->count = cpu_to_le16(1);
 			p->entry[0].addr = cpu_to_le16(tmp->tcam_idx);
@@ -4182,7 +4182,7 @@ ice_prof_bld_xlt1(enum ice_block blk, struct ice_buf_build *bld,
 						      struct_size(p, value, 1));
 
 			if (!p)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			p->count = cpu_to_le16(1);
 			p->offset = cpu_to_le16(tmp->ptype);
@@ -4217,7 +4217,7 @@ ice_prof_bld_xlt2(enum ice_block blk, struct ice_buf_build *bld,
 						      struct_size(p, value, 1));
 
 			if (!p)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			p->count = cpu_to_le16(1);
 			p->offset = cpu_to_le16(tmp->vsi);
@@ -4280,7 +4280,7 @@ ice_upd_prof_hw(struct ice_hw *hw, enum ice_block blk,
 	/* Build update package buffer */
 	b = ice_pkg_buf_alloc(hw);
 	if (!b)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	status = ice_pkg_buf_reserve_section(b, sects);
 	if (status)
@@ -4317,13 +4317,13 @@ ice_upd_prof_hw(struct ice_hw *hw, enum ice_block blk,
 	 */
 	pkg_sects = ice_pkg_buf_get_active_sections(b);
 	if (!pkg_sects || pkg_sects != sects) {
-		status = ICE_ERR_INVAL_SIZE;
+		status = -EINVAL;
 		goto error_tmp;
 	}
 
 	/* update package */
 	status = ice_update_pkg(hw, ice_pkg_buf(b), 1);
-	if (status == ICE_ERR_AQ_ERROR)
+	if (status == -EIO)
 		ice_debug(hw, ICE_DBG_INIT, "Unable to update HW profile\n");
 
 error_tmp:
@@ -4444,7 +4444,7 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
 
 			/* check for room */
 			if (first_free + 1 < (s8)ice_fd_pairs[index].count)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			/* place in extraction sequence */
 			for (k = 0; k < ice_fd_pairs[index].count; k++) {
@@ -4454,7 +4454,7 @@ ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
 					ice_fd_pairs[index].off + (k * 2);
 
 				if (k > first_free)
-					return ICE_ERR_OUT_OF_RANGE;
+					return -EIO;
 
 				/* keep track of non-relevant fields */
 				mask_sel |= BIT(first_free - k);
@@ -4581,11 +4581,11 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 						  &prof->attr[prof->ptg_cnt]);
 
 			if (++prof->ptg_cnt >= ICE_MAX_PTG_PER_PROFILE)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 		}
 
 	if (!found)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	return 0;
 }
@@ -4654,7 +4654,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	/* add profile info */
 	prof = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*prof), GFP_KERNEL);
 	if (!prof) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_ice_add_prof;
 	}
 
@@ -4697,7 +4697,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			 */
 			status = ice_add_prof_attrib(prof, ptg, ptype,
 						     attr, attr_cnt);
-			if (status == ICE_ERR_MAX_LIMIT)
+			if (status == -ENOSPC)
 				break;
 			if (status) {
 				/* This is simple a PTYPE/PTG with no
@@ -4814,7 +4814,7 @@ ice_rem_prof_id(struct ice_hw *hw, enum ice_block blk,
 			status = ice_rel_tcam_idx(hw, blk,
 						  prof->tcam[i].tcam_idx);
 			if (status)
-				return ICE_ERR_HW_TABLE;
+				return -EIO;
 		}
 
 	return 0;
@@ -4861,7 +4861,7 @@ ice_rem_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 			p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p),
 					 GFP_KERNEL);
 			if (!p)
-				return ICE_ERR_NO_MEMORY;
+				return -ENOMEM;
 
 			p->type = ICE_VSIG_REM;
 			p->orig_vsig = vsig;
@@ -4908,7 +4908,7 @@ ice_rem_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 			return status;
 		}
 
-	return ICE_ERR_DOES_NOT_EXIST;
+	return -ENOENT;
 }
 
 /**
@@ -4967,7 +4967,7 @@ int ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id)
 
 	pmap = ice_search_prof_id(hw, blk, id);
 	if (!pmap) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto err_ice_rem_prof;
 	}
 
@@ -5007,7 +5007,7 @@ ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
 	/* Get the details on the profile specified by the handle ID */
 	map = ice_search_prof_id(hw, blk, hdl);
 	if (!map) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto err_ice_get_prof;
 	}
 
@@ -5017,7 +5017,7 @@ ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
 			p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p),
 					 GFP_KERNEL);
 			if (!p) {
-				status = ICE_ERR_NO_MEMORY;
+				status = -ENOMEM;
 				goto err_ice_get_prof;
 			}
 
@@ -5077,7 +5077,7 @@ ice_get_profs_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 		devm_kfree(ice_hw_to_dev(hw), ent1);
 	}
 
-	return ICE_ERR_NO_MEMORY;
+	return -ENOMEM;
 }
 
 /**
@@ -5099,13 +5099,13 @@ ice_add_prof_to_lst(struct ice_hw *hw, enum ice_block blk,
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 	map = ice_search_prof_id(hw, blk, hdl);
 	if (!map) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto err_ice_add_prof_to_lst;
 	}
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 	if (!p) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_ice_add_prof_to_lst;
 	}
 
@@ -5144,7 +5144,7 @@ ice_move_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig,
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 	if (!p)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	status = ice_vsig_find_vsi(hw, blk, vsi, &orig_vsig);
 	if (!status)
@@ -5233,7 +5233,7 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 	/* add TCAM to change list */
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 	if (!p)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	status = ice_tcam_write_entry(hw, blk, tcam->tcam_idx, tcam->prof_id,
 				      tcam->ptg, vsig, 0, tcam->attr.flags,
@@ -5354,18 +5354,18 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 
 	/* Error, if this VSIG already has this profile */
 	if (ice_has_prof_vsig(hw, blk, vsig, hdl))
-		return ICE_ERR_ALREADY_EXISTS;
+		return -EEXIST;
 
 	/* new VSIG profile structure */
 	t = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*t), GFP_KERNEL);
 	if (!t)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 	/* Get the details on the profile specified by the handle ID */
 	map = ice_search_prof_id(hw, blk, hdl);
 	if (!map) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto err_ice_add_prof_id_vsig;
 	}
 
@@ -5380,7 +5380,7 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		/* add TCAM to change list */
 		p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 		if (!p) {
-			status = ICE_ERR_NO_MEMORY;
+			status = -ENOMEM;
 			goto err_ice_add_prof_id_vsig;
 		}
 
@@ -5460,11 +5460,11 @@ ice_create_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl,
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 	if (!p)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	new_vsig = ice_vsig_alloc(hw, blk);
 	if (!new_vsig) {
-		status = ICE_ERR_HW_TABLE;
+		status = -EIO;
 		goto err_ice_create_prof_id_vsig;
 	}
 
@@ -5511,7 +5511,7 @@ ice_create_vsig_from_lst(struct ice_hw *hw, enum ice_block blk, u16 vsi,
 
 	vsig = ice_vsig_alloc(hw, blk);
 	if (!vsig)
-		return ICE_ERR_HW_TABLE;
+		return -EIO;
 
 	status = ice_move_vsi(hw, blk, vsi, vsig, chg);
 	if (status)
@@ -5605,7 +5605,7 @@ ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 		 * scenario
 		 */
 		if (ice_has_prof_vsig(hw, blk, vsig, hdl)) {
-			status = ICE_ERR_ALREADY_EXISTS;
+			status = -EEXIST;
 			goto err_ice_add_prof_id_flow;
 		}
 
@@ -5725,7 +5725,7 @@ ice_rem_prof_from_list(struct ice_hw *hw, struct list_head *lst, u64 hdl)
 			return 0;
 		}
 
-	return ICE_ERR_DOES_NOT_EXIST;
+	return -ENOENT;
 }
 
 /**
@@ -5840,7 +5840,7 @@ ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 			}
 		}
 	} else {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 	}
 
 	/* update hardware tables */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index a9dfb6aabbd9..ee6a8fab4c4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -634,12 +634,12 @@ ice_flow_val_hdrs(struct ice_flow_seg_info *segs, u8 segs_cnt)
 		/* Multiple L3 headers */
 		if (segs[i].hdrs & ICE_FLOW_SEG_HDRS_L3_MASK &&
 		    !is_power_of_2(segs[i].hdrs & ICE_FLOW_SEG_HDRS_L3_MASK))
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		/* Multiple L4 headers */
 		if (segs[i].hdrs & ICE_FLOW_SEG_HDRS_L4_MASK &&
 		    !is_power_of_2(segs[i].hdrs & ICE_FLOW_SEG_HDRS_L4_MASK))
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 	}
 
 	return 0;
@@ -1035,7 +1035,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 		prot_id = ICE_PROT_GRE_OF;
 		break;
 	default:
-		return ICE_ERR_NOT_IMPL;
+		return -EOPNOTSUPP;
 	}
 
 	/* Each extraction sequence entry is a word in size, and extracts a
@@ -1073,7 +1073,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 			 * does not exceed the block's capability
 			 */
 			if (params->es_cnt >= fv_words)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			/* some blocks require a reversed field vector layout */
 			if (hw->blk[params->blk].es.reverse)
@@ -1112,12 +1112,12 @@ ice_flow_xtract_raws(struct ice_hw *hw, struct ice_flow_prof_params *params,
 
 	if (params->prof->segs[seg].raws_cnt >
 	    ARRAY_SIZE(params->prof->segs[seg].raws))
-		return ICE_ERR_MAX_LIMIT;
+		return -ENOSPC;
 
 	/* Offsets within the segment headers are not supported */
 	hdrs_sz = ice_flow_calc_seg_sz(params, seg);
 	if (!hdrs_sz)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	fv_words = hw->blk[params->blk].es.fvw;
 
@@ -1150,7 +1150,7 @@ ice_flow_xtract_raws(struct ice_hw *hw, struct ice_flow_prof_params *params,
 			 */
 			if (params->es_cnt >= hw->blk[params->blk].es.count ||
 			    params->es_cnt >= ICE_MAX_FV_WORDS)
-				return ICE_ERR_MAX_LIMIT;
+				return -ENOSPC;
 
 			/* some blocks require a reversed field vector layout */
 			if (hw->blk[params->blk].es.reverse)
@@ -1229,7 +1229,7 @@ ice_flow_proc_segs(struct ice_hw *hw, struct ice_flow_prof_params *params)
 		status = 0;
 		break;
 	default:
-		return ICE_ERR_NOT_IMPL;
+		return -EOPNOTSUPP;
 	}
 
 	return status;
@@ -1334,7 +1334,7 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
 			struct ice_flow_entry *entry)
 {
 	if (!entry)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	list_del(&entry->l_entry);
 
@@ -1366,16 +1366,16 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	u8 i;
 
 	if (!prof)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	params = kzalloc(sizeof(*params), GFP_KERNEL);
 	if (!params)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	params->prof = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*params->prof),
 				    GFP_KERNEL);
 	if (!params->prof) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto free_params;
 	}
 
@@ -1544,13 +1544,13 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 	int status;
 
 	if (segs_cnt > ICE_FLOW_SEG_MAX)
-		return ICE_ERR_MAX_LIMIT;
+		return -ENOSPC;
 
 	if (!segs_cnt)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (!segs)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	status = ice_flow_val_hdrs(segs, segs_cnt);
 	if (status)
@@ -1584,7 +1584,7 @@ ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 
 	prof = ice_flow_find_prof_id(hw, blk, prof_id);
 	if (!prof) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto out;
 	}
 
@@ -1619,23 +1619,23 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 
 	/* No flow entry data is expected for RSS */
 	if (!entry_h || (!data && blk != ICE_BLK_RSS))
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&hw->fl_profs_locks[blk]);
 
 	prof = ice_flow_find_prof_id(hw, blk, prof_id);
 	if (!prof) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 	} else {
 		/* Allocate memory for the entry being added and associate
 		 * the VSI to the found flow profile
 		 */
 		e = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*e), GFP_KERNEL);
 		if (!e)
-			status = ICE_ERR_NO_MEMORY;
+			status = -ENOMEM;
 		else
 			status = ice_flow_assoc_prof(hw, blk, prof, vsi_handle);
 	}
@@ -1654,7 +1654,7 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 	case ICE_BLK_RSS:
 		break;
 	default:
-		status = ICE_ERR_NOT_IMPL;
+		status = -EOPNOTSUPP;
 		goto out;
 	}
 
@@ -1688,7 +1688,7 @@ int ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk,
 	int status = 0;
 
 	if (entry_h == ICE_FLOW_ENTRY_HANDLE_INVAL)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	entry = ICE_FLOW_ENTRY_PTR(entry_h);
 
@@ -1853,15 +1853,15 @@ ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u64 hash_fields,
 
 	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
 	    ~ICE_FLOW_RSS_HDRS_INNER_MASK & ~ICE_FLOW_SEG_HDR_IPV_OTHER)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS);
 	if (val && !is_power_of_2(val))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L4_MASKS);
 	if (val && !is_power_of_2(val))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	return 0;
 }
@@ -1906,7 +1906,7 @@ int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (list_empty(&hw->fl_profs[blk]))
 		return 0;
@@ -1981,7 +1981,7 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 	rss_cfg = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*rss_cfg),
 			       GFP_KERNEL);
 	if (!rss_cfg)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	rss_cfg->hashed_flds = prof->segs[prof->segs_cnt - 1].match;
 	rss_cfg->packet_hdr = prof->segs[prof->segs_cnt - 1].hdrs;
@@ -2032,11 +2032,11 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 	int status;
 
 	if (!segs_cnt || segs_cnt > ICE_FLOW_SEG_MAX)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Construct the packet segment info from the hashed fields */
 	status = ice_flow_set_rss_seg_info(&segs[segs_cnt - 1], hashed_flds,
@@ -2136,7 +2136,7 @@ ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 
 	if (hashed_flds == ICE_HASH_INVALID ||
 	    !ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&hw->rss_locks);
 	status = ice_add_rss_cfg_sync(hw, vsi_handle, hashed_flds, addl_hdrs,
@@ -2170,7 +2170,7 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Construct the packet segment info from the hashed fields */
 	status = ice_flow_set_rss_seg_info(&segs[segs_cnt - 1], hashed_flds,
@@ -2182,7 +2182,7 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 					vsi_handle,
 					ICE_FLOW_FIND_PROF_CHK_FLDS);
 	if (!prof) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto out;
 	}
 
@@ -2224,7 +2224,7 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 
 	if (hashed_flds == ICE_HASH_INVALID ||
 	    !ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&hw->rss_locks);
 	status = ice_rem_rss_cfg_sync(hw, vsi_handle, hashed_flds, addl_hdrs,
@@ -2287,12 +2287,12 @@ ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 
 	if (avf_hash == ICE_AVF_FLOW_FIELD_INVALID ||
 	    !ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Make sure no unsupported bits are specified */
 	if (avf_hash & ~(ICE_FLOW_AVF_RSS_ALL_IPV4_MASKS |
 			 ICE_FLOW_AVF_RSS_ALL_IPV6_MASKS))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	hash_flds = avf_hash;
 
@@ -2352,7 +2352,7 @@ ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 		}
 
 		if (rss_hash == ICE_HASH_INVALID)
-			return ICE_ERR_OUT_OF_RANGE;
+			return -EIO;
 
 		status = ice_add_rss_cfg(hw, vsi_handle, rss_hash,
 					 ICE_FLOW_SEG_HDR_NONE);
@@ -2374,7 +2374,7 @@ int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 	struct ice_rss_cfg *r;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	mutex_lock(&hw->rss_locks);
 	list_for_each_entry(r, &hw->rss_list_head, l_entry) {
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 803cea9ab7ca..6f9d5cb03be0 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -273,7 +273,7 @@ ice_fltr_prepare_mac(struct ice_vsi *vsi, const u8 *mac,
 
 	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action)) {
 		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	}
 
 	result = mac_action(vsi, &tmp_list);
@@ -302,7 +302,7 @@ ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action) ||
 	    ice_fltr_add_mac_to_list(vsi, &tmp_list, broadcast, action)) {
 		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	}
 
 	result = mac_action(vsi, &tmp_list);
@@ -326,7 +326,7 @@ ice_fltr_prepare_vlan(struct ice_vsi *vsi, u16 vlan_id,
 	LIST_HEAD(tmp_list);
 
 	if (ice_fltr_add_vlan_to_list(vsi, &tmp_list, vlan_id, action))
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	result = vlan_action(vsi, &tmp_list);
 	ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
@@ -350,7 +350,7 @@ ice_fltr_prepare_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 	LIST_HEAD(tmp_list);
 
 	if (ice_fltr_add_eth_to_list(vsi, &tmp_list, ethertype, flag, action))
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	result = eth_action(vsi, &tmp_list);
 	ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
@@ -469,7 +469,7 @@ ice_fltr_update_rule_flags(struct ice_hw *hw, u16 rule_id, u16 recipe_id,
 
 	s_rule = kzalloc(ICE_SW_RULE_RX_TX_NO_HDR_SIZE, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	flags_mask = ICE_SINGLE_ACT_LB_ENABLE | ICE_SINGLE_ACT_LAN_ENABLE;
 	act &= ~flags_mask;
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 3ff8ca3d35c4..76f889ef91fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -59,7 +59,7 @@ static void ice_gnss_read(struct kthread_work *work)
 					 cpu_to_le16(ICE_GNSS_UBX_DATA_LEN_H),
 					 i2c_params, (u8 *)&data_len_b, NULL);
 		if (status) {
-			err = ice_status_to_errno(status);
+			err = status;
 			goto exit_buf;
 		}
 
@@ -91,7 +91,7 @@ static void ice_gnss_read(struct kthread_work *work)
 					 cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
 					 bytes_read, &buf[i], NULL);
 		if (status) {
-			err = ice_status_to_errno(status);
+			err = status;
 			goto exit_buf;
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b5359dea543d..870678a0cc41 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1673,7 +1673,7 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 	status = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
 	if (!status) {
 		vsi->num_vlan--;
-	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
+	} else if (status == -ENOENT) {
 		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, error: %d\n",
 			vid, vsi->vsi_num, status);
 	} else {
@@ -3483,39 +3483,6 @@ void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
 	u64_stats_update_end(&rx_ring->syncp);
 }
 
-/**
- * ice_status_to_errno - convert from enum ice_status to Linux errno
- * @err: ice_status value to convert
- */
-int ice_status_to_errno(enum ice_status err)
-{
-	switch (err) {
-	case ICE_SUCCESS:
-		return 0;
-	case ICE_ERR_DOES_NOT_EXIST:
-		return -ENOENT;
-	case ICE_ERR_OUT_OF_RANGE:
-	case ICE_ERR_AQ_ERROR:
-	case ICE_ERR_AQ_TIMEOUT:
-	case ICE_ERR_AQ_EMPTY:
-	case ICE_ERR_AQ_FW_CRITICAL:
-		return -EIO;
-	case ICE_ERR_PARAM:
-	case ICE_ERR_INVAL_SIZE:
-		return -EINVAL;
-	case ICE_ERR_NO_MEMORY:
-		return -ENOMEM;
-	case ICE_ERR_MAX_LIMIT:
-		return -EAGAIN;
-	case ICE_ERR_RESET_ONGOING:
-		return -EBUSY;
-	case ICE_ERR_AQ_FULL:
-		return -ENOSPC;
-	default:
-		return -EINVAL;
-	}
-}
-
 /**
  * ice_is_dflt_vsi_in_use - check if the default forwarding VSI is being used
  * @sw: switch to check if its default forwarding VSI is free
@@ -3827,7 +3794,7 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	 * a success code. Return an error if FW returns an error code other
 	 * than ICE_AQ_RC_EMODE
 	 */
-	if (status == ICE_ERR_AQ_ERROR) {
+	if (status == -EIO) {
 		if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
 			dev_warn(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
 				 (ena ? "ON" : "OFF"), status,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index d75ec451d57e..29d72bbd7250 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -98,9 +98,6 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
 void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
 
 void ice_vsi_cfg_frame_size(struct ice_vsi *vsi);
-
-int ice_status_to_errno(enum ice_status err);
-
 void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d182cbaabf67..32ae9ac707ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -321,7 +321,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	if (status) {
 		netdev_err(netdev, "Failed to delete MAC filters\n");
 		/* if we failed because of alloc failures, just bail */
-		if (status == ICE_ERR_NO_MEMORY) {
+		if (status == -ENOMEM) {
 			err = -ENOMEM;
 			goto out;
 		}
@@ -334,7 +334,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	 * 'if' condition and report it as error. Instead continue processing
 	 * rest of the function.
 	 */
-	if (status && status != ICE_ERR_ALREADY_EXISTS) {
+	if (status && status != -EEXIST) {
 		netdev_err(netdev, "Failed to add MAC filters\n");
 		/* If there is no more space for new umac filters, VSI
 		 * should go into promiscuous mode. There should be some
@@ -1380,7 +1380,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		u16 opcode;
 
 		ret = ice_clean_rq_elem(hw, cq, &event, &pending);
-		if (ret == ICE_ERR_AQ_NO_WORK)
+		if (ret == -EALREADY)
 			break;
 		if (ret) {
 			dev_err(dev, "%s Receive Queue event error %d\n", qtype,
@@ -4081,7 +4081,7 @@ static void ice_verify_cacheline_size(struct ice_pf *pf)
  * ice_send_version - update firmware with driver version
  * @pf: PF struct
  *
- * Returns ICE_SUCCESS on success, else error code
+ * Returns 0 on success, else error code
  */
 static int ice_send_version(struct ice_pf *pf)
 {
@@ -5249,14 +5249,14 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 
 	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
 	status = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
-	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
+	if (status && status != -ENOENT) {
 		err = -EADDRNOTAVAIL;
 		goto err_update_filters;
 	}
 
 	/* Add filter for new MAC. If filter exists, return success */
 	status = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
-	if (status == ICE_ERR_ALREADY_EXISTS)
+	if (status == -EEXIST)
 		/* Although this MAC filter is already present in hardware it's
 		 * possible in some cases (e.g. bonding) that dev_addr was
 		 * modified outside of the driver and needs to be restored back
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 308d9fd76f01..40c9bcb7889a 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -27,7 +27,7 @@ ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 	cmd = &desc.params.nvm;
 
 	if (offset > ICE_AQC_NVM_MAX_OFFSET)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_read);
 
@@ -74,7 +74,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 	/* Verify the length of the read if this is for the Shadow RAM */
 	if (read_shadow_ram && ((offset + inlen) > (hw->flash.sr_words * 2u))) {
 		ice_debug(hw, ICE_DBG_NVM, "NVM error: requested offset is beyond Shadow RAM limit\n");
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	do {
@@ -131,7 +131,7 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_write);
 
@@ -329,7 +329,7 @@ ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
 	if (!start) {
 		ice_debug(hw, ICE_DBG_NVM, "Unable to calculate flash bank offset for module 0x%04x\n",
 			  module);
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
@@ -482,7 +482,7 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 				*module_tlv_len = tlv_len;
 				return 0;
 			}
-			return ICE_ERR_INVAL_SIZE;
+			return -EINVAL;
 		}
 		/* Check next TLV, i.e. current TLV pointer + length + 2 words
 		 * (for current TLV's type and length)
@@ -490,7 +490,7 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		next_tlv = next_tlv + tlv_len + 2;
 	}
 	/* Module does not exist */
-	return ICE_ERR_DOES_NOT_EXIST;
+	return -ENOENT;
 }
 
 /**
@@ -525,7 +525,7 @@ ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
 
 	if (pba_tlv_len < pba_size) {
 		ice_debug(hw, ICE_DBG_INIT, "Invalid PBA Block TLV size.\n");
-		return ICE_ERR_INVAL_SIZE;
+		return -EINVAL;
 	}
 
 	/* Subtract one to get PBA word count (PBA Size word is included in
@@ -534,7 +534,7 @@ ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
 	pba_size--;
 	if (pba_num_size < (((u32)pba_size * 2) + 1)) {
 		ice_debug(hw, ICE_DBG_INIT, "Buffer too small for PBA data.\n");
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	for (i = 0; i < pba_size; i++) {
@@ -650,14 +650,14 @@ ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
 		if (sum) {
 			ice_debug(hw, ICE_DBG_NVM, "Found CIVD data with invalid checksum of %u\n",
 				  sum);
-			return ICE_ERR_NVM;
+			return -EIO;
 		}
 
 		*civd = tmp;
 		return 0;
 	}
 
-	return ICE_ERR_NVM;
+	return -EIO;
 }
 
 /**
@@ -730,7 +730,7 @@ ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
 	if (module_id != ICE_NETLIST_LINK_TOPO_MOD_ID) {
 		ice_debug(hw, ICE_DBG_NVM, "Expected netlist module_id ID of 0x%04x, but got 0x%04x\n",
 			  ICE_NETLIST_LINK_TOPO_MOD_ID, module_id);
-		return ICE_ERR_NVM;
+		return -EIO;
 	}
 
 	status = ice_read_netlist_module(hw, bank, ICE_LINK_TOPO_MODULE_LEN, &length);
@@ -741,7 +741,7 @@ ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
 	if (length < ICE_NETLIST_ID_BLK_SIZE) {
 		ice_debug(hw, ICE_DBG_NVM, "Netlist Link Topology module too small. Expected at least %u words, but got %u words.\n",
 			  ICE_NETLIST_ID_BLK_SIZE, length);
-		return ICE_ERR_NVM;
+		return -EIO;
 	}
 
 	status = ice_read_netlist_module(hw, bank, ICE_LINK_TOPO_NODE_COUNT, &node_count);
@@ -751,7 +751,7 @@ ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
 
 	id_blk = kcalloc(ICE_NETLIST_ID_BLK_SIZE, sizeof(*id_blk), GFP_KERNEL);
 	if (!id_blk)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Read out the entire Netlist ID Block at once. */
 	status = ice_read_flash_module(hw, bank, ICE_SR_NETLIST_BANK_PTR,
@@ -819,7 +819,7 @@ static int ice_discover_flash_size(struct ice_hw *hw)
 		u8 data;
 
 		status = ice_read_flat_nvm(hw, offset, &len, &data, false);
-		if (status == ICE_ERR_AQ_ERROR &&
+		if (status == -EIO &&
 		    hw->adminq.sq_last_status == ICE_AQ_RC_EINVAL) {
 			ice_debug(hw, ICE_DBG_NVM, "%s: New upper bound of %u bytes\n",
 				  __func__, offset);
@@ -933,7 +933,7 @@ ice_determine_active_flash_banks(struct ice_hw *hw)
 	/* Check that the control word indicates validity */
 	if ((ctrl_word & ICE_SR_CTRL_WORD_1_M) >> ICE_SR_CTRL_WORD_1_S != ICE_SR_CTRL_WORD_VALID) {
 		ice_debug(hw, ICE_DBG_NVM, "Shadow RAM control word is invalid\n");
-		return ICE_ERR_CFG;
+		return -EIO;
 	}
 
 	if (!(ctrl_word & ICE_SR_CTRL_WORD_NVM_BANK))
@@ -1021,7 +1021,7 @@ int ice_init_nvm(struct ice_hw *hw)
 		/* Blank programming mode */
 		flash->blank_nvm_mode = true;
 		ice_debug(hw, ICE_DBG_NVM, "NVM init error: unsupported blank mode.\n");
-		return ICE_ERR_NVM_BLANK_MODE;
+		return -EIO;
 	}
 
 	status = ice_discover_flash_size(hw);
@@ -1080,7 +1080,7 @@ int ice_nvm_validate_checksum(struct ice_hw *hw)
 
 	if (!status)
 		if (le16_to_cpu(cmd->checksum) != ICE_AQC_NVM_CHECKSUM_CORRECT)
-			status = ICE_ERR_NVM_CHECKSUM;
+			status = -EIO;
 
 	return status;
 }
@@ -1144,7 +1144,7 @@ ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
 	struct ice_aq_desc desc;
 
 	if (length != 0 && !data)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	cmd = &desc.params.pkg_data;
 
@@ -1183,7 +1183,7 @@ ice_nvm_pass_component_tbl(struct ice_hw *hw, u8 *data, u16 length,
 	int status;
 
 	if (!data || !comp_response || !comp_response_code)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	cmd = &desc.params.pass_comp_tbl;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b742f23f764a..1f286315325a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -32,7 +32,7 @@ ice_get_sma_config_e810t(struct ice_hw *hw, struct ptp_pin_desc *ptp_pins)
 	/* Read initial pin state */
 	status = ice_read_sma_ctrl_e810t(hw, &data);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 
 	/* initialize with defaults */
 	for (i = 0; i < NUM_PTP_PINS_E810T; i++) {
@@ -120,7 +120,7 @@ ice_ptp_set_sma_config_e810t(struct ice_hw *hw,
 	/* Read initial pin state value */
 	status = ice_read_sma_ctrl_e810t(hw, &data);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 
 	/* Set the right sate based on the desired configuration */
 	data &= ~ICE_SMA1_MASK_E810T;
@@ -172,7 +172,7 @@ ice_ptp_set_sma_config_e810t(struct ice_hw *hw,
 
 	status = ice_write_sma_ctrl_e810t(hw, data);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index fe13e0afd5d1..3926d2004db9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -674,7 +674,7 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 	u8 idx;
 
 	if (!hw || !pca9575_handle)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* If handle was read previously return cached value */
 	if (hw->io_expander_handle) {
@@ -700,18 +700,18 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 	else if (hw->device_id == ICE_DEV_ID_E810C_QSFP)
 		idx = SW_PCA9575_QSFP_TOPO_IDX;
 	else
-		return ICE_ERR_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	cmd->addr.topo_params.index = idx;
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 	if (status)
-		return ICE_ERR_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	/* Verify if we found the right IO expander type */
 	if (desc.params.get_link_topo.node_part_num !=
 		ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
-		return ICE_ERR_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	/* If present save the handle and return it */
 	hw->io_expander_handle =
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 37fa7d8f4e73..039f568693e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -19,20 +19,20 @@ ice_sched_add_root_node(struct ice_port_info *pi,
 	struct ice_hw *hw;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	hw = pi->hw;
 
 	root = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*root), GFP_KERNEL);
 	if (!root)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* coverity[suspicious_sizeof] */
 	root->children = devm_kcalloc(ice_hw_to_dev(hw), hw->max_children[0],
 				      sizeof(*root), GFP_KERNEL);
 	if (!root->children) {
 		devm_kfree(ice_hw_to_dev(hw), root);
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	}
 
 	memcpy(&root->info, info, sizeof(*info));
@@ -156,7 +156,7 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 	struct ice_hw *hw;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	hw = pi->hw;
 
@@ -166,7 +166,7 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 	if (!parent) {
 		ice_debug(hw, ICE_DBG_SCHED, "Parent Node not found for parent_teid=0x%x\n",
 			  le32_to_cpu(info->parent_teid));
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	/* query the current node information from FW before adding it
@@ -178,7 +178,7 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 
 	node = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*node), GFP_KERNEL);
 	if (!node)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	if (hw->max_children[layer]) {
 		/* coverity[suspicious_sizeof] */
 		node->children = devm_kcalloc(ice_hw_to_dev(hw),
@@ -186,7 +186,7 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 					      sizeof(*node), GFP_KERNEL);
 		if (!node->children) {
 			devm_kfree(ice_hw_to_dev(hw), node);
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		}
 	}
 
@@ -240,7 +240,7 @@ ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
 	buf_size = struct_size(buf, teid, num_nodes);
 	buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	buf->hdr.parent_teid = parent->info.node_teid;
 	buf->hdr.num_elems = cpu_to_le16(num_nodes);
@@ -531,7 +531,7 @@ ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
 	buf_size = sizeof(*buf) * num_nodes;
 	buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < num_nodes; i++)
 		buf[i] = cpu_to_le32(node_teids[i]);
@@ -566,7 +566,7 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 
 	vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi_ctx)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	/* allocate LAN queue contexts */
 	if (!vsi_ctx->lan_q_ctx[tc]) {
 		vsi_ctx->lan_q_ctx[tc] = devm_kcalloc(ice_hw_to_dev(hw),
@@ -574,7 +574,7 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 						      sizeof(*q_ctx),
 						      GFP_KERNEL);
 		if (!vsi_ctx->lan_q_ctx[tc])
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		vsi_ctx->num_lan_q_entries[tc] = new_numqs;
 		return 0;
 	}
@@ -585,7 +585,7 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 		q_ctx = devm_kcalloc(ice_hw_to_dev(hw), new_numqs,
 				     sizeof(*q_ctx), GFP_KERNEL);
 		if (!q_ctx)
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		memcpy(q_ctx, vsi_ctx->lan_q_ctx[tc],
 		       prev_num * sizeof(*q_ctx));
 		devm_kfree(ice_hw_to_dev(hw), vsi_ctx->lan_q_ctx[tc]);
@@ -610,7 +610,7 @@ ice_alloc_rdma_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 
 	vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi_ctx)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	/* allocate RDMA queue contexts */
 	if (!vsi_ctx->rdma_q_ctx[tc]) {
 		vsi_ctx->rdma_q_ctx[tc] = devm_kcalloc(ice_hw_to_dev(hw),
@@ -618,7 +618,7 @@ ice_alloc_rdma_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 						       sizeof(*q_ctx),
 						       GFP_KERNEL);
 		if (!vsi_ctx->rdma_q_ctx[tc])
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		vsi_ctx->num_rdma_q_entries[tc] = new_numqs;
 		return 0;
 	}
@@ -629,7 +629,7 @@ ice_alloc_rdma_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 		q_ctx = devm_kcalloc(ice_hw_to_dev(hw), new_numqs,
 				     sizeof(*q_ctx), GFP_KERNEL);
 		if (!q_ctx)
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		memcpy(q_ctx, vsi_ctx->rdma_q_ctx[tc],
 		       prev_num * sizeof(*q_ctx));
 		devm_kfree(ice_hw_to_dev(hw), vsi_ctx->rdma_q_ctx[tc]);
@@ -731,14 +731,14 @@ ice_sched_del_rl_profile(struct ice_hw *hw,
 	u16 num_profiles = 1;
 
 	if (rl_info->prof_id_ref != 0)
-		return ICE_ERR_IN_USE;
+		return -EBUSY;
 
 	/* Safe to remove profile ID */
 	buf = &rl_info->profile;
 	status = ice_aq_remove_rl_profile(hw, num_profiles, buf, sizeof(*buf),
 					  &num_profiles_removed, NULL);
 	if (status || num_profiles_removed != num_profiles)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	/* Delete stale entry now */
 	list_del(&rl_info->list_entry);
@@ -891,7 +891,7 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 	buf_size = struct_size(buf, generic, num_nodes);
 	buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	buf->hdr.parent_teid = parent->info.node_teid;
 	buf->hdr.num_elems = cpu_to_le16(num_nodes);
@@ -918,7 +918,7 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 		ice_debug(hw, ICE_DBG_SCHED, "add node failed FW Error %d\n",
 			  hw->adminq.sq_last_status);
 		devm_kfree(ice_hw_to_dev(hw), buf);
-		return ICE_ERR_CFG;
+		return -EIO;
 	}
 
 	*num_nodes_added = num_nodes;
@@ -989,7 +989,7 @@ ice_sched_add_nodes_to_hw_layer(struct ice_port_info *pi,
 		return 0;
 
 	if (!parent || layer < pi->hw->sw_entry_point_layer)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* max children per node per layer */
 	max_child_nodes = pi->hw->max_children[parent->tx_sched_layer];
@@ -998,8 +998,8 @@ ice_sched_add_nodes_to_hw_layer(struct ice_port_info *pi,
 	if ((parent->num_children + num_nodes) > max_child_nodes) {
 		/* Fail if the parent is a TC node */
 		if (parent == tc_node)
-			return ICE_ERR_CFG;
-		return ICE_ERR_MAX_LIMIT;
+			return -EIO;
+		return -ENOSPC;
 	}
 
 	return ice_sched_add_elems(pi, tc_node, parent, layer, num_nodes,
@@ -1045,14 +1045,14 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 		if (*num_nodes_added > num_nodes) {
 			ice_debug(pi->hw, ICE_DBG_SCHED, "added extra nodes %d %d\n", num_nodes,
 				  *num_nodes_added);
-			status = ICE_ERR_CFG;
+			status = -EIO;
 			break;
 		}
 		/* break if all the nodes are added successfully */
 		if (!status && (*num_nodes_added == num_nodes))
 			break;
 		/* break if the error is not max limit */
-		if (status && status != ICE_ERR_MAX_LIMIT)
+		if (status && status != -ENOSPC)
 			break;
 		/* Exceeded the max children */
 		max_child_nodes = pi->hw->max_children[parent->tx_sched_layer];
@@ -1208,13 +1208,13 @@ int ice_sched_init_port(struct ice_port_info *pi)
 	u8 i, j;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	hw = pi->hw;
 
 	/* Query the Default Topology from FW */
 	buf = devm_kzalloc(ice_hw_to_dev(hw), ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Query default scheduling tree topology */
 	status = ice_aq_get_dflt_topo(hw, pi->lport, buf, ICE_AQ_MAX_BUF_LEN,
@@ -1226,7 +1226,7 @@ int ice_sched_init_port(struct ice_port_info *pi)
 	if (num_branches < 1 || num_branches > ICE_TXSCHED_MAX_BRANCHES) {
 		ice_debug(hw, ICE_DBG_SCHED, "num_branches unexpected %d\n",
 			  num_branches);
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto err_init_port;
 	}
 
@@ -1237,7 +1237,7 @@ int ice_sched_init_port(struct ice_port_info *pi)
 	if (num_elems < 1 || num_elems > ICE_AQC_TOPO_MAX_LEVEL_NUM) {
 		ice_debug(hw, ICE_DBG_SCHED, "num_elems unexpected %d\n",
 			  num_elems);
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto err_init_port;
 	}
 
@@ -1312,7 +1312,7 @@ int ice_sched_query_res_alloc(struct ice_hw *hw)
 
 	buf = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*buf), GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	status = ice_aq_query_sched_res(hw, sizeof(*buf), buf, NULL);
 	if (status)
@@ -1341,7 +1341,7 @@ int ice_sched_query_res_alloc(struct ice_hw *hw)
 				       sizeof(*hw->layer_info)),
 				      GFP_KERNEL);
 	if (!hw->layer_info) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto sched_query_out;
 	}
 
@@ -1631,14 +1631,14 @@ ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	parent = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 	for (i = vsil + 1; i <= qgl; i++) {
 		if (!parent)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		status = ice_sched_add_nodes_to_layer(pi, tc_node, parent, i,
 						      num_nodes[i],
 						      &first_node_teid,
 						      &num_added);
 		if (status || num_nodes[i] != num_added)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* The newly added node can be a new parent for the next
 		 * layer nodes
@@ -1728,7 +1728,7 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	u8 i, vsil;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	vsil = ice_sched_get_vsi_layer(pi->hw);
 	for (i = pi->hw->sw_entry_point_layer; i <= vsil; i++) {
@@ -1737,7 +1737,7 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 						      &first_node_teid,
 						      &num_added);
 		if (status || num_nodes[i] != num_added)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* The newly added node can be a new parent for the next
 		 * layer nodes
@@ -1749,7 +1749,7 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 			parent = parent->children[0];
 
 		if (!parent)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		if (i == vsil)
 			parent->vsi_handle = vsi_handle;
@@ -1774,7 +1774,7 @@ ice_sched_add_vsi_to_topo(struct ice_port_info *pi, u16 vsi_handle, u8 tc)
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* calculate number of supported nodes needed for this VSI */
 	ice_sched_calc_vsi_support_nodes(pi, tc_node, num_nodes);
@@ -1808,15 +1808,15 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 	if (!vsi_node)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi_ctx)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (owner == ICE_SCHED_NODE_OWNER_LAN)
 		prev_numqs = vsi_ctx->sched.max_lanq[tc];
@@ -1881,10 +1881,10 @@ ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 	ice_debug(pi->hw, ICE_DBG_SCHED, "add/config VSI %d\n", vsi_handle);
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi_ctx)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 
 	/* suspend the VSI if TC is not enabled */
@@ -1908,7 +1908,7 @@ ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 
 		vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 		if (!vsi_node)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		vsi_ctx->sched.vsi_node[tc] = vsi_node;
 		vsi_node->in_use = true;
@@ -1996,7 +1996,7 @@ static bool ice_sched_is_leaf_node_present(struct ice_sched_node *node)
 static int
 ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 {
-	int status = ICE_ERR_PARAM;
+	int status = -EINVAL;
 	struct ice_vsi_ctx *vsi_ctx;
 	u8 i;
 
@@ -2022,7 +2022,7 @@ ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 
 		if (ice_sched_is_leaf_node_present(vsi_node)) {
 			ice_debug(pi->hw, ICE_DBG_SCHED, "VSI has leaf nodes in TC %d\n", i);
-			status = ICE_ERR_IN_USE;
+			status = -EBUSY;
 			goto exit_sched_rm_vsi_cfg;
 		}
 		while (j < vsi_node->num_children) {
@@ -2202,22 +2202,22 @@ ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 	hw = pi->hw;
 
 	if (!parent || !num_items)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Does parent have enough space */
 	if (parent->num_children + num_items >
 	    hw->max_children[parent->tx_sched_layer])
-		return ICE_ERR_AQ_FULL;
+		return -ENOSPC;
 
 	buf_len = struct_size(buf, teid, 1);
 	buf = kzalloc(buf_len, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < num_items; i++) {
 		node = ice_sched_find_node_by_teid(pi->root, list[i]);
 		if (!node) {
-			status = ICE_ERR_PARAM;
+			status = -EINVAL;
 			goto move_err_exit;
 		}
 
@@ -2228,7 +2228,7 @@ ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 		status = ice_aq_move_sched_elems(hw, 1, buf, buf_len,
 						 &grps_movd, NULL);
 		if (status && grps_movd != 1) {
-			status = ICE_ERR_CFG;
+			status = -EIO;
 			goto move_err_exit;
 		}
 
@@ -2264,15 +2264,15 @@ ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	agg_node = ice_sched_get_agg_node(pi, tc_node, agg_id);
 	if (!agg_node)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 	if (!vsi_node)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	/* Is this VSI already part of given aggregator? */
 	if (ice_sched_find_node_in_subtree(pi->hw, agg_node, vsi_node))
@@ -2302,7 +2302,7 @@ ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
 						      &first_node_teid,
 						      &num_nodes_added);
 		if (status || num_nodes[i] != num_nodes_added)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* The newly added node can be a new parent for the next
 		 * layer nodes
@@ -2314,7 +2314,7 @@ ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
 			parent = parent->children[0];
 
 		if (!parent)
-			return ICE_ERR_CFG;
+			return -EIO;
 	}
 
 move_nodes:
@@ -2405,15 +2405,15 @@ ice_sched_rm_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	agg_node = ice_sched_get_agg_node(pi, tc_node, agg_id);
 	if (!agg_node)
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	/* Can't remove the aggregator node if it has children */
 	if (ice_sched_is_agg_inuse(pi, agg_node))
-		return ICE_ERR_IN_USE;
+		return -EBUSY;
 
 	/* need to remove the whole subtree if aggregator node is the
 	 * only child.
@@ -2422,7 +2422,7 @@ ice_sched_rm_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 		struct ice_sched_node *parent = agg_node->parent;
 
 		if (!parent)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		if (parent->num_children > 1)
 			break;
@@ -2486,7 +2486,7 @@ ice_save_agg_tc_bitmap(struct ice_port_info *pi, u32 agg_id,
 
 	agg_info = ice_get_agg_info(pi->hw, agg_id);
 	if (!agg_info)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	bitmap_copy(agg_info->replay_tc_bitmap, tc_bitmap,
 		    ICE_MAX_TRAFFIC_CLASS);
 	return 0;
@@ -2514,7 +2514,7 @@ ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	agg_node = ice_sched_get_agg_node(pi, tc_node, agg_id);
 	/* Does Agg node already exist ? */
@@ -2549,14 +2549,14 @@ ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 	parent = tc_node;
 	for (i = hw->sw_entry_point_layer; i <= aggl; i++) {
 		if (!parent)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		status = ice_sched_add_nodes_to_layer(pi, tc_node, parent, i,
 						      num_nodes[i],
 						      &first_node_teid,
 						      &num_nodes_added);
 		if (status || num_nodes[i] != num_nodes_added)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* The newly added node can be a new parent for the next
 		 * layer nodes
@@ -2606,7 +2606,7 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 		agg_info = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*agg_info),
 					GFP_KERNEL);
 		if (!agg_info)
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 
 		agg_info->agg_id = agg_id;
 		agg_info->agg_type = agg_type;
@@ -2733,11 +2733,11 @@ ice_save_agg_vsi_tc_bitmap(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
 
 	agg_info = ice_get_agg_info(pi->hw, agg_id);
 	if (!agg_info)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	/* check if entry already exist */
 	agg_vsi_info = ice_get_agg_vsi_info(agg_info, vsi_handle);
 	if (!agg_vsi_info)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	bitmap_copy(agg_vsi_info->replay_tc_bitmap, tc_bitmap,
 		    ICE_MAX_TRAFFIC_CLASS);
 	return 0;
@@ -2765,10 +2765,10 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 	u8 tc;
 
 	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	agg_info = ice_get_agg_info(hw, agg_id);
 	if (!agg_info)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	/* If the VSI is already part of another aggregator then update
 	 * its VSI info list
 	 */
@@ -2790,7 +2790,7 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 		agg_vsi_info = devm_kzalloc(ice_hw_to_dev(hw),
 					    sizeof(*agg_vsi_info), GFP_KERNEL);
 		if (!agg_vsi_info)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		/* add VSI ID into the aggregator list */
 		agg_vsi_info->vsi_handle = vsi_handle;
@@ -2874,7 +2874,7 @@ ice_sched_update_elem(struct ice_hw *hw, struct ice_sched_node *node,
 					&elem_cfgd, NULL);
 	if (status || elem_cfgd != num_elems) {
 		ice_debug(hw, ICE_DBG_SCHED, "Config sched elem error\n");
-		return ICE_ERR_CFG;
+		return -EIO;
 	}
 
 	/* Config success case */
@@ -2909,7 +2909,7 @@ ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
 		data->valid_sections |= ICE_AQC_ELEM_VALID_EIR;
 		data->eir_bw.bw_alloc = cpu_to_le16(bw_alloc);
 	} else {
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	/* Configure element */
@@ -3065,7 +3065,7 @@ static int
 ice_sched_bw_to_rl_profile(struct ice_hw *hw, u32 bw,
 			   struct ice_aqc_rl_profile_elem *profile)
 {
-	int status = ICE_ERR_PARAM;
+	int status = -EINVAL;
 	s64 bytes_per_sec, ts_rate, mv_tmp;
 	bool found = false;
 	s32 encode = 0;
@@ -3113,7 +3113,7 @@ ice_sched_bw_to_rl_profile(struct ice_hw *hw, u32 bw,
 		profile->rl_encode = cpu_to_le16(encode);
 		status = 0;
 	} else {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 	}
 
 	return status;
@@ -3231,7 +3231,7 @@ ice_sched_cfg_node_bw_lmt(struct ice_hw *hw, struct ice_sched_node *node,
 		 * hence only one of them may be set for any given element
 		 */
 		if (data->valid_sections & ICE_AQC_ELEM_VALID_SHARED)
-			return ICE_ERR_CFG;
+			return -EIO;
 		data->valid_sections |= ICE_AQC_ELEM_VALID_EIR;
 		data->eir_bw.bw_profile_idx = cpu_to_le16(rl_prof_id);
 		break;
@@ -3254,7 +3254,7 @@ ice_sched_cfg_node_bw_lmt(struct ice_hw *hw, struct ice_sched_node *node,
 		if ((data->valid_sections & ICE_AQC_ELEM_VALID_EIR) &&
 		    (le16_to_cpu(data->eir_bw.bw_profile_idx) !=
 			    ICE_SCHED_DFLT_RL_PROF_ID))
-			return ICE_ERR_CFG;
+			return -EIO;
 		/* EIR BW is set to default, disable it */
 		data->valid_sections &= ~ICE_AQC_ELEM_VALID_EIR;
 		/* Okay to enable shared BW now */
@@ -3263,7 +3263,7 @@ ice_sched_cfg_node_bw_lmt(struct ice_hw *hw, struct ice_sched_node *node,
 		break;
 	default:
 		/* Unknown rate limit type */
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	/* Configure element */
@@ -3391,7 +3391,7 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 	int status = 0;
 
 	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	/* Check the existing list for RL profile */
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
 			    list_entry)
@@ -3404,11 +3404,11 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 
 			/* Remove old profile ID from database */
 			status = ice_sched_del_rl_profile(pi->hw, rl_prof_elem);
-			if (status && status != ICE_ERR_IN_USE)
+			if (status && status != -EBUSY)
 				ice_debug(pi->hw, ICE_DBG_SCHED, "Remove rl profile failed\n");
 			break;
 		}
-	if (status == ICE_ERR_IN_USE)
+	if (status == -EBUSY)
 		status = 0;
 	return status;
 }
@@ -3451,7 +3451,7 @@ ice_sched_set_node_bw_dflt(struct ice_port_info *pi,
 		rl_prof_id = ICE_SCHED_NO_SHARED_RL_PROF_ID;
 		break;
 	default:
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 	/* Save existing RL prof ID for later clean up */
 	old_id = ice_sched_get_node_rl_prof_id(node, rl_type);
@@ -3530,7 +3530,7 @@ ice_sched_set_node_bw(struct ice_port_info *pi, struct ice_sched_node *node,
 		      enum ice_rl_type rl_type, u32 bw, u8 layer_num)
 {
 	struct ice_aqc_rl_profile_info *rl_prof_info;
-	int status = ICE_ERR_PARAM;
+	int status = -EINVAL;
 	struct ice_hw *hw = pi->hw;
 	u16 old_id, rl_prof_id;
 
@@ -3582,20 +3582,20 @@ ice_sched_set_node_bw_lmt(struct ice_port_info *pi, struct ice_sched_node *node,
 	u8 layer_num;
 
 	if (!pi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	hw = pi->hw;
 	/* Remove unused RL profile IDs from HW and SW DB */
 	ice_sched_rm_unused_rl_prof(pi);
 	layer_num = ice_sched_get_rl_prof_layer(pi, rl_type,
 						node->tx_sched_layer);
 	if (layer_num >= hw->num_tx_sched_layers)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (rl_type == ICE_SHARED_BW) {
 		/* SRL node may be different */
 		cfg_node = ice_sched_get_srl_node(node, layer_num);
 		if (!cfg_node)
-			return ICE_ERR_CFG;
+			return -EIO;
 	}
 	/* EIR BW and Shared BW profiles are mutually exclusive and
 	 * hence only one of them may be set for any given element
@@ -3653,7 +3653,7 @@ ice_sched_validate_srl_node(struct ice_sched_node *node, u8 sel_layer)
 	    (node->parent && node->parent->num_children == 1)))
 		return 0;
 
-	return ICE_ERR_CFG;
+	return -EIO;
 }
 
 /**
@@ -3678,7 +3678,7 @@ ice_sched_save_q_bw(struct ice_q_ctx *q_ctx, enum ice_rl_type rl_type, u32 bw)
 		ice_set_clear_shared_bw(&q_ctx->bw_t_info, bw);
 		break;
 	default:
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	}
 	return 0;
 }
@@ -3698,12 +3698,12 @@ static int
 ice_sched_set_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		       u16 q_handle, enum ice_rl_type rl_type, u32 bw)
 {
-	int status = ICE_ERR_PARAM;
+	int status = -EINVAL;
 	struct ice_sched_node *node;
 	struct ice_q_ctx *q_ctx;
 
 	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	mutex_lock(&pi->sched_lock);
 	q_ctx = ice_get_lan_q_ctx(pi->hw, vsi_handle, tc, q_handle);
 	if (!q_ctx)
@@ -3725,7 +3725,7 @@ ice_sched_set_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		sel_layer = ice_sched_get_rl_prof_layer(pi, rl_type,
 							node->tx_sched_layer);
 		if (sel_layer >= pi->hw->num_tx_sched_layers) {
-			status = ICE_ERR_PARAM;
+			status = -EINVAL;
 			goto exit_q_bw_lmt;
 		}
 		status = ice_sched_validate_srl_node(node, sel_layer);
@@ -3848,7 +3848,7 @@ ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw)
 {
-	int status = ICE_ERR_PARAM;
+	int status = -EINVAL;
 	struct ice_sched_node *node;
 
 	if (!pi)
@@ -3928,7 +3928,7 @@ int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes)
 
 	if (bytes < ICE_MIN_BURST_SIZE_ALLOWED ||
 	    bytes > ICE_MAX_BURST_SIZE_ALLOWED)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	if (ice_round_to_num(bytes, 64) <=
 	    ICE_MAX_BURST_SIZE_64_BYTE_GRANULARITY) {
 		/* 64 byte granularity case */
@@ -3995,7 +3995,7 @@ ice_sched_replay_node_bw(struct ice_hw *hw, struct ice_sched_node *node,
 			 struct ice_bw_type_info *bw_t_info)
 {
 	struct ice_port_info *pi = hw->port_info;
-	int status = ICE_ERR_PARAM;
+	int status = -EINVAL;
 	u16 bw_alloc;
 
 	if (!node)
@@ -4148,7 +4148,7 @@ ice_sched_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
 
 	bitmap_zero(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	agg_info = ice_get_vsi_agg_info(hw, vsi_handle);
 	if (!agg_info)
 		return 0; /* Not present in list - default Agg case */
@@ -4206,6 +4206,6 @@ ice_sched_replay_q_bw(struct ice_port_info *pi, struct ice_q_ctx *q_ctx)
 	/* Following also checks the presence of node in tree */
 	q_node = ice_sched_find_node_by_teid(pi->root, q_ctx->q_teid);
 	if (!q_node)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	return ice_sched_replay_node_bw(pi->hw, q_node, &q_ctx->bw_t_info);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index ecc516d4ab1d..52c6bac41bf7 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -236,7 +236,7 @@ ice_mbx_detect_malvf(struct ice_hw *hw, u16 vf_id,
 	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
 
 	if (vf_id >= snap->mbx_vf.vfcntr_len)
-		return ICE_ERR_OUT_OF_RANGE;
+		return -EIO;
 
 	/* increment the message count in the VF array */
 	snap->mbx_vf.vf_cntr[vf_id]++;
@@ -309,7 +309,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 	int status = 0;
 
 	if (!is_malvf || !mbx_data)
-		return ICE_ERR_BAD_PTR;
+		return -EINVAL;
 
 	/* When entering the mailbox state machine assume that the VF
 	 * is not malicious until detected.
@@ -320,7 +320,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 	  * interrupt is not less than the defined AVF message threshold.
 	  */
 	if (mbx_data->max_num_msgs_mbx <= ICE_ASYNC_VF_MSG_THRESHOLD)
-		return ICE_ERR_INVAL_SIZE;
+		return -EINVAL;
 
 	/* The watermark value should not be lesser than the threshold limit
 	 * set for the number of asynchronous messages a VF can send to mailbox
@@ -329,7 +329,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 	 */
 	if (mbx_data->async_watermark_val < ICE_ASYNC_VF_MSG_THRESHOLD ||
 	    mbx_data->async_watermark_val > mbx_data->max_num_msgs_mbx)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	new_state = ICE_MAL_VF_DETECT_STATE_INVALID;
 	snap_buf = &snap->mbx_buf;
@@ -383,7 +383,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 
 	default:
 		new_state = ICE_MAL_VF_DETECT_STATE_INVALID;
-		status = ICE_ERR_CFG;
+		status = -EIO;
 	}
 
 	snap_buf->state = new_state;
@@ -410,15 +410,15 @@ ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
 		     u16 bitmap_len, u16 vf_id, bool *report_malvf)
 {
 	if (!all_malvfs || !report_malvf)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	*report_malvf = false;
 
 	if (bitmap_len < hw->mbx_snapshot.mbx_vf.vfcntr_len)
-		return ICE_ERR_INVAL_SIZE;
+		return -EINVAL;
 
 	if (vf_id >= bitmap_len)
-		return ICE_ERR_OUT_OF_RANGE;
+		return -EIO;
 
 	/* If the vf_id is found in the bitmap set bit and boolean to true */
 	if (!test_and_set_bit(vf_id, all_malvfs))
@@ -446,14 +446,14 @@ ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 		    u16 bitmap_len, u16 vf_id)
 {
 	if (!snap || !all_malvfs)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (bitmap_len < snap->mbx_vf.vfcntr_len)
-		return ICE_ERR_INVAL_SIZE;
+		return -EINVAL;
 
 	/* Ensure VF ID value is not larger than bitmap or VF counter length */
 	if (vf_id >= bitmap_len || vf_id >= snap->mbx_vf.vfcntr_len)
-		return ICE_ERR_OUT_OF_RANGE;
+		return -EIO;
 
 	/* Clear VF ID bit in the bitmap tracking malicious VFs attached to PF */
 	clear_bit(vf_id, all_malvfs);
@@ -491,13 +491,13 @@ int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count)
 	 * the functional capabilities of the PF.
 	 */
 	if (!vf_count || vf_count > hw->func_caps.num_allocd_vfs)
-		return ICE_ERR_INVAL_SIZE;
+		return -EINVAL;
 
 	snap->mbx_vf.vf_cntr = devm_kcalloc(ice_hw_to_dev(hw), vf_count,
 					    sizeof(*snap->mbx_vf.vf_cntr),
 					    GFP_KERNEL);
 	if (!snap->mbx_vf.vf_cntr)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Setting the VF counter length to the number of allocated
 	 * VFs for given PF's functional capabilities.
diff --git a/drivers/net/ethernet/intel/ice/ice_status.h b/drivers/net/ethernet/intel/ice/ice_status.h
deleted file mode 100644
index dbf66057371d..000000000000
--- a/drivers/net/ethernet/intel/ice/ice_status.h
+++ /dev/null
@@ -1,44 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
-
-#ifndef _ICE_STATUS_H_
-#define _ICE_STATUS_H_
-
-/* Error Codes */
-enum ice_status {
-	ICE_SUCCESS				= 0,
-
-	/* Generic codes : Range -1..-49 */
-	ICE_ERR_PARAM				= -1,
-	ICE_ERR_NOT_IMPL			= -2,
-	ICE_ERR_NOT_READY			= -3,
-	ICE_ERR_NOT_SUPPORTED			= -4,
-	ICE_ERR_BAD_PTR				= -5,
-	ICE_ERR_INVAL_SIZE			= -6,
-	ICE_ERR_DEVICE_NOT_SUPPORTED		= -8,
-	ICE_ERR_RESET_FAILED			= -9,
-	ICE_ERR_FW_API_VER			= -10,
-	ICE_ERR_NO_MEMORY			= -11,
-	ICE_ERR_CFG				= -12,
-	ICE_ERR_OUT_OF_RANGE			= -13,
-	ICE_ERR_ALREADY_EXISTS			= -14,
-	ICE_ERR_DOES_NOT_EXIST			= -15,
-	ICE_ERR_IN_USE				= -16,
-	ICE_ERR_MAX_LIMIT			= -17,
-	ICE_ERR_RESET_ONGOING			= -18,
-	ICE_ERR_HW_TABLE			= -19,
-	ICE_ERR_FW_DDP_MISMATCH			= -20,
-
-	ICE_ERR_NVM				= -50,
-	ICE_ERR_NVM_CHECKSUM			= -51,
-	ICE_ERR_BUF_TOO_SHORT			= -52,
-	ICE_ERR_NVM_BLANK_MODE			= -53,
-	ICE_ERR_AQ_ERROR			= -100,
-	ICE_ERR_AQ_TIMEOUT			= -101,
-	ICE_ERR_AQ_FULL				= -102,
-	ICE_ERR_AQ_NO_WORK			= -103,
-	ICE_ERR_AQ_EMPTY			= -104,
-	ICE_ERR_AQ_FW_CRITICAL			= -105,
-};
-
-#endif /* _ICE_STATUS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 2bcd7176385b..e9b372bd2ee6 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -350,7 +350,7 @@ int ice_init_def_sw_recp(struct ice_hw *hw)
 	recps = devm_kcalloc(ice_hw_to_dev(hw), ICE_MAX_NUM_RECIPES,
 			     sizeof(*recps), GFP_KERNEL);
 	if (!recps)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
 		recps[i].root_rid = i;
@@ -654,7 +654,7 @@ ice_add_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	int status;
 
 	if (vsi_handle >= ICE_MAX_VSI)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	status = ice_aq_add_vsi(hw, vsi_ctx, cd);
 	if (status)
 		return status;
@@ -665,7 +665,7 @@ ice_add_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 					   sizeof(*tmp_vsi_ctx), GFP_KERNEL);
 		if (!tmp_vsi_ctx) {
 			ice_aq_free_vsi(hw, vsi_ctx, false, cd);
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		}
 		*tmp_vsi_ctx = *vsi_ctx;
 		ice_save_vsi_ctx(hw, vsi_handle, tmp_vsi_ctx);
@@ -694,7 +694,7 @@ ice_free_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	int status;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	vsi_ctx->vsi_num = ice_get_hw_vsi_num(hw, vsi_handle);
 	status = ice_aq_free_vsi(hw, vsi_ctx, keep_vsi_alloc, cd);
 	if (!status)
@@ -716,7 +716,7 @@ ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	       struct ice_sq_cd *cd)
 {
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	vsi_ctx->vsi_num = ice_get_hw_vsi_num(hw, vsi_handle);
 	return ice_aq_update_vsi(hw, vsi_ctx, cd);
 }
@@ -741,7 +741,7 @@ ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable)
 	else
 		ctx->info.q_opt_flags &= ~ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
 
-	return ice_status_to_errno(ice_update_vsi(hw, vsi_handle, ctx, NULL));
+	return ice_update_vsi(hw, vsi_handle, ctx, NULL);
 }
 
 /**
@@ -766,7 +766,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 	buf_len = struct_size(sw_buf, elem, 1);
 	sw_buf = devm_kzalloc(ice_hw_to_dev(hw), buf_len, GFP_KERNEL);
 	if (!sw_buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	sw_buf->num_elems = cpu_to_le16(1);
 
 	if (lkup_type == ICE_SW_LKUP_MAC ||
@@ -780,7 +780,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 		sw_buf->res_type =
 			cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
 	} else {
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto ice_aq_alloc_free_vsi_list_exit;
 	}
 
@@ -822,7 +822,7 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 	if (opc != ice_aqc_opc_add_sw_rules &&
 	    opc != ice_aqc_opc_update_sw_rules &&
 	    opc != ice_aqc_opc_remove_sw_rules)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
 
@@ -832,7 +832,7 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 	status = ice_aq_send_cmd(hw, &desc, rule_list, rule_list_sz, cd);
 	if (opc != ice_aqc_opc_add_sw_rules &&
 	    hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 
 	return status;
 }
@@ -894,7 +894,7 @@ ice_aq_get_recipe(struct ice_hw *hw,
 	u16 buf_size;
 
 	if (*num_recipes != ICE_MAX_NUM_RECIPES)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	cmd = &desc.params.add_get_recipe;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_recipe);
@@ -933,7 +933,7 @@ ice_update_recipe_lkup_idx(struct ice_hw *hw,
 
 	rcp_list = kcalloc(num_recps, sizeof(*rcp_list), GFP_KERNEL);
 	if (!rcp_list)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* read current recipe list from firmware */
 	rcp_list->recipe_indx = params->rid;
@@ -1035,7 +1035,7 @@ static int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 	buf_len = struct_size(sw_buf, elem, 1);
 	sw_buf = kzalloc(buf_len, GFP_KERNEL);
 	if (!sw_buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	sw_buf->num_elems = cpu_to_le16(1);
 	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
@@ -1119,7 +1119,7 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 	/* we need a buffer big enough to accommodate all the recipes */
 	tmp = kcalloc(ICE_MAX_NUM_RECIPES, sizeof(*tmp), GFP_KERNEL);
 	if (!tmp)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	tmp[0].recipe_indx = rid;
 	status = ice_aq_get_recipe(hw, tmp, &num_recps, rid, NULL);
@@ -1156,7 +1156,7 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 		rg_entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*rg_entry),
 					GFP_KERNEL);
 		if (!rg_entry) {
-			status = ICE_ERR_NO_MEMORY;
+			status = -ENOMEM;
 			goto err_unroll;
 		}
 
@@ -1289,7 +1289,7 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
 			    GFP_KERNEL);
 
 	if (!rbuf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Multiple calls to ice_aq_get_sw_cfg may be required
 	 * to get all the switch configuration information. The need
@@ -1558,7 +1558,7 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 	u16 id;
 
 	if (m_ent->fltr_info.lkup_type != ICE_SW_LKUP_MAC)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Create two back-to-back switch rules and submit them to the HW using
 	 * one memory buffer:
@@ -1569,7 +1569,7 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 	rules_size = lg_act_size + ICE_SW_RULE_RX_TX_ETH_HDR_SIZE;
 	lg_act = devm_kzalloc(ice_hw_to_dev(hw), rules_size, GFP_KERNEL);
 	if (!lg_act)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	rx_tx = (struct ice_aqc_sw_rules_elem *)((u8 *)lg_act + lg_act_size);
 
@@ -1690,7 +1690,7 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 	int i;
 
 	if (!num_vsi)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (lkup_type == ICE_SW_LKUP_MAC ||
 	    lkup_type == ICE_SW_LKUP_MAC_VLAN ||
@@ -1704,15 +1704,15 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 		rule_type = remove ? ICE_AQC_SW_RULES_T_PRUNE_LIST_CLEAR :
 			ICE_AQC_SW_RULES_T_PRUNE_LIST_SET;
 	else
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	s_rule_size = (u16)ICE_SW_RULE_VSI_LIST_SIZE(num_vsi);
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw), s_rule_size, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	for (i = 0; i < num_vsi; i++) {
 		if (!ice_is_vsi_valid(hw, vsi_handle_arr[i])) {
-			status = ICE_ERR_PARAM;
+			status = -EINVAL;
 			goto exit;
 		}
 		/* AQ call requires hw_vsi_id(s) */
@@ -1778,11 +1778,11 @@ ice_create_pkt_fwd_rule(struct ice_hw *hw,
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw),
 			      ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	fm_entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*fm_entry),
 				GFP_KERNEL);
 	if (!fm_entry) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto ice_create_pkt_fwd_rule_exit;
 	}
 
@@ -1838,7 +1838,7 @@ ice_update_pkt_fwd_rule(struct ice_hw *hw, struct ice_fltr_info *f_info)
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw),
 			      ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	ice_fill_sw_rule(hw, f_info, s_rule, ice_aqc_opc_update_sw_rules);
 
@@ -1925,13 +1925,13 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 
 	if ((cur_fltr->fltr_act == ICE_FWD_TO_Q ||
 	     cur_fltr->fltr_act == ICE_FWD_TO_QGRP))
-		return ICE_ERR_NOT_IMPL;
+		return -EOPNOTSUPP;
 
 	if ((new_fltr->fltr_act == ICE_FWD_TO_Q ||
 	     new_fltr->fltr_act == ICE_FWD_TO_QGRP) &&
 	    (cur_fltr->fltr_act == ICE_FWD_TO_VSI ||
 	     cur_fltr->fltr_act == ICE_FWD_TO_VSI_LIST))
-		return ICE_ERR_NOT_IMPL;
+		return -EOPNOTSUPP;
 
 	if (m_entry->vsi_count < 2 && !m_entry->vsi_list_info) {
 		/* Only one entry existed in the mapping and it was not already
@@ -1943,7 +1943,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 
 		/* A rule already exists with the new VSI being added */
 		if (cur_fltr->fwd_id.hw_vsi_id == new_fltr->fwd_id.hw_vsi_id)
-			return ICE_ERR_ALREADY_EXISTS;
+			return -EEXIST;
 
 		vsi_handle_arr[0] = cur_fltr->vsi_handle;
 		vsi_handle_arr[1] = new_fltr->vsi_handle;
@@ -1971,7 +1971,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 						vsi_list_id);
 
 		if (!m_entry->vsi_list_info)
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 
 		/* If this entry was large action then the large action needs
 		 * to be updated to point to FWD to VSI list
@@ -1986,7 +1986,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 		enum ice_adminq_opc opcode;
 
 		if (!m_entry->vsi_list_info)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* A rule already exists with the new VSI being added */
 		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
@@ -2090,7 +2090,7 @@ ice_add_rule_internal(struct ice_hw *hw, u8 recp_id,
 	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	f_entry->fltr_info.fwd_id.hw_vsi_id =
 		ice_get_hw_vsi_num(hw, f_entry->fltr_info.vsi_handle);
 
@@ -2136,7 +2136,7 @@ ice_remove_vsi_list_rule(struct ice_hw *hw, u16 vsi_list_id,
 	s_rule_size = (u16)ICE_SW_RULE_VSI_LIST_SIZE(0);
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw), s_rule_size, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR);
 	s_rule->pdata.vsi_list.index = cpu_to_le16(vsi_list_id);
@@ -2168,11 +2168,11 @@ ice_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 
 	if (fm_list->fltr_info.fltr_act != ICE_FWD_TO_VSI_LIST ||
 	    fm_list->vsi_count == 0)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* A rule with the VSI being removed does not exist */
 	if (!test_bit(vsi_handle, fm_list->vsi_list_info->vsi_map))
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	lkup_type = fm_list->fltr_info.lkup_type;
 	vsi_list_id = fm_list->fltr_info.fwd_id.vsi_list_id;
@@ -2194,7 +2194,7 @@ ice_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 		rem_vsi_handle = find_first_bit(vsi_list_info->vsi_map,
 						ICE_MAX_VSI);
 		if (!ice_is_vsi_valid(hw, rem_vsi_handle))
-			return ICE_ERR_OUT_OF_RANGE;
+			return -EIO;
 
 		/* Make sure VSI list is empty before removing it below */
 		status = ice_update_vsi_list_rule(hw, &rem_vsi_handle, 1,
@@ -2257,7 +2257,7 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 	u16 vsi_handle;
 
 	if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	f_entry->fltr_info.fwd_id.hw_vsi_id =
 		ice_get_hw_vsi_num(hw, f_entry->fltr_info.vsi_handle);
 
@@ -2265,14 +2265,14 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 	mutex_lock(rule_lock);
 	list_elem = ice_find_rule_entry(hw, recp_id, &f_entry->fltr_info);
 	if (!list_elem) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto exit;
 	}
 
 	if (list_elem->fltr_info.fltr_act != ICE_FWD_TO_VSI_LIST) {
 		remove_rule = true;
 	} else if (!list_elem->vsi_list_info) {
-		status = ICE_ERR_DOES_NOT_EXIST;
+		status = -ENOENT;
 		goto exit;
 	} else if (list_elem->vsi_list_info->ref_cnt > 1) {
 		/* a ref_cnt > 1 indicates that the vsi_list is being
@@ -2305,7 +2305,7 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 				      ICE_SW_RULE_RX_TX_NO_HDR_SIZE,
 				      GFP_KERNEL);
 		if (!s_rule) {
-			status = ICE_ERR_NO_MEMORY;
+			status = -ENOMEM;
 			goto exit;
 		}
 
@@ -2354,7 +2354,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 	u8 elem_sent;
 
 	if (!m_list || !hw)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	s_rule = NULL;
 	sw = hw->switch_info;
@@ -2367,23 +2367,23 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		m_list_itr->fltr_info.flag = ICE_FLTR_TX;
 		vsi_handle = m_list_itr->fltr_info.vsi_handle;
 		if (!ice_is_vsi_valid(hw, vsi_handle))
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 		m_list_itr->fltr_info.fwd_id.hw_vsi_id = hw_vsi_id;
 		/* update the src in case it is VSI num */
 		if (m_list_itr->fltr_info.src_id != ICE_SRC_ID_VSI)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		m_list_itr->fltr_info.src = hw_vsi_id;
 		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
 		    is_zero_ether_addr(add))
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
 			/* Don't overwrite the unicast address */
 			mutex_lock(rule_lock);
 			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
 						&m_list_itr->fltr_info)) {
 				mutex_unlock(rule_lock);
-				return ICE_ERR_ALREADY_EXISTS;
+				return -EEXIST;
 			}
 			mutex_unlock(rule_lock);
 			num_unicast++;
@@ -2411,7 +2411,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 	s_rule = devm_kcalloc(ice_hw_to_dev(hw), num_unicast, s_rule_size,
 			      GFP_KERNEL);
 	if (!s_rule) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto ice_add_mac_exit;
 	}
 
@@ -2461,7 +2461,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 			fm_entry = devm_kzalloc(ice_hw_to_dev(hw),
 						sizeof(*fm_entry), GFP_KERNEL);
 			if (!fm_entry) {
-				status = ICE_ERR_NO_MEMORY;
+				status = -ENOMEM;
 				goto ice_add_mac_exit;
 			}
 			fm_entry->fltr_info = *f_info;
@@ -2500,7 +2500,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	f_entry->fltr_info.fwd_id.hw_vsi_id =
 		ice_get_hw_vsi_num(hw, f_entry->fltr_info.vsi_handle);
@@ -2508,10 +2508,10 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 
 	/* VLAN ID should only be 12 bits */
 	if (new_fltr->l_data.vlan.vlan_id > ICE_MAX_VLAN_ID)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (new_fltr->src_id != ICE_SRC_ID_VSI)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	new_fltr->src = new_fltr->fwd_id.hw_vsi_id;
 	lkup_type = new_fltr->lkup_type;
@@ -2550,7 +2550,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 			v_list_itr = ice_find_rule_entry(hw, ICE_SW_LKUP_VLAN,
 							 new_fltr);
 			if (!v_list_itr) {
-				status = ICE_ERR_DOES_NOT_EXIST;
+				status = -ENOENT;
 				goto exit;
 			}
 			/* reuse VSI list for new rule and increment ref_cnt */
@@ -2586,7 +2586,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 		if (v_list_itr->vsi_count > 1 &&
 		    v_list_itr->vsi_list_info->ref_cnt > 1) {
 			ice_debug(hw, ICE_DBG_SW, "Invalid configuration: Optimization to reuse VSI list with more than one VSI is not being done yet\n");
-			status = ICE_ERR_CFG;
+			status = -EIO;
 			goto exit;
 		}
 
@@ -2596,7 +2596,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 
 		/* A rule already exists with the new VSI being added */
 		if (cur_handle == vsi_handle) {
-			status = ICE_ERR_ALREADY_EXISTS;
+			status = -EEXIST;
 			goto exit;
 		}
 
@@ -2646,11 +2646,11 @@ int ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
 	struct ice_fltr_list_entry *v_list_itr;
 
 	if (!v_list || !hw)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	list_for_each_entry(v_list_itr, v_list, list_entry) {
 		if (v_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_VLAN)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		v_list_itr->fltr_info.flag = ICE_FLTR_TX;
 		v_list_itr->status = ice_add_vlan_internal(hw, v_list_itr);
 		if (v_list_itr->status)
@@ -2674,7 +2674,7 @@ ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 	struct ice_fltr_list_entry *em_list_itr;
 
 	if (!em_list || !hw)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	list_for_each_entry(em_list_itr, em_list, list_entry) {
 		enum ice_sw_lkup_type l_type =
@@ -2682,7 +2682,7 @@ ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 
 		if (l_type != ICE_SW_LKUP_ETHERTYPE_MAC &&
 		    l_type != ICE_SW_LKUP_ETHERTYPE)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		em_list_itr->status = ice_add_rule_internal(hw, l_type,
 							    em_list_itr);
@@ -2703,7 +2703,7 @@ ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 	struct ice_fltr_list_entry *em_list_itr, *tmp;
 
 	if (!em_list || !hw)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	list_for_each_entry_safe(em_list_itr, tmp, em_list, list_entry) {
 		enum ice_sw_lkup_type l_type =
@@ -2711,7 +2711,7 @@ ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 
 		if (l_type != ICE_SW_LKUP_ETHERTYPE_MAC &&
 		    l_type != ICE_SW_LKUP_ETHERTYPE)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		em_list_itr->status = ice_remove_rule_internal(hw, l_type,
 							       em_list_itr);
@@ -2782,7 +2782,7 @@ ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 	u16 hw_vsi_id;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 
 	s_rule_size = set ? ICE_SW_RULE_RX_TX_ETH_HDR_SIZE :
@@ -2790,7 +2790,7 @@ ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw), s_rule_size, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	memset(&f_info, 0, sizeof(f_info));
 
@@ -2888,7 +2888,7 @@ ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
  * This function removes either a MAC filter rule or a specific VSI from a
  * VSI list for a multicast MAC address.
  *
- * Returns ICE_ERR_DOES_NOT_EXIST if a given entry was not added by
+ * Returns -ENOENT if a given entry was not added by
  * ice_add_mac. Caller should be aware that this call will only work if all
  * the entries passed into m_list were added previously. It will not attempt to
  * do a partial remove of entries that were found.
@@ -2899,7 +2899,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 
 	if (!m_list)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	rule_lock = &hw->switch_info->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
 	list_for_each_entry_safe(list_itr, tmp, m_list, list_entry) {
@@ -2908,11 +2908,11 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 		u16 vsi_handle;
 
 		if (l_type != ICE_SW_LKUP_MAC)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		vsi_handle = list_itr->fltr_info.vsi_handle;
 		if (!ice_is_vsi_valid(hw, vsi_handle))
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		list_itr->fltr_info.fwd_id.hw_vsi_id =
 					ice_get_hw_vsi_num(hw, vsi_handle);
@@ -2925,7 +2925,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 			if (!ice_find_ucast_rule_entry(hw, ICE_SW_LKUP_MAC,
 						       &list_itr->fltr_info)) {
 				mutex_unlock(rule_lock);
-				return ICE_ERR_DOES_NOT_EXIST;
+				return -ENOENT;
 			}
 			mutex_unlock(rule_lock);
 		}
@@ -2949,13 +2949,13 @@ ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list)
 	struct ice_fltr_list_entry *v_list_itr, *tmp;
 
 	if (!v_list || !hw)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	list_for_each_entry_safe(v_list_itr, tmp, v_list, list_entry) {
 		enum ice_sw_lkup_type l_type = v_list_itr->fltr_info.lkup_type;
 
 		if (l_type != ICE_SW_LKUP_VLAN)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		v_list_itr->status = ice_remove_rule_internal(hw,
 							      ICE_SW_LKUP_VLAN,
 							      v_list_itr);
@@ -3005,7 +3005,7 @@ ice_add_entry_to_vsi_fltr_list(struct ice_hw *hw, u16 vsi_handle,
 	 */
 	tmp = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*tmp), GFP_KERNEL);
 	if (!tmp)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	tmp->fltr_info = *fi;
 
@@ -3046,7 +3046,7 @@ ice_add_to_vsi_fltr_list(struct ice_hw *hw, u16 vsi_handle,
 
 	/* check to make sure VSI ID is valid and within boundary */
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	list_for_each_entry(fm_entry, lkup_list_head, list_entry) {
 		if (!ice_vsi_uses_fltr(fm_entry, vsi_handle))
@@ -3136,7 +3136,7 @@ ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 	u8 recipe_id;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (promisc_mask & (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX))
 		recipe_id = ICE_SW_LKUP_PROMISC_VLAN;
@@ -3208,7 +3208,7 @@ ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask, u16 vid)
 	u8 recipe_id;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 
 	memset(&new_fltr, 0, sizeof(new_fltr));
@@ -3444,7 +3444,7 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	buf_len = struct_size(buf, elem, 1);
 	buf = kzalloc(buf_len, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	buf->num_elems = cpu_to_le16(num_items);
 	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
@@ -3482,7 +3482,7 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	buf_len = struct_size(buf, elem, 1);
 	buf = kzalloc(buf_len, GFP_KERNEL);
 	if (!buf)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	buf->num_elems = cpu_to_le16(num_items);
 	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
@@ -3706,7 +3706,7 @@ ice_create_first_fit_recp_def(struct ice_hw *hw,
 						     sizeof(*entry),
 						     GFP_KERNEL);
 				if (!entry)
-					return ICE_ERR_NO_MEMORY;
+					return -ENOMEM;
 				list_add(&entry->l_entry, rg_list);
 				grp = &entry->r_group;
 				(*recp_cnt)++;
@@ -3774,7 +3774,7 @@ ice_fill_fv_word_index(struct ice_hw *hw, struct list_head *fv_list,
 			 * invalid pair
 			 */
 			if (!found)
-				return ICE_ERR_PARAM;
+				return -EINVAL;
 		}
 	}
 
@@ -3885,22 +3885,22 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 
 	if (rm->n_grp_count > 1) {
 		if (rm->n_grp_count > free_res_idx)
-			return ICE_ERR_MAX_LIMIT;
+			return -ENOSPC;
 
 		rm->n_grp_count++;
 	}
 
 	if (rm->n_grp_count > ICE_MAX_CHAIN_RECIPE)
-		return ICE_ERR_MAX_LIMIT;
+		return -ENOSPC;
 
 	tmp = kcalloc(ICE_MAX_NUM_RECIPES, sizeof(*tmp), GFP_KERNEL);
 	if (!tmp)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	buf = devm_kcalloc(ice_hw_to_dev(hw), rm->n_grp_count, sizeof(*buf),
 			   GFP_KERNEL);
 	if (!buf) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_mem;
 	}
 
@@ -3960,7 +3960,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			 */
 			if (chain_idx >= ICE_MAX_FV_WORDS) {
 				ice_debug(hw, ICE_DBG_SW, "No chain index available\n");
-				status = ICE_ERR_MAX_LIMIT;
+				status = -ENOSPC;
 				goto err_unroll;
 			}
 
@@ -3991,7 +3991,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
 			       sizeof(buf[0].recipe_bitmap));
 		} else {
-			status = ICE_ERR_BAD_PTR;
+			status = -EINVAL;
 			goto err_unroll;
 		}
 		/* Applicable only for ROOT_RECIPE, set the fwd_priority for
@@ -4027,7 +4027,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 						sizeof(*last_chain_entry),
 						GFP_KERNEL);
 		if (!last_chain_entry) {
-			status = ICE_ERR_NO_MEMORY;
+			status = -ENOMEM;
 			goto err_unroll;
 		}
 		last_chain_entry->rid = rid;
@@ -4062,7 +4062,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
 			       sizeof(buf[recps].recipe_bitmap));
 		} else {
-			status = ICE_ERR_BAD_PTR;
+			status = -EINVAL;
 			goto err_unroll;
 		}
 		buf[recps].content.act_ctrl_fwd_priority = rm->priority;
@@ -4105,7 +4105,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			}
 
 		if (!idx_found) {
-			status = ICE_ERR_OUT_OF_RANGE;
+			status = -EIO;
 			goto err_unroll;
 		}
 
@@ -4202,11 +4202,11 @@ ice_get_fv(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 
 	prot_ids = kcalloc(lkups_cnt, sizeof(*prot_ids), GFP_KERNEL);
 	if (!prot_ids)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < lkups_cnt; i++)
 		if (!ice_prot_type_to_id(lkups[i].type, &prot_ids[i])) {
-			status = ICE_ERR_CFG;
+			status = -EIO;
 			goto free_mem;
 		}
 
@@ -4258,11 +4258,11 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	u8 i;
 
 	if (!lkups_cnt)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	lkup_exts = kzalloc(sizeof(*lkup_exts), GFP_KERNEL);
 	if (!lkup_exts)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 
 	/* Determine the number of words to be matched and if it exceeds a
 	 * recipe's restrictions
@@ -4271,20 +4271,20 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		u16 count;
 
 		if (lkups[i].type >= ICE_PROTOCOL_LAST) {
-			status = ICE_ERR_CFG;
+			status = -EIO;
 			goto err_free_lkup_exts;
 		}
 
 		count = ice_fill_valid_words(&lkups[i], lkup_exts);
 		if (!count) {
-			status = ICE_ERR_CFG;
+			status = -EIO;
 			goto err_free_lkup_exts;
 		}
 	}
 
 	rm = kzalloc(sizeof(*rm), GFP_KERNEL);
 	if (!rm) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_free_lkup_exts;
 	}
 
@@ -4525,7 +4525,7 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		}
 		/* this should never happen in a correct calling sequence */
 		if (!found)
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 
 		switch (lkups[i].type) {
 		case ICE_MAC_OFOS:
@@ -4555,12 +4555,12 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			len = sizeof(struct ice_sctp_hdr);
 			break;
 		default:
-			return ICE_ERR_PARAM;
+			return -EINVAL;
 		}
 
 		/* the length should be a word multiple */
 		if (len % ICE_BYTES_PER_WORD)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* We have the offset to the header start, the length, the
 		 * caller's header values and mask. Use this information to
@@ -4656,13 +4656,13 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 	if (cur_fltr->sw_act.fltr_act == ICE_FWD_TO_Q ||
 	    cur_fltr->sw_act.fltr_act == ICE_FWD_TO_QGRP ||
 	    cur_fltr->sw_act.fltr_act == ICE_DROP_PACKET)
-		return ICE_ERR_NOT_IMPL;
+		return -EOPNOTSUPP;
 
 	if ((new_fltr->sw_act.fltr_act == ICE_FWD_TO_Q ||
 	     new_fltr->sw_act.fltr_act == ICE_FWD_TO_QGRP) &&
 	    (cur_fltr->sw_act.fltr_act == ICE_FWD_TO_VSI ||
 	     cur_fltr->sw_act.fltr_act == ICE_FWD_TO_VSI_LIST))
-		return ICE_ERR_NOT_IMPL;
+		return -EOPNOTSUPP;
 
 	if (m_entry->vsi_count < 2 && !m_entry->vsi_list_info) {
 		 /* Only one entry existed in the mapping and it was not already
@@ -4675,7 +4675,7 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 		/* A rule already exists with the new VSI being added */
 		if (cur_fltr->sw_act.fwd_id.hw_vsi_id ==
 		    new_fltr->sw_act.fwd_id.hw_vsi_id)
-			return ICE_ERR_ALREADY_EXISTS;
+			return -EEXIST;
 
 		vsi_handle_arr[0] = cur_fltr->sw_act.vsi_handle;
 		vsi_handle_arr[1] = new_fltr->sw_act.vsi_handle;
@@ -4708,7 +4708,7 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 		u16 vsi_handle = new_fltr->sw_act.vsi_handle;
 
 		if (!m_entry->vsi_list_info)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		/* A rule already exists with the new VSI being added */
 		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
@@ -4774,7 +4774,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	}
 
 	if (!lkups_cnt)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* get # of words we need to match */
 	word_cnt = 0;
@@ -4788,13 +4788,13 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	}
 
 	if (!word_cnt || word_cnt > ICE_MAX_CHAIN_WORDS)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* make sure that we can locate a dummy packet */
 	ice_find_dummy_packet(lkups, lkups_cnt, &pkt, &pkt_len,
 			      &pkt_offsets);
 	if (!pkt) {
-		status = ICE_ERR_PARAM;
+		status = -EINVAL;
 		goto err_ice_add_adv_rule;
 	}
 
@@ -4802,11 +4802,11 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	      rinfo->sw_act.fltr_act == ICE_FWD_TO_Q ||
 	      rinfo->sw_act.fltr_act == ICE_FWD_TO_QGRP ||
 	      rinfo->sw_act.fltr_act == ICE_DROP_PACKET))
-		return ICE_ERR_CFG;
+		return -EIO;
 
 	vsi_handle = rinfo->sw_act.vsi_handle;
 	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
 		rinfo->sw_act.fwd_id.hw_vsi_id =
@@ -4840,7 +4840,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	rule_buf_sz = ICE_SW_RULE_RX_TX_NO_HDR_SIZE + pkt_len;
 	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
 	if (!s_rule)
-		return ICE_ERR_NO_MEMORY;
+		return -ENOMEM;
 	if (!rinfo->flags_info.act_valid) {
 		act |= ICE_SINGLE_ACT_LAN_ENABLE;
 		act |= ICE_SINGLE_ACT_LB_ENABLE;
@@ -4874,7 +4874,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		       ICE_SINGLE_ACT_VALID_BIT;
 		break;
 	default:
-		status = ICE_ERR_CFG;
+		status = -EIO;
 		goto err_ice_add_adv_rule;
 	}
 
@@ -4911,14 +4911,14 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 				sizeof(struct ice_adv_fltr_mgmt_list_entry),
 				GFP_KERNEL);
 	if (!adv_fltr) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_ice_add_adv_rule;
 	}
 
 	adv_fltr->lkups = devm_kmemdup(ice_hw_to_dev(hw), lkups,
 				       lkups_cnt * sizeof(*lkups), GFP_KERNEL);
 	if (!adv_fltr->lkups) {
-		status = ICE_ERR_NO_MEMORY;
+		status = -ENOMEM;
 		goto err_ice_add_adv_rule;
 	}
 
@@ -5026,11 +5026,11 @@ ice_adv_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 
 	if (fm_list->rule_info.sw_act.fltr_act != ICE_FWD_TO_VSI_LIST ||
 	    fm_list->vsi_count == 0)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	/* A rule with the VSI being removed does not exist */
 	if (!test_bit(vsi_handle, fm_list->vsi_list_info->vsi_map))
-		return ICE_ERR_DOES_NOT_EXIST;
+		return -ENOENT;
 
 	lkup_type = ICE_SW_LKUP_LAST;
 	vsi_list_id = fm_list->rule_info.sw_act.fwd_id.vsi_list_id;
@@ -5050,7 +5050,7 @@ ice_adv_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 		rem_vsi_handle = find_first_bit(vsi_list_info->vsi_map,
 						ICE_MAX_VSI);
 		if (!ice_is_vsi_valid(hw, rem_vsi_handle))
-			return ICE_ERR_OUT_OF_RANGE;
+			return -EIO;
 
 		/* Make sure VSI list is empty before removing it below */
 		status = ice_update_vsi_list_rule(hw, &rem_vsi_handle, 1,
@@ -5130,17 +5130,17 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		u16 count;
 
 		if (lkups[i].type >= ICE_PROTOCOL_LAST)
-			return ICE_ERR_CFG;
+			return -EIO;
 
 		count = ice_fill_valid_words(&lkups[i], &lkup_exts);
 		if (!count)
-			return ICE_ERR_CFG;
+			return -EIO;
 	}
 
 	rid = ice_find_recp(hw, &lkup_exts);
 	/* If did not find a recipe that match the existing criteria */
 	if (rid == ICE_MAX_NUM_RECIPES)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 
 	rule_lock = &hw->switch_info->recp_list[rid].filt_rule_lock;
 	list_elem = ice_find_adv_rule_entry(hw, lkups, lkups_cnt, rid, rinfo);
@@ -5172,7 +5172,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		rule_buf_sz = ICE_SW_RULE_RX_TX_NO_HDR_SIZE;
 		s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
 		if (!s_rule)
-			return ICE_ERR_NO_MEMORY;
+			return -ENOMEM;
 		s_rule->pdata.lkup_tx_rx.act = 0;
 		s_rule->pdata.lkup_tx_rx.index =
 			cpu_to_le16(list_elem->rule_info.fltr_rule_id);
@@ -5180,7 +5180,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		status = ice_aq_sw_rules(hw, (struct ice_aqc_sw_rules *)s_rule,
 					 rule_buf_sz, 1,
 					 ice_aqc_opc_remove_sw_rules, NULL);
-		if (!status || status == ICE_ERR_DOES_NOT_EXIST) {
+		if (!status || status == -ENOENT) {
 			struct ice_switch_info *sw = hw->switch_info;
 
 			mutex_lock(rule_lock);
@@ -5216,7 +5216,7 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 
 	sw = hw->switch_info;
 	if (!sw->recp_list[remove_entry->rid].recp_created)
-		return ICE_ERR_PARAM;
+		return -EINVAL;
 	list_head = &sw->recp_list[remove_entry->rid].filt_rules;
 	list_for_each_entry(list_itr, list_head, list_entry) {
 		if (list_itr->rule_info.fltr_rule_id ==
@@ -5228,7 +5228,7 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 		}
 	}
 	/* either list is empty or unable to find rule */
-	return ICE_ERR_DOES_NOT_EXIST;
+	return -ENOENT;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 21ee24e46295..f8ae8dcbb091 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -282,7 +282,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	rule_info.fltr_rule_id = fltr->cookie;
 
 	status = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
-	if (status == ICE_ERR_ALREADY_EXISTS) {
+	if (status == -EEXIST) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because it already exist");
 		ret = -EINVAL;
 		goto exit;
@@ -665,7 +665,7 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	rule_rem.vsi_handle = fltr->dest_id;
 	err = ice_rem_adv_rule_by_id(&pf->hw, &rule_rem);
 	if (err) {
-		if (err == ICE_ERR_DOES_NOT_EXIST) {
+		if (err == -ENOENT) {
 			NL_SET_ERR_MSG_MOD(fltr->extack, "Filter does not exist");
 			return -ENOENT;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 9b7ef5b2a22a..a316d224fdc8 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -7,7 +7,6 @@
 #define ICE_BYTES_PER_WORD	2
 #define ICE_BYTES_PER_DWORD	4
 
-#include "ice_status.h"
 #include "ice_hw_autogen.h"
 #include "ice_osdep.h"
 #include "ice_controlq.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 70765c0fbaca..5db87f7999d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -605,7 +605,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 
 	status = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
 				   tun + 1, &prof);
-	ret = ice_status_to_errno(status);
+	ret = status;
 	if (ret) {
 		dev_dbg(dev, "Could not add VSI flow 0x%x for VF %d\n",
 			flow, vf->vf_id);
@@ -615,7 +615,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
 				    vf_vsi->idx, ICE_FLOW_PRIO_NORMAL,
 				    seg, &entry1_h);
-	ret = ice_status_to_errno(status);
+	ret = status;
 	if (ret) {
 		dev_dbg(dev, "Could not add flow 0x%x VSI entry for VF %d\n",
 			flow, vf->vf_id);
@@ -625,7 +625,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
 				    ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
 				    seg, &entry2_h);
-	ret = ice_status_to_errno(status);
+	ret = status;
 	if (ret) {
 		dev_dbg(dev,
 			"Could not add flow 0x%x Ctrl VSI entry for VF %d\n",
@@ -1230,7 +1230,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 
 	ice_fdir_get_prgm_desc(hw, input, &desc, add);
 	status = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
-	ret = ice_status_to_errno(status);
+	ret = status;
 	if (ret) {
 		dev_dbg(dev, "Gen training pkt for VF %d ptype %d failed\n",
 			vf->vf_id, input->flow_type);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index cd6b5cb2eb50..35be85b2662a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -863,7 +863,7 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 	if (status) {
 		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
 			vf->vf_id, status);
-		return ice_status_to_errno(status);
+		return status;
 	}
 
 	vf->num_mac++;
@@ -875,7 +875,7 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
 				&vf->hw_lan_addr.addr[0], vf->vf_id,
 				status);
-			return ice_status_to_errno(status);
+			return status;
 		}
 		vf->num_mac++;
 
@@ -1240,10 +1240,10 @@ static int ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 pro
 	else
 		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m, 0);
 
-	if (status && status != ICE_ERR_ALREADY_EXISTS) {
+	if (status && status != -EEXIST) {
 		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
 			vf->vf_id, status);
-		return ice_status_to_errno(status);
+		return status;
 	}
 
 	return 0;
@@ -1262,10 +1262,10 @@ static int ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 p
 	else
 		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m, 0);
 
-	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
+	if (status && status != -ENOENT) {
 		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
 			vf->vf_id, status);
-		return ice_status_to_errno(status);
+		return status;
 	}
 
 	return 0;
@@ -1759,7 +1759,7 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	if (status) {
 		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, error %d\n",
 			vf->vf_id, status);
-		err = ice_status_to_errno(status);
+		err = status;
 		goto release_vsi;
 	}
 
@@ -2026,7 +2026,7 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 
 	status = ice_mbx_init_snapshot(&pf->hw, num_vfs);
 	if (status)
-		return ice_status_to_errno(status);
+		return status;
 
 	err = ice_pci_sriov_ena(pf, num_vfs);
 	if (err) {
@@ -2733,12 +2733,12 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 
 			status = ice_rem_rss_cfg(hw, vsi->idx, hash_flds,
 						 addl_hdrs);
-			/* We just ignore ICE_ERR_DOES_NOT_EXIST, because
+			/* We just ignore -ENOENT, because
 			 * if two configurations share the same profile remove
 			 * one of them actually removes both, since the
 			 * profile is deleted.
 			 */
-			if (status && status != ICE_ERR_DOES_NOT_EXIST) {
+			if (status && status != -ENOENT) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				dev_err(dev, "ice_rem_rss_cfg failed for VF ID:%d, error:%d\n",
 					vf->vf_id, status);
@@ -3802,7 +3802,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	}
 
 	status = ice_fltr_add_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
-	if (status == ICE_ERR_ALREADY_EXISTS) {
+	if (status == -EEXIST) {
 		dev_dbg(dev, "MAC %pM already exists for VF %d\n", mac_addr,
 			vf->vf_id);
 		/* don't return since we might need to update
@@ -3896,7 +3896,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 		return 0;
 
 	status = ice_fltr_remove_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
-	if (status == ICE_ERR_DOES_NOT_EXIST) {
+	if (status == -ENOENT) {
 		dev_err(dev, "MAC %pM does not exist for VF %d\n", mac_addr,
 			vf->vf_id);
 		return -ENOENT;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

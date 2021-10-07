Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F7C425FBF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E72F84343;
	Thu,  7 Oct 2021 22:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1T0T1lu6FXr; Thu,  7 Oct 2021 22:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C65884337;
	Thu,  7 Oct 2021 22:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26A461BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 583B640A06
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rM7J-OC7xTHP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 010BF40A07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226331559"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226331559"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327169"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:23 -0700
Message-Id: <20211007220127.70514-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 07 Oct 2021 22:17:22 +0000
Subject: [Intel-wired-lan] [PATCH net-next 3/7] ice: Use int for ice_status
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

To prepare for removal of ice_status, change the variables from
ice_status to int. This eases the transition when values are changed to
return standard int error codes over enum ice_status.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 209 +++++++++--------
 drivers/net/ethernet/intel/ice/ice_common.h   | 102 ++++----
 drivers/net/ethernet/intel/ice/ice_controlq.c |  54 ++---
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  58 ++---
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  26 +--
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  12 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  24 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   4 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  10 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 194 +++++++--------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  16 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |  84 +++----
 drivers/net/ethernet/intel/ice/ice_flow.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  79 +++----
 drivers/net/ethernet/intel/ice/ice_fltr.h     |  34 +--
 .../net/ethernet/intel/ice/ice_fw_update.c    |  14 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  38 +--
 drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  50 ++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  98 ++++----
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  32 +--
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    | 220 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_sched.h    |  36 +--
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  14 +-
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  12 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 208 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  48 ++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   2 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   4 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  28 +--
 37 files changed, 882 insertions(+), 878 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index fdb5e9c47b48..d09c8473e1f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -750,7 +750,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	struct ice_aqc_add_txqs_perq *txq;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u16 pf_q;
 	u8 tc;
 
@@ -914,7 +914,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	struct ice_pf *pf = vsi->back;
 	struct ice_q_vector *q_vector;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u32 val;
 
 	/* clear cause_ena bit for disabled queues */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 64adb4e651c6..5207d46d2559 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -16,7 +16,7 @@
  * This function sets the MAC type of the adapter based on the
  * vendor ID and device ID stored in the HW structure.
  */
-static enum ice_status ice_set_mac_type(struct ice_hw *hw)
+static int ice_set_mac_type(struct ice_hw *hw)
 {
 	if (hw->vendor_id != PCI_VENDOR_ID_INTEL)
 		return ICE_ERR_DEVICE_NOT_SUPPORTED;
@@ -97,7 +97,7 @@ bool ice_is_e810t(struct ice_hw *hw)
  * Clears any existing PF configuration (VSIs, VSI lists, switch rules, port
  * configuration, flow director filters, etc.).
  */
-enum ice_status ice_clear_pf_cfg(struct ice_hw *hw)
+int ice_clear_pf_cfg(struct ice_hw *hw)
 {
 	struct ice_aq_desc desc;
 
@@ -121,14 +121,14 @@ enum ice_status ice_clear_pf_cfg(struct ice_hw *hw)
  * ice_discover_dev_caps is expected to be called before this function is
  * called.
  */
-static enum ice_status
+static int
 ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
 		       struct ice_sq_cd *cd)
 {
 	struct ice_aqc_manage_mac_read_resp *resp;
 	struct ice_aqc_manage_mac_read *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	u16 flags;
 	u8 i;
 
@@ -174,7 +174,7 @@ ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
  *
  * Returns the various PHY capabilities supported on the Port (0x0600)
  */
-enum ice_status
+int
 ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *pcaps,
 		    struct ice_sq_cd *cd)
@@ -182,7 +182,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	struct ice_aqc_get_phy_caps *cmd;
 	u16 pcaps_size = sizeof(*pcaps);
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 
 	cmd = &desc.params.get_phy;
@@ -250,7 +250,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
  * returns error (ENOENT), then no cage present. If no cage present, then
  * connection type is backplane or BASE-T.
  */
-static enum ice_status
+static int
 ice_aq_get_link_topo_handle(struct ice_port_info *pi, u8 node_type,
 			    struct ice_sq_cd *cd)
 {
@@ -416,7 +416,7 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
  *
  * Get Link Status (0x607). Returns the link status of the adapter.
  */
-enum ice_status
+int
 ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 		     struct ice_link_status *link, struct ice_sq_cd *cd)
 {
@@ -427,7 +427,7 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	struct ice_fc_info *hw_fc_info;
 	bool tx_pause, rx_pause;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 	u16 cmd_flags;
 
@@ -554,7 +554,7 @@ ice_fill_tx_timer_and_fc_thresh(struct ice_hw *hw,
  *
  * Set MAC configuration (0x0603)
  */
-enum ice_status
+int
 ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_mac_cfg *cmd;
@@ -578,10 +578,10 @@ ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd)
  * ice_init_fltr_mgmt_struct - initializes filter management list and locks
  * @hw: pointer to the HW struct
  */
-static enum ice_status ice_init_fltr_mgmt_struct(struct ice_hw *hw)
+static int ice_init_fltr_mgmt_struct(struct ice_hw *hw)
 {
 	struct ice_switch_info *sw;
-	enum ice_status status;
+	int status;
 
 	hw->switch_info = devm_kzalloc(ice_hw_to_dev(hw),
 				       sizeof(*hw->switch_info), GFP_KERNEL);
@@ -664,10 +664,10 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
  * ice_get_fw_log_cfg - get FW logging configuration
  * @hw: pointer to the HW struct
  */
-static enum ice_status ice_get_fw_log_cfg(struct ice_hw *hw)
+static int ice_get_fw_log_cfg(struct ice_hw *hw)
 {
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	__le16 *config;
 	u16 size;
 
@@ -736,10 +736,10 @@ static enum ice_status ice_get_fw_log_cfg(struct ice_hw *hw)
  * messages from FW to SW. Interrupts are typically disabled during the device's
  * initialization phase.
  */
-static enum ice_status ice_cfg_fw_log(struct ice_hw *hw, bool enable)
+static int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
 {
 	struct ice_aqc_fw_logging *cmd;
-	enum ice_status status = 0;
+	int status = 0;
 	u16 i, chgs = 0, len = 0;
 	struct ice_aq_desc desc;
 	__le16 *data = NULL;
@@ -902,10 +902,10 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
  */
-enum ice_status ice_init_hw(struct ice_hw *hw)
+int ice_init_hw(struct ice_hw *hw)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	enum ice_status status;
+	int status;
 	u16 mac_buf_len;
 	void *mac_buf;
 
@@ -1094,7 +1094,7 @@ void ice_deinit_hw(struct ice_hw *hw)
  * ice_check_reset - Check to see if a global reset is complete
  * @hw: pointer to the hardware structure
  */
-enum ice_status ice_check_reset(struct ice_hw *hw)
+int ice_check_reset(struct ice_hw *hw)
 {
 	u32 cnt, reg = 0, grst_timeout, uld_mask;
 
@@ -1154,7 +1154,7 @@ enum ice_status ice_check_reset(struct ice_hw *hw)
  * If a global reset has been triggered, this function checks
  * for its completion and then issues the PF reset
  */
-static enum ice_status ice_pf_reset(struct ice_hw *hw)
+static int ice_pf_reset(struct ice_hw *hw)
 {
 	u32 cnt, reg;
 
@@ -1210,7 +1210,7 @@ static enum ice_status ice_pf_reset(struct ice_hw *hw)
  * This has to be cleared using ice_clear_pxe_mode again, once the AQ
  * interface has been restored in the rebuild flow.
  */
-enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req)
+int ice_reset(struct ice_hw *hw, enum ice_reset_req req)
 {
 	u32 val = 0;
 
@@ -1245,7 +1245,7 @@ enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req)
  *
  * Copies rxq context from dense structure to HW register space
  */
-static enum ice_status
+static int
 ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
 {
 	u8 i;
@@ -1304,7 +1304,7 @@ static const struct ice_ctx_ele ice_rlan_ctx_info[] = {
  * it to HW register space and enables the hardware to prefetch descriptors
  * instead of only fetching them on demand
  */
-enum ice_status
+int
 ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index)
 {
@@ -1451,13 +1451,13 @@ static bool ice_should_retry_sq_send_cmd(u16 opcode)
  * Retry sending the FW Admin Queue command, multiple times, to the FW Admin
  * Queue if the EBUSY AQ error is returned.
  */
-static enum ice_status
+static int
 ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		      struct ice_aq_desc *desc, void *buf, u16 buf_size,
 		      struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc_cpy;
-	enum ice_status status;
+	int status;
 	bool is_cmd_for_retry;
 	u8 *buf_cpy = NULL;
 	u8 idx = 0;
@@ -1508,13 +1508,13 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
  *
  * Helper function to send FW Admin Queue commands to the FW Admin Queue.
  */
-enum ice_status
+int
 ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 		u16 buf_size, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_req_res *cmd = &desc->params.res_owner;
 	bool lock_acquired = false;
-	enum ice_status status;
+	int status;
 
 	/* When a package download is in process (i.e. when the firmware's
 	 * Global Configuration Lock resource is held), only the Download
@@ -1553,11 +1553,11 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
  *
  * Get the firmware version (0x0001) from the admin queue commands
  */
-enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd)
+int ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_get_ver *resp;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	resp = &desc.params.get_ver;
 
@@ -1588,7 +1588,7 @@ enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd)
  *
  * Send the driver version (0x0002) to the firmware
  */
-enum ice_status
+int
 ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 		       struct ice_sq_cd *cd)
 {
@@ -1625,7 +1625,7 @@ ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
  * Tell the Firmware that we're shutting down the AdminQ and whether
  * or not the driver is unloading as well (0x0003).
  */
-enum ice_status ice_aq_q_shutdown(struct ice_hw *hw, bool unloading)
+int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading)
 {
 	struct ice_aqc_q_shutdown *cmd;
 	struct ice_aq_desc desc;
@@ -1666,14 +1666,14 @@ enum ice_status ice_aq_q_shutdown(struct ice_hw *hw, bool unloading)
  * will likely get an error propagated back to it indicating the Download
  * Package, Update Package or the Release Resource AQ commands timed out.
  */
-static enum ice_status
+static int
 ice_aq_req_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 	       enum ice_aq_res_access_type access, u8 sdp_number, u32 *timeout,
 	       struct ice_sq_cd *cd)
 {
 	struct ice_aqc_req_res *cmd_resp;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd_resp = &desc.params.res_owner;
 
@@ -1735,7 +1735,7 @@ ice_aq_req_res(struct ice_hw *hw, enum ice_aq_res_ids res,
  *
  * release common resource using the admin queue commands (0x0009)
  */
-static enum ice_status
+static int
 ice_aq_release_res(struct ice_hw *hw, enum ice_aq_res_ids res, u8 sdp_number,
 		   struct ice_sq_cd *cd)
 {
@@ -1761,14 +1761,14 @@ ice_aq_release_res(struct ice_hw *hw, enum ice_aq_res_ids res, u8 sdp_number,
  *
  * This function will attempt to acquire the ownership of a resource.
  */
-enum ice_status
+int
 ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 		enum ice_aq_res_access_type access, u32 timeout)
 {
 #define ICE_RES_POLLING_DELAY_MS	10
 	u32 delay = ICE_RES_POLLING_DELAY_MS;
 	u32 time_left = timeout;
-	enum ice_status status;
+	int status;
 
 	status = ice_aq_req_res(hw, res, access, 0, &time_left, NULL);
 
@@ -1820,7 +1820,7 @@ ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
  */
 void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
 {
-	enum ice_status status;
+	int status;
 	u32 total_delay = 0;
 
 	status = ice_aq_release_res(hw, res, 0, NULL);
@@ -1847,7 +1847,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
  *
  * Helper function to allocate/free resources using the admin queue commands
  */
-enum ice_status
+int
 ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
 		      struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
 		      enum ice_adminq_opc opc, struct ice_sq_cd *cd)
@@ -1880,11 +1880,11 @@ ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
  * @btm: allocate from bottom
  * @res: pointer to array that will receive the resources
  */
-enum ice_status
+int
 ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	enum ice_status status;
+	int status;
 	u16 buf_len;
 
 	buf_len = struct_size(buf, elem, num);
@@ -1918,10 +1918,10 @@ ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
  * @num: number of resources
  * @res: pointer to array that contains the resources to free
  */
-enum ice_status ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
+int ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	enum ice_status status;
+	int status;
 	u16 buf_len;
 
 	buf_len = struct_size(buf, elem, num);
@@ -2496,13 +2496,13 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  * buffer size be set to ICE_AQ_MAX_BUF_LEN (the largest possible buffer that
  * firmware could return) to avoid this.
  */
-enum ice_status
+int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_list_caps *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.get_cap;
 
@@ -2527,10 +2527,10 @@ ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
  * Read the device capabilities and extract them into the dev_caps structure
  * for later use.
  */
-enum ice_status
+int
 ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
 {
-	enum ice_status status;
+	int status;
 	u32 cap_count = 0;
 	void *cbuf;
 
@@ -2561,10 +2561,10 @@ ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
  * Read the function capabilities and extract them into the func_caps structure
  * for later use.
  */
-static enum ice_status
+static int
 ice_discover_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_caps)
 {
-	enum ice_status status;
+	int status;
 	u32 cap_count = 0;
 	void *cbuf;
 
@@ -2660,9 +2660,9 @@ void ice_set_safe_mode_caps(struct ice_hw *hw)
  * ice_get_caps - get info about the HW
  * @hw: pointer to the hardware structure
  */
-enum ice_status ice_get_caps(struct ice_hw *hw)
+int ice_get_caps(struct ice_hw *hw)
 {
-	enum ice_status status;
+	int status;
 
 	status = ice_discover_dev_caps(hw, &hw->dev_caps);
 	if (status)
@@ -2680,7 +2680,7 @@ enum ice_status ice_get_caps(struct ice_hw *hw)
  *
  * This function is used to write MAC address to the NVM (0x0108).
  */
-enum ice_status
+int
 ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd)
 {
@@ -2702,7 +2702,7 @@ ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
  *
  * Tell the firmware that the driver is taking over from PXE (0x0110).
  */
-static enum ice_status ice_aq_clear_pxe_mode(struct ice_hw *hw)
+static int ice_aq_clear_pxe_mode(struct ice_hw *hw)
 {
 	struct ice_aq_desc desc;
 
@@ -2913,12 +2913,12 @@ ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
  * mode as the PF may not have the privilege to set some of the PHY Config
  * parameters. This status will be indicated by the command response (0x0601).
  */
-enum ice_status
+int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (!cfg)
 		return ICE_ERR_PARAM;
@@ -2962,10 +2962,10 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
  * ice_update_link_info - update status of the HW network link
  * @pi: port info structure of the interested logical port
  */
-enum ice_status ice_update_link_info(struct ice_port_info *pi)
+int ice_update_link_info(struct ice_port_info *pi)
 {
 	struct ice_link_status *li;
-	enum ice_status status;
+	int status;
 
 	if (!pi)
 		return ICE_ERR_PARAM;
@@ -3080,7 +3080,7 @@ enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options)
  * @cfg: PHY configuration data to set FC mode
  * @req_mode: FC mode to configure
  */
-enum ice_status
+int
 ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 	       enum ice_fc_mode req_mode)
 {
@@ -3127,12 +3127,12 @@ ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
  *
  * Set the requested flow control mode.
  */
-enum ice_status
+int
 ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 {
 	struct ice_aqc_set_phy_cfg_data cfg = { 0 };
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 
 	if (!pi || !aq_failures)
@@ -3268,12 +3268,12 @@ ice_copy_phy_caps_to_cfg(struct ice_port_info *pi,
  * @cfg: PHY configuration data to set FEC mode
  * @fec: FEC mode to configure
  */
-enum ice_status
+int
 ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		enum ice_fec_mode fec)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 
 	if (!pi || !cfg)
@@ -3354,10 +3354,10 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
  * The variable link_up is invalid if status is non zero. As a
  * result of this call, link status reporting becomes enabled
  */
-enum ice_status ice_get_link_status(struct ice_port_info *pi, bool *link_up)
+int ice_get_link_status(struct ice_port_info *pi, bool *link_up)
 {
 	struct ice_phy_info *phy_info;
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (!pi || !link_up)
 		return ICE_ERR_PARAM;
@@ -3385,7 +3385,7 @@ enum ice_status ice_get_link_status(struct ice_port_info *pi, bool *link_up)
  *
  * Sets up the link and restarts the Auto-Negotiation over the link.
  */
-enum ice_status
+int
 ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
 			   struct ice_sq_cd *cd)
 {
@@ -3415,7 +3415,7 @@ ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
  *
  * Set event mask (0x0613)
  */
-enum ice_status
+int
 ice_aq_set_event_mask(struct ice_hw *hw, u8 port_num, u16 mask,
 		      struct ice_sq_cd *cd)
 {
@@ -3440,7 +3440,7 @@ ice_aq_set_event_mask(struct ice_hw *hw, u8 port_num, u16 mask,
  *
  * Enable/disable loopback on a given port
  */
-enum ice_status
+int
 ice_aq_set_mac_loopback(struct ice_hw *hw, bool ena_lpbk, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_mac_lb *cmd;
@@ -3463,7 +3463,7 @@ ice_aq_set_mac_loopback(struct ice_hw *hw, bool ena_lpbk, struct ice_sq_cd *cd)
  *
  * Set LED value for the given port (0x06e9)
  */
-enum ice_status
+int
 ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 		       struct ice_sq_cd *cd)
 {
@@ -3498,14 +3498,14 @@ ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
  *
  * Read/Write SFF EEPROM (0x06EE)
  */
-enum ice_status
+int
 ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
 		  bool write, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_sff_eeprom *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (!data || (mem_addr & 0xff00))
 		return ICE_ERR_PARAM;
@@ -3537,13 +3537,13 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
  *
  * Internal function to get (0x0B05) or set (0x0B03) RSS look up table
  */
-static enum ice_status
+static int
 __ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *params, bool set)
 {
 	u16 flags = 0, vsi_id, lut_type, lut_size, glob_lut_idx, vsi_handle;
 	struct ice_aqc_get_set_rss_lut *cmd_resp;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	u8 *lut;
 
 	if (!params)
@@ -3636,7 +3636,7 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params
  *
  * get the RSS lookup table, PF or VSI type
  */
-enum ice_status
+int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params)
 {
 	return __ice_aq_get_set_rss_lut(hw, get_params, false);
@@ -3649,7 +3649,7 @@ ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_
  *
  * set the RSS lookup table, PF or VSI type
  */
-enum ice_status
+int
 ice_aq_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *set_params)
 {
 	return __ice_aq_get_set_rss_lut(hw, set_params, true);
@@ -3664,8 +3664,7 @@ ice_aq_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *set_
  *
  * get (0x0B04) or set (0x0B02) the RSS key per VSI
  */
-static enum
-ice_status __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
+static int __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
 				    struct ice_aqc_get_set_rss_keys *key,
 				    bool set)
 {
@@ -3698,7 +3697,7 @@ ice_status __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
  *
  * get the RSS key per VSI
  */
-enum ice_status
+int
 ice_aq_get_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *key)
 {
@@ -3717,7 +3716,7 @@ ice_aq_get_rss_key(struct ice_hw *hw, u16 vsi_handle,
  *
  * set the RSS key per VSI
  */
-enum ice_status
+int
 ice_aq_set_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *keys)
 {
@@ -3749,7 +3748,7 @@ ice_aq_set_rss_key(struct ice_hw *hw, u16 vsi_handle,
  * Association of Tx queue to Doorbell queue is not part of Add LAN Tx queue
  * flow.
  */
-static enum ice_status
+static int
 ice_aq_add_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 		   struct ice_aqc_add_tx_qgrp *qg_list, u16 buf_size,
 		   struct ice_sq_cd *cd)
@@ -3797,7 +3796,7 @@ ice_aq_add_lan_txq(struct ice_hw *hw, u8 num_qgrps,
  *
  * Disable LAN Tx queue (0x0C31)
  */
-static enum ice_status
+static int
 ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 		   struct ice_aqc_dis_txq_item *qg_list, u16 buf_size,
 		   enum ice_disq_rst_src rst_src, u16 vmvf_num,
@@ -3806,7 +3805,7 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	struct ice_aqc_dis_txq_item *item;
 	struct ice_aqc_dis_txqs *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	u16 i, sz = 0;
 
 	cmd = &desc.params.dis_txqs;
@@ -4121,7 +4120,7 @@ ice_write_qword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
  * @dest_ctx: pointer to memory for the packed structure
  * @ce_info:  a description of the structure to be transformed
  */
-enum ice_status
+int
 ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 	    const struct ice_ctx_ele *ce_info)
 {
@@ -4195,7 +4194,7 @@ ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle)
  *
  * This function adds one LAN queue
  */
-enum ice_status
+int
 ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 		u8 num_qgrps, struct ice_aqc_add_tx_qgrp *buf, u16 buf_size,
 		struct ice_sq_cd *cd)
@@ -4203,7 +4202,7 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 	struct ice_aqc_txsched_elem_data node = { 0 };
 	struct ice_sched_node *parent;
 	struct ice_q_ctx *q_ctx;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
@@ -4300,13 +4299,13 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
  *
  * This function removes queues and their corresponding nodes in SW DB
  */
-enum ice_status
+int
 ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		u16 *q_handles, u16 *q_ids, u32 *q_teids,
 		enum ice_disq_rst_src rst_src, u16 vmvf_num,
 		struct ice_sq_cd *cd)
 {
-	enum ice_status status = ICE_ERR_DOES_NOT_EXIST;
+	int status = ICE_ERR_DOES_NOT_EXIST;
 	struct ice_aqc_dis_txq_item *qg_list;
 	struct ice_q_ctx *q_ctx;
 	struct ice_hw *hw;
@@ -4378,11 +4377,11 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
  *
  * This function adds/updates the VSI queues per TC.
  */
-static enum ice_status
+static int
 ice_cfg_vsi_qs(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
 	       u16 *maxqs, u8 owner)
 {
-	enum ice_status status = 0;
+	int status = 0;
 	u8 i;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
@@ -4417,7 +4416,7 @@ ice_cfg_vsi_qs(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
  *
  * This function adds/updates the VSI LAN queues per TC.
  */
-enum ice_status
+int
 ice_cfg_vsi_lan(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
 		u16 *max_lanqs)
 {
@@ -4461,7 +4460,7 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	struct ice_aqc_txsched_elem_data node = { 0 };
 	struct ice_aqc_add_rdma_qset_data *buf;
 	struct ice_sched_node *parent;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 	u16 i, buf_size;
 	int ret;
@@ -4538,7 +4537,7 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 		      u16 *q_id)
 {
 	struct ice_aqc_dis_txq_item *qg_list;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw;
 	u16 qg_size;
 	int i;
@@ -4587,7 +4586,7 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
  *
  * Initializes required config data for VSI, FD, ACL, and RSS before replay.
  */
-static enum ice_status ice_replay_pre_init(struct ice_hw *hw)
+static int ice_replay_pre_init(struct ice_hw *hw)
 {
 	struct ice_switch_info *sw = hw->switch_info;
 	u8 i;
@@ -4614,9 +4613,9 @@ static enum ice_status ice_replay_pre_init(struct ice_hw *hw)
  * Restore all VSI configuration after reset. It is required to call this
  * function with main VSI first.
  */
-enum ice_status ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle)
+int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle)
 {
-	enum ice_status status;
+	int status;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return ICE_ERR_PARAM;
@@ -4735,12 +4734,12 @@ ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
  *
  * This function queries HW element information
  */
-enum ice_status
+int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf)
 {
 	u16 buf_size, num_elem_ret = 0;
-	enum ice_status status;
+	int status;
 
 	buf_size = sizeof(*buf);
 	memset(buf, 0, buf_size);
@@ -4767,14 +4766,14 @@ ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
  *
  * Read I2C (0x06E2)
  */
-enum ice_status
+int
 ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		u16 bus_addr, __le16 addr, u8 params, u8 *data,
 		struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc = { 0 };
 	struct ice_aqc_i2c *cmd;
-	enum ice_status status;
+	int status;
 	u8 data_size;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_read_i2c);
@@ -4860,7 +4859,7 @@ ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 {
 	struct ice_aqc_driver_shared_params *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (idx >= ICE_AQC_DRIVER_PARAM_MAX)
 		return -EIO;
@@ -4891,7 +4890,7 @@ ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
  *
  * Sends 0x06EC AQ command to set the GPIO pin state that's part of the topology
  */
-enum ice_status
+int
 ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
 		struct ice_sq_cd *cd)
 {
@@ -4918,13 +4917,13 @@ ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
  * Sends 0x06ED AQ command to get the value of a GPIO signal which is part of
  * the topology
  */
-enum ice_status
+int
 ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 		bool *value, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_gpio *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_gpio);
 	cmd = &desc.params.read_write_gpio;
@@ -4967,13 +4966,13 @@ bool ice_fw_supports_link_override(struct ice_hw *hw)
  *
  * Gets the link default override for a port
  */
-enum ice_status
+int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi)
 {
 	u16 i, tlv, tlv_len, tlv_start, buf, offset;
 	struct ice_hw *hw = pi->hw;
-	enum ice_status status;
+	int status;
 
 	status = ice_get_pfa_module_tlv(hw, &tlv, &tlv_len,
 					ICE_SR_LINK_DEFAULT_OVERRIDE_PTR);
@@ -5058,7 +5057,7 @@ bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps)
  *
  * Set the LLDP MIB. (0x0A08)
  */
-enum ice_status
+int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd)
 {
@@ -5108,7 +5107,7 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
  * @vsi_num: absolute HW index for VSI
  * @add: boolean for if adding or removing a filter
  */
-enum ice_status
+int
 ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
 {
 	struct ice_aqc_lldp_filter_ctrl *cmd;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 146cd5f6674f..1c3f703573ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -14,108 +14,108 @@
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
-enum ice_status ice_init_hw(struct ice_hw *hw);
+int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
-enum ice_status ice_check_reset(struct ice_hw *hw);
-enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req);
-enum ice_status ice_create_all_ctrlq(struct ice_hw *hw);
-enum ice_status ice_init_all_ctrlq(struct ice_hw *hw);
+int ice_check_reset(struct ice_hw *hw);
+int ice_reset(struct ice_hw *hw, enum ice_reset_req req);
+int ice_create_all_ctrlq(struct ice_hw *hw);
+int ice_init_all_ctrlq(struct ice_hw *hw);
 void ice_shutdown_all_ctrlq(struct ice_hw *hw);
 void ice_destroy_all_ctrlq(struct ice_hw *hw);
-enum ice_status
+int
 ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		  struct ice_rq_event_info *e, u16 *pending);
-enum ice_status
+int
 ice_get_link_status(struct ice_port_info *pi, bool *link_up);
-enum ice_status ice_update_link_info(struct ice_port_info *pi);
-enum ice_status
+int ice_update_link_info(struct ice_port_info *pi);
+int
 ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 		enum ice_aq_res_access_type access, u32 timeout);
 void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res);
-enum ice_status
+int
 ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res);
-enum ice_status
+int
 ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res);
-enum ice_status
+int
 ice_aq_alloc_free_res(struct ice_hw *hw, u16 num_entries,
 		      struct ice_aqc_alloc_free_res_elem *buf, u16 buf_size,
 		      enum ice_adminq_opc opc, struct ice_sq_cd *cd);
 bool ice_is_sbq_supported(struct ice_hw *hw);
 struct ice_ctl_q_info *ice_get_sbq(struct ice_hw *hw);
-enum ice_status
+int
 ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		struct ice_aq_desc *desc, void *buf, u16 buf_size,
 		struct ice_sq_cd *cd);
 void ice_clear_pxe_mode(struct ice_hw *hw);
-enum ice_status ice_get_caps(struct ice_hw *hw);
+int ice_get_caps(struct ice_hw *hw);
 
 void ice_set_safe_mode_caps(struct ice_hw *hw);
 
-enum ice_status
+int
 ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index);
 
-enum ice_status
+int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
-enum ice_status
+int
 ice_aq_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *set_params);
-enum ice_status
+int
 ice_aq_get_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *keys);
-enum ice_status
+int
 ice_aq_set_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *keys);
 
 bool ice_check_sq_alive(struct ice_hw *hw, struct ice_ctl_q_info *cq);
-enum ice_status ice_aq_q_shutdown(struct ice_hw *hw, bool unloading);
+int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading);
 void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode);
 extern const struct ice_ctx_ele ice_tlan_ctx_info[];
-enum ice_status
+int
 ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 	    const struct ice_ctx_ele *ce_info);
 
 extern struct mutex ice_global_cfg_lock_sw;
 
-enum ice_status
+int
 ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc,
 		void *buf, u16 buf_size, struct ice_sq_cd *cd);
-enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd);
+int ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd);
 
-enum ice_status
+int
 ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 		       struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps);
 void
 ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
 		    u16 link_speeds_bitmap);
-enum ice_status
+int
 ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd);
 bool ice_is_e810(struct ice_hw *hw);
-enum ice_status ice_clear_pf_cfg(struct ice_hw *hw);
-enum ice_status
+int ice_clear_pf_cfg(struct ice_hw *hw);
+int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd);
 bool ice_fw_supports_link_override(struct ice_hw *hw);
-enum ice_status
+int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
 bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps);
 
 enum ice_fc_mode ice_caps_to_fc_mode(u8 caps);
 enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options);
-enum ice_status
+int
 ice_set_fc(struct ice_port_info *pi, u8 *aq_failures,
 	   bool ena_auto_link_update);
-enum ice_status
+int
 ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 	       enum ice_fc_mode fc);
 bool
@@ -125,27 +125,27 @@ void
 ice_copy_phy_caps_to_cfg(struct ice_port_info *pi,
 			 struct ice_aqc_get_phy_caps_data *caps,
 			 struct ice_aqc_set_phy_cfg_data *cfg);
-enum ice_status
+int
 ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		enum ice_fec_mode fec);
-enum ice_status
+int
 ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
 			   struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 		     struct ice_link_status *link, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_set_event_mask(struct ice_hw *hw, u8 port_num, u16 mask,
 		      struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_set_mac_loopback(struct ice_hw *hw, bool ena_lpbk, struct ice_sq_cd *cd);
 
-enum ice_status
+int
 ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 		       struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
 		  bool write, struct ice_sq_cd *cd);
@@ -159,19 +159,19 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 int
 ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 		      u16 *q_id);
-enum ice_status
+int
 ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		u16 *q_handle, u16 *q_ids, u32 *q_teids,
 		enum ice_disq_rst_src rst_src, u16 vmvf_num,
 		struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_cfg_vsi_lan(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
 		u16 *max_lanqs);
-enum ice_status
+int
 ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 		u8 num_qgrps, struct ice_aqc_add_tx_qgrp *buf, u16 buf_size,
 		struct ice_sq_cd *cd);
-enum ice_status ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
+int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
 void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf);
 struct ice_q_ctx *
@@ -184,7 +184,7 @@ void
 ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
 bool ice_is_e810t(struct ice_hw *hw);
-enum ice_status
+int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
 int
@@ -193,19 +193,19 @@ ice_aq_set_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 int
 ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
 			u32 *value, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
 		struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 		bool *value, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
 bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
-enum ice_status
+int
 ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add);
-enum ice_status
+int
 ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		u16 bus_addr, __le16 addr, u8 params, u8 *data,
 		struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 03bdb125be36..005b47f534fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -87,7 +87,7 @@ bool ice_check_sq_alive(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  */
-static enum ice_status
+static int
 ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	size_t size = cq->num_sq_entries * sizeof(struct ice_aq_desc);
@@ -118,7 +118,7 @@ ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  */
-static enum ice_status
+static int
 ice_alloc_ctrlq_rq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	size_t size = cq->num_rq_entries * sizeof(struct ice_aq_desc);
@@ -154,7 +154,7 @@ static void ice_free_cq_ring(struct ice_hw *hw, struct ice_ctl_q_ring *ring)
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  */
-static enum ice_status
+static int
 ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	int i;
@@ -226,7 +226,7 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  */
-static enum ice_status
+static int
 ice_alloc_sq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	int i;
@@ -269,7 +269,7 @@ ice_alloc_sq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	return ICE_ERR_NO_MEMORY;
 }
 
-static enum ice_status
+static int
 ice_cfg_cq_regs(struct ice_hw *hw, struct ice_ctl_q_ring *ring, u16 num_entries)
 {
 	/* Clear Head and Tail */
@@ -295,7 +295,7 @@ ice_cfg_cq_regs(struct ice_hw *hw, struct ice_ctl_q_ring *ring, u16 num_entries)
  *
  * Configure base address and length registers for the transmit queue
  */
-static enum ice_status
+static int
 ice_cfg_sq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	return ice_cfg_cq_regs(hw, &cq->sq, cq->num_sq_entries);
@@ -308,10 +308,10 @@ ice_cfg_sq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  *
  * Configure base address and length registers for the receive (event queue)
  */
-static enum ice_status
+static int
 ice_cfg_rq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	enum ice_status status;
+	int status;
 
 	status = ice_cfg_cq_regs(hw, &cq->rq, cq->num_rq_entries);
 	if (status)
@@ -361,9 +361,9 @@ do {									\
  * Do *NOT* hold the lock when calling this as the memory allocation routines
  * called are not going to be atomic context safe
  */
-static enum ice_status ice_init_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
+static int ice_init_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	enum ice_status ret_code;
+	int ret_code;
 
 	if (cq->sq.count > 0) {
 		/* queue already initialized */
@@ -421,9 +421,9 @@ static enum ice_status ice_init_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * Do *NOT* hold the lock when calling this as the memory allocation routines
  * called are not going to be atomic context safe
  */
-static enum ice_status ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
+static int ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	enum ice_status ret_code;
+	int ret_code;
 
 	if (cq->rq.count > 0) {
 		/* queue already initialized */
@@ -474,10 +474,10 @@ static enum ice_status ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  *
  * The main shutdown routine for the Control Transmit Queue
  */
-static enum ice_status
+static int
 ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	enum ice_status ret_code = 0;
+	int ret_code = 0;
 
 	mutex_lock(&cq->sq_lock);
 
@@ -541,10 +541,10 @@ static bool ice_aq_ver_check(struct ice_hw *hw)
  *
  * The main shutdown routine for the Control Receive Queue
  */
-static enum ice_status
+static int
 ice_shutdown_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	enum ice_status ret_code = 0;
+	int ret_code = 0;
 
 	mutex_lock(&cq->rq_lock);
 
@@ -576,10 +576,10 @@ ice_shutdown_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * ice_init_check_adminq - Check version for Admin Queue to know if its alive
  * @hw: pointer to the hardware structure
  */
-static enum ice_status ice_init_check_adminq(struct ice_hw *hw)
+static int ice_init_check_adminq(struct ice_hw *hw)
 {
 	struct ice_ctl_q_info *cq = &hw->adminq;
-	enum ice_status status;
+	int status;
 
 	status = ice_aq_get_fw_ver(hw, NULL);
 	if (status)
@@ -612,10 +612,10 @@ static enum ice_status ice_init_check_adminq(struct ice_hw *hw)
  *
  * NOTE: this function does not initialize the controlq locks
  */
-static enum ice_status ice_init_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
+static int ice_init_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
 {
 	struct ice_ctl_q_info *cq;
-	enum ice_status ret_code;
+	int ret_code;
 
 	switch (q_type) {
 	case ICE_CTL_Q_ADMIN:
@@ -751,9 +751,9 @@ void ice_shutdown_all_ctrlq(struct ice_hw *hw)
  *
  * NOTE: this function does not initialize the controlq locks.
  */
-enum ice_status ice_init_all_ctrlq(struct ice_hw *hw)
+int ice_init_all_ctrlq(struct ice_hw *hw)
 {
-	enum ice_status status;
+	int status;
 	u32 retry = 0;
 
 	/* Init FW admin queue */
@@ -814,7 +814,7 @@ static void ice_init_ctrlq_locks(struct ice_ctl_q_info *cq)
  * driver needs to re-initialize control queues at run time it should call
  * ice_init_all_ctrlq instead.
  */
-enum ice_status ice_create_all_ctrlq(struct ice_hw *hw)
+int ice_create_all_ctrlq(struct ice_hw *hw)
 {
 	ice_init_ctrlq_locks(&hw->adminq);
 	if (ice_is_sbq_supported(hw))
@@ -962,7 +962,7 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * This is the main send command routine for the ATQ. It runs the queue,
  * cleans the queue, etc.
  */
-enum ice_status
+int
 ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		struct ice_aq_desc *desc, void *buf, u16 buf_size,
 		struct ice_sq_cd *cd)
@@ -970,7 +970,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	struct ice_dma_mem *dma_buf = NULL;
 	struct ice_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_sq_cd *details;
 	u32 total_delay = 0;
 	u16 retval = 0;
@@ -1154,13 +1154,13 @@ void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode)
  * the contents through e. It can also return how many events are
  * left to process through 'pending'.
  */
-enum ice_status
+int
 ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		  struct ice_rq_event_info *e, u16 *pending)
 {
 	u16 ntc = cq->rq.next_to_clean;
 	enum ice_aq_err rq_last_status;
-	enum ice_status ret_code = 0;
+	int ret_code = 0;
 	struct ice_aq_desc *desc;
 	struct ice_dma_mem *bi;
 	u16 desc_idx;
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 241427cd9bc0..3ed85405ea53 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -19,14 +19,14 @@
  *
  * Requests the complete LLDP MIB (entire packet). (0x0A00)
  */
-static enum ice_status
+static int
 ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
 		    u16 buf_size, u16 *local_len, u16 *remote_len,
 		    struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_get_mib *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.lldp_get_mib;
 
@@ -61,7 +61,7 @@ ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
  * Enable or Disable posting of an event on ARQ when LLDP MIB
  * associated with the interface changes (0x0A01)
  */
-static enum ice_status
+static int
 ice_aq_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_update,
 			   struct ice_sq_cd *cd)
 {
@@ -89,7 +89,7 @@ ice_aq_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_update,
  *
  * Stop or Shutdown the embedded LLDP Agent (0x0A05)
  */
-enum ice_status
+int
 ice_aq_stop_lldp(struct ice_hw *hw, bool shutdown_lldp_agent, bool persist,
 		 struct ice_sq_cd *cd)
 {
@@ -117,7 +117,7 @@ ice_aq_stop_lldp(struct ice_hw *hw, bool shutdown_lldp_agent, bool persist,
  *
  * Start the embedded LLDP Agent on all ports. (0x0A06)
  */
-enum ice_status
+int
 ice_aq_start_lldp(struct ice_hw *hw, bool persist, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_start *cmd;
@@ -598,11 +598,11 @@ ice_parse_org_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
  *
  * Parse DCB configuration from the LLDPDU
  */
-static enum ice_status
+static int
 ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
 {
 	struct ice_lldp_org_tlv *tlv;
-	enum ice_status ret = 0;
+	int ret = 0;
 	u16 offset = 0;
 	u16 typelen;
 	u16 type;
@@ -649,11 +649,11 @@ ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
  *
  * Query DCB configuration from the firmware
  */
-enum ice_status
+int
 ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 		   struct ice_dcbx_cfg *dcbcfg)
 {
-	enum ice_status ret;
+	int ret;
 	u8 *lldpmib;
 
 	/* Allocate the LLDPDU */
@@ -687,12 +687,12 @@ ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
  * returns ICE_SUCCESS, caller will need to check if FW returns back the same
  * value as stated in dcbx_agent_status, and react accordingly. (0x0A09)
  */
-enum ice_status
+int
 ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
 		       bool *dcbx_agent_status, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_stop_start_specific_agent *cmd;
-	enum ice_status status;
+	int status;
 	struct ice_aq_desc desc;
 	u16 opcode;
 
@@ -724,7 +724,7 @@ ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
  *
  * Get CEE DCBX mode operational configuration from firmware (0x0A07)
  */
-static enum ice_status
+static int
 ice_aq_get_cee_dcb_cfg(struct ice_hw *hw,
 		       struct ice_aqc_get_cee_dcb_cfg_resp *buff,
 		       struct ice_sq_cd *cd)
@@ -749,7 +749,7 @@ int ice_aq_set_pfc_mode(struct ice_hw *hw, u8 pfc_mode, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_query_pfc_mode *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (pfc_mode > ICE_AQC_PFC_DSCP_BASED_PFC)
 		return -EINVAL;
@@ -903,11 +903,11 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
  *
  * Get IEEE or CEE mode DCB configuration from the Firmware
  */
-static enum ice_status
+static int
 ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
 {
 	struct ice_dcbx_cfg *dcbx_cfg = NULL;
-	enum ice_status ret;
+	int ret;
 
 	if (!pi)
 		return ICE_ERR_PARAM;
@@ -943,11 +943,11 @@ ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
  *
  * Get DCB configuration from the Firmware
  */
-enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
+int ice_get_dcb_cfg(struct ice_port_info *pi)
 {
 	struct ice_aqc_get_cee_dcb_cfg_resp cee_cfg;
 	struct ice_dcbx_cfg *dcbx_cfg;
-	enum ice_status ret;
+	int ret;
 
 	if (!pi)
 		return ICE_ERR_PARAM;
@@ -974,10 +974,10 @@ enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
  *
  * Update DCB configuration from the Firmware
  */
-enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
+int ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
 {
 	struct ice_qos_cfg *qos_cfg = &hw->port_info->qos_cfg;
-	enum ice_status ret = 0;
+	int ret = 0;
 
 	if (!hw->func_caps.common_cap.dcb)
 		return ICE_ERR_NOT_SUPPORTED;
@@ -1016,10 +1016,10 @@ enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
  *
  * Configure (disable/enable) MIB
  */
-enum ice_status ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib)
+int ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib)
 {
 	struct ice_qos_cfg *qos_cfg = &hw->port_info->qos_cfg;
-	enum ice_status ret;
+	int ret;
 
 	if (!hw->func_caps.common_cap.dcb)
 		return ICE_ERR_NOT_SUPPORTED;
@@ -1469,11 +1469,11 @@ ice_dcb_cfg_to_lldp(u8 *lldpmib, u16 *miblen, struct ice_dcbx_cfg *dcbcfg)
  *
  * Set DCB configuration to the Firmware
  */
-enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi)
+int ice_set_dcb_cfg(struct ice_port_info *pi)
 {
 	u8 mib_type, *lldpmib = NULL;
 	struct ice_dcbx_cfg *dcbcfg;
-	enum ice_status ret;
+	int ret;
 	struct ice_hw *hw;
 	u16 miblen;
 
@@ -1511,14 +1511,14 @@ enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi)
  *
  * query current port ETS configuration
  */
-static enum ice_status
+static int
 ice_aq_query_port_ets(struct ice_port_info *pi,
 		      struct ice_aqc_port_ets_elem *buf, u16 buf_size,
 		      struct ice_sq_cd *cd)
 {
 	struct ice_aqc_query_port_ets *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (!pi)
 		return ICE_ERR_PARAM;
@@ -1537,13 +1537,13 @@ ice_aq_query_port_ets(struct ice_port_info *pi,
  *
  * update the SW DB with the new TC changes
  */
-static enum ice_status
+static int
 ice_update_port_tc_tree_cfg(struct ice_port_info *pi,
 			    struct ice_aqc_port_ets_elem *buf)
 {
 	struct ice_sched_node *node, *tc_node;
 	struct ice_aqc_txsched_elem_data elem;
-	enum ice_status status = 0;
+	int status = 0;
 	u32 teid1, teid2;
 	u8 i, j;
 
@@ -1605,12 +1605,12 @@ ice_update_port_tc_tree_cfg(struct ice_port_info *pi,
  * query current port ETS configuration and update the
  * SW DB with the TC changes
  */
-enum ice_status
+int
 ice_query_port_ets(struct ice_port_info *pi,
 		   struct ice_aqc_port_ets_elem *buf, u16 buf_size,
 		   struct ice_sq_cd *cd)
 {
-	enum ice_status status;
+	int status;
 
 	mutex_lock(&pi->sched_lock);
 	status = ice_aq_query_port_ets(pi, buf, buf_size, cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index 9b6f87a889a6..4eb6383c363e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -138,28 +138,28 @@ struct ice_cee_app_prio {
 } __packed;
 
 int ice_aq_set_pfc_mode(struct ice_hw *hw, u8 pfc_mode, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 		   struct ice_dcbx_cfg *dcbcfg);
-enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi);
-enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi);
-enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change);
-enum ice_status
+int ice_get_dcb_cfg(struct ice_port_info *pi);
+int ice_set_dcb_cfg(struct ice_port_info *pi);
+int ice_init_dcb(struct ice_hw *hw, bool enable_mib_change);
+int
 ice_query_port_ets(struct ice_port_info *pi,
 		   struct ice_aqc_port_ets_elem *buf, u16 buf_size,
 		   struct ice_sq_cd *cmd_details);
 #ifdef CONFIG_DCB
-enum ice_status
+int
 ice_aq_stop_lldp(struct ice_hw *hw, bool shutdown_lldp_agent, bool persist,
 		 struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_start_lldp(struct ice_hw *hw, bool persist, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
 		       bool *dcbx_agent_status, struct ice_sq_cd *cd);
-enum ice_status ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib);
+int ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib);
 #else /* CONFIG_DCB */
-static inline enum ice_status
+static inline int
 ice_aq_stop_lldp(struct ice_hw __always_unused *hw,
 		 bool __always_unused shutdown_lldp_agent,
 		 bool __always_unused persist,
@@ -168,7 +168,7 @@ ice_aq_stop_lldp(struct ice_hw __always_unused *hw,
 	return 0;
 }
 
-static inline enum ice_status
+static inline int
 ice_aq_start_lldp(struct ice_hw __always_unused *hw,
 		  bool __always_unused persist,
 		  struct ice_sq_cd __always_unused *cd)
@@ -176,7 +176,7 @@ ice_aq_start_lldp(struct ice_hw __always_unused *hw,
 	return 0;
 }
 
-static inline enum ice_status
+static inline int
 ice_aq_start_stop_dcbx(struct ice_hw __always_unused *hw,
 		       bool __always_unused start_dcbx_agent,
 		       bool *dcbx_agent_status,
@@ -187,7 +187,7 @@ ice_aq_start_stop_dcbx(struct ice_hw __always_unused *hw,
 	return 0;
 }
 
-static inline enum ice_status
+static inline int
 ice_cfg_lldp_mib_change(struct ice_hw __always_unused *hw,
 			bool __always_unused ena_mib)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 4284526e9e24..856385dd476a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -449,7 +449,7 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	struct ice_aqc_port_ets_elem buf = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_dcbx_cfg *err_cfg;
-	enum ice_status ret;
+	int ret;
 
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 6ac4c69a1bf5..a195e295d222 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -39,7 +39,7 @@ static void ice_info_get_dsn(struct ice_pf *pf, struct ice_info_ctx *ctx)
 static void ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 
 	status = ice_read_pba_string(hw, (u8 *)ctx->buf, sizeof(ctx->buf));
 	if (status)
@@ -251,7 +251,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_info_ctx *ctx;
-	enum ice_status status;
+	int status;
 	size_t i;
 	int err;
 
@@ -392,7 +392,7 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u8 pending;
 	int err;
 
@@ -785,7 +785,7 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	void *nvm_data;
 	u32 nvm_size;
 
@@ -843,7 +843,7 @@ ice_devlink_sram_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u8 *sram_data;
 	u32 sram_size;
 
@@ -902,7 +902,7 @@ ice_devlink_devcaps_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	void *devcaps;
 
 	devcaps = vzalloc(ICE_AQ_MAX_BUF_LEN);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 434b9983ca73..3de65a103ba1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -280,7 +280,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	int ret = 0;
 	u8 *buf;
@@ -352,7 +352,7 @@ static bool ice_active_vfs(struct ice_pf *pf)
 static u64 ice_link_test(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	enum ice_status status;
+	int status;
 	bool link_up = false;
 
 	netdev_info(netdev, "link test\n");
@@ -1055,7 +1055,7 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 	struct ice_link_status *link_info;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_port_info *pi;
-	enum ice_status status;
+	int status;
 	int err = 0;
 
 	pi = vsi->port_info;
@@ -1206,7 +1206,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 
 	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, change_flags)) {
 		if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
-			enum ice_status status;
+			int status;
 
 			/* Disable FW LLDP engine */
 			status = ice_cfg_lldp_mib_change(&pf->hw, false);
@@ -1235,7 +1235,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			pf->dcbx_cap &= ~DCB_CAP_DCBX_LLD_MANAGED;
 			pf->dcbx_cap |= DCB_CAP_DCBX_HOST;
 		} else {
-			enum ice_status status;
+			int status;
 			bool dcbx_agent_status;
 
 			if (ice_get_pfc_mode(pf) == ICE_QOS_MODE_DSCP) {
@@ -1936,7 +1936,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 	struct ice_aqc_get_phy_caps_data *caps;
 	struct ice_link_status *hw_link_info;
 	struct ice_vsi *vsi = np->vsi;
-	enum ice_status status;
+	int status;
 	int err = 0;
 
 	ethtool_link_ksettings_zero_link_mode(ks, supported);
@@ -2208,7 +2208,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_port_info *pi;
 	u8 autoneg_changed = 0;
-	enum ice_status status;
+	int status;
 	u64 phy_type_high = 0;
 	u64 phy_type_low = 0;
 	int err = 0;
@@ -2520,7 +2520,7 @@ static int
 ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	u64 hashed_flds;
 	u32 hdrs;
@@ -2947,7 +2947,7 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	struct ice_port_info *pi = np->vsi->port_info;
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_dcbx_cfg *dcbx_cfg;
-	enum ice_status status;
+	int status;
 
 	/* Initialize pause params */
 	pause->rx_pause = 0;
@@ -2997,7 +2997,7 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_port_info *pi;
-	enum ice_status status;
+	int status;
 	u8 aq_failures;
 	bool link_up;
 	int err = 0;
@@ -3864,7 +3864,7 @@ ice_get_module_info(struct net_device *netdev,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u8 sff8472_comp = 0;
 	u8 sff8472_swap = 0;
 	u8 sff8636_rev = 0;
@@ -3941,7 +3941,7 @@ ice_get_module_eeprom(struct net_device *netdev,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	bool is_sfp = false;
 	unsigned int i, j;
 	u16 offset = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 38960bcc384c..b9f2abc4d0c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -530,7 +530,7 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	struct ice_flow_prof *prof = NULL;
 	struct ice_fd_hw_prof *hw_prof;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u64 entry1_h = 0;
 	u64 entry2_h = 0;
 	u64 prof_id;
@@ -1190,7 +1190,7 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 	struct ice_hw *hw = &pf->hw;
 	struct ice_fltr_desc desc;
 	struct ice_vsi *ctrl_vsi;
-	enum ice_status status;
+	int status;
 	u8 *pkt, *frag_pkt;
 	bool has_frag;
 	int err;
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index cbd8424631e3..17888f5bd68e 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -712,7 +712,7 @@ ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
  * @hw: pointer to the hardware structure
  * @cntr_id: returns counter index
  */
-enum ice_status ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id)
+int ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id)
 {
 	return ice_alloc_res_cntr(hw, ICE_AQC_RES_TYPE_FDIR_COUNTER_BLOCK,
 				  ICE_AQC_RES_TYPE_FLAG_DEDICATED, 1, cntr_id);
@@ -723,7 +723,7 @@ enum ice_status ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id)
  * @hw: pointer to the hardware structure
  * @cntr_id: counter index to be freed
  */
-enum ice_status ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id)
+int ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id)
 {
 	return ice_free_res_cntr(hw, ICE_AQC_RES_TYPE_FDIR_COUNTER_BLOCK,
 				 ICE_AQC_RES_TYPE_FLAG_DEDICATED, 1, cntr_id);
@@ -735,7 +735,7 @@ enum ice_status ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id)
  * @cntr_id: returns counter index
  * @num_fltr: number of filter entries to be allocated
  */
-enum ice_status
+int
 ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr)
 {
 	return ice_alloc_res_cntr(hw, ICE_AQC_RES_TYPE_FDIR_GUARANTEED_ENTRIES,
@@ -749,7 +749,7 @@ ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr)
  * @cntr_id: returns counter index
  * @num_fltr: number of filter entries to be allocated
  */
-enum ice_status
+int
 ice_alloc_fd_shrd_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr)
 {
 	return ice_alloc_res_cntr(hw, ICE_AQC_RES_TYPE_FDIR_SHARED_ENTRIES,
@@ -872,7 +872,7 @@ static void ice_pkt_insert_mac_addr(u8 *pkt, u8 *addr)
  * @frag: generate a fragment packet
  * @tun: true implies generate a tunnel packet
  */
-enum ice_status
+int
 ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 			  u8 *pkt, bool frag, bool tun)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index da4163856f4c..49a2453731d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -201,16 +201,16 @@ struct ice_fdir_base_pkt {
 	const u8 *tun_pkt;
 };
 
-enum ice_status ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id);
-enum ice_status ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id);
-enum ice_status
+int ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id);
+int ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id);
+int
 ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
-enum ice_status
+int
 ice_alloc_fd_shrd_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
 void
 ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		       struct ice_fltr_desc *fdesc, bool add);
-enum ice_status
+int
 ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 			  u8 *pkt, bool frag, bool tun);
 int ice_get_fdir_cnt_all(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 54ac1360e7d3..84cd47e8e30d 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -433,7 +433,7 @@ ice_boost_tcam_handler(u32 sect_type, void *section, u32 index, u32 *offset)
  * if it is found. The ice_seg parameter must not be NULL since the first call
  * to ice_pkg_enum_entry requires a pointer to an actual ice_segment structure.
  */
-static enum ice_status
+static int
 ice_find_boost_entry(struct ice_seg *ice_seg, u16 addr,
 		     struct ice_boost_tcam_entry **entry)
 {
@@ -624,7 +624,7 @@ static void ice_init_pkg_hints(struct ice_hw *hw, struct ice_seg *ice_seg)
  *          ------------------------------
  * Result:  key:        b01 10 11 11 00 00
  */
-static enum ice_status
+static int
 ice_gen_key_word(u8 val, u8 valid, u8 dont_care, u8 nvr_mtch, u8 *key,
 		 u8 *key_inv)
 {
@@ -726,7 +726,7 @@ static bool ice_bits_max_set(const u8 *mask, u16 size, u16 max)
  *	dc == NULL --> dc mask is all 0's (no don't care bits)
  *	nm == NULL --> nm mask is all 0's (no never match bits)
  */
-static enum ice_status
+static int
 ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
 	    u16 len)
 {
@@ -774,11 +774,11 @@ ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
  *                      this case, the caller can just skip performing any
  *                      update of the package.
  */
-static enum ice_status
+static int
 ice_acquire_global_cfg_lock(struct ice_hw *hw,
 			    enum ice_aq_res_access_type access)
 {
-	enum ice_status status;
+	int status;
 
 	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, access,
 				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
@@ -810,7 +810,7 @@ static void ice_release_global_cfg_lock(struct ice_hw *hw)
  *
  * This function will request ownership of the change lock.
  */
-enum ice_status
+int
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access)
 {
 	return ice_acquire_res(hw, ICE_CHANGE_LOCK_RES_ID, access,
@@ -840,14 +840,14 @@ void ice_release_change_lock(struct ice_hw *hw)
  *
  * Download Package (0x0C40)
  */
-static enum ice_status
+static int
 ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 		    u16 buf_size, bool last_buf, u32 *error_offset,
 		    u32 *error_info, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_download_pkg *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (error_offset)
 		*error_offset = 0;
@@ -888,14 +888,14 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
  *
  * Update Package (0x0C42)
  */
-static enum ice_status
+static int
 ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf, u16 buf_size,
 		  bool last_buf, u32 *error_offset, u32 *error_info,
 		  struct ice_sq_cd *cd)
 {
 	struct ice_aqc_download_pkg *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (error_offset)
 		*error_offset = 0;
@@ -967,10 +967,10 @@ ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
  *
  * Obtains change lock and updates package.
  */
-static enum ice_status
+static int
 ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
-	enum ice_status status;
+	int status;
 	u32 offset, info, i;
 
 	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
@@ -1027,7 +1027,7 @@ static enum ice_ddp_state
 ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
 	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
-	enum ice_status status;
+	int status;
 	struct ice_buf_hdr *bh;
 	enum ice_aq_err err;
 	u32 offset, info, i;
@@ -1099,7 +1099,7 @@ ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
  *
  * Get Package Info List (0x0C43)
  */
-static enum ice_status
+static int
 ice_aq_get_pkg_info_list(struct ice_hw *hw,
 			 struct ice_aqc_get_pkg_info_resp *pkg_info,
 			 u16 buf_size, struct ice_sq_cd *cd)
@@ -1461,7 +1461,7 @@ ice_sw_fv_handler(u32 sect_type, void *section, u32 index, u32 *offset)
  * and store the index number in struct ice_switch_info *switch_info
  * in HW for following use.
  */
-static enum ice_status ice_get_prof_index_max(struct ice_hw *hw)
+static int ice_get_prof_index_max(struct ice_hw *hw)
 {
 	u16 prof_index = 0, j, max_prof_index = 0;
 	struct ice_pkg_enum state;
@@ -1760,7 +1760,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
  * NOTE: The caller of the function is responsible for freeing the memory
  * allocated for every list entry.
  */
-enum ice_status
+int
 ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
 		   unsigned long *bm, struct list_head *fv_list)
 {
@@ -1895,7 +1895,7 @@ static void ice_pkg_buf_free(struct ice_hw *hw, struct ice_buf_build *bld)
  * result in some wasted space in the buffer.
  * Note: all package contents must be in Little Endian form.
  */
-static enum ice_status
+static int
 ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count)
 {
 	struct ice_buf_hdr *buf;
@@ -2072,12 +2072,12 @@ static u16 ice_tunnel_idx_to_entry(struct ice_hw *hw, enum ice_tunnel_type type,
  * creating a package buffer with the tunnel info and issuing an update package
  * command.
  */
-static enum ice_status
+static int
 ice_create_tunnel(struct ice_hw *hw, u16 index,
 		  enum ice_tunnel_type type, u16 port)
 {
 	struct ice_boost_tcam_section *sect_rx, *sect_tx;
-	enum ice_status status = ICE_ERR_MAX_LIMIT;
+	int status = ICE_ERR_MAX_LIMIT;
 	struct ice_buf_build *bld;
 
 	mutex_lock(&hw->tnl_lock);
@@ -2143,12 +2143,12 @@ ice_create_tunnel(struct ice_hw *hw, u16 index,
  * targeting the specific updates requested and then performing an update
  * package.
  */
-static enum ice_status
+static int
 ice_destroy_tunnel(struct ice_hw *hw, u16 index, enum ice_tunnel_type type,
 		   u16 port)
 {
 	struct ice_boost_tcam_section *sect_rx, *sect_tx;
-	enum ice_status status = ICE_ERR_MAX_LIMIT;
+	int status = ICE_ERR_MAX_LIMIT;
 	struct ice_buf_build *bld;
 
 	mutex_lock(&hw->tnl_lock);
@@ -2210,7 +2210,7 @@ int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	enum ice_tunnel_type tnl_type;
-	enum ice_status status;
+	int status;
 	u16 index;
 
 	tnl_type = ti->type == UDP_TUNNEL_TYPE_VXLAN ? TNL_VXLAN : TNL_GENEVE;
@@ -2234,7 +2234,7 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	enum ice_tunnel_type tnl_type;
-	enum ice_status status;
+	int status;
 
 	tnl_type = ti->type == UDP_TUNNEL_TYPE_VXLAN ? TNL_VXLAN : TNL_GENEVE;
 
@@ -2258,7 +2258,7 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
  * @prot: variable to receive the protocol ID
  * @off: variable to receive the protocol offset
  */
-enum ice_status
+int
 ice_find_prot_off(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 fv_idx,
 		  u8 *prot, u16 *off)
 {
@@ -2291,7 +2291,7 @@ ice_find_prot_off(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 fv_idx,
  * PTG ID that contains it through the PTG parameter, with the value of
  * ICE_DEFAULT_PTG (0) meaning it is part the default PTG.
  */
-static enum ice_status
+static int
 ice_ptg_find_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 *ptg)
 {
 	if (ptype >= ICE_XLT1_CNT || !ptg)
@@ -2325,7 +2325,7 @@ static void ice_ptg_alloc_val(struct ice_hw *hw, enum ice_block blk, u8 ptg)
  * This function will remove the ptype from the specific PTG, and move it to
  * the default PTG (ICE_DEFAULT_PTG).
  */
-static enum ice_status
+static int
 ice_ptg_remove_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
 {
 	struct ice_ptg_ptype **ch;
@@ -2372,10 +2372,10 @@ ice_ptg_remove_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
  * a destination PTG ID of ICE_DEFAULT_PTG (0) will move the ptype to the
  * default PTG.
  */
-static enum ice_status
+static int
 ice_ptg_add_mv_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
 {
-	enum ice_status status;
+	int status;
 	u8 original_ptg;
 
 	if (ptype > ICE_XLT1_CNT - 1)
@@ -2517,7 +2517,7 @@ ice_match_prop_lst(struct list_head *list1, struct list_head *list2)
  * This function will lookup the VSI entry in the XLT2 list and return
  * the VSI group its associated with.
  */
-static enum ice_status
+static int
 ice_vsig_find_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 *vsig)
 {
 	if (!vsig || vsi >= ICE_MAX_VSI)
@@ -2586,7 +2586,7 @@ static u16 ice_vsig_alloc(struct ice_hw *hw, enum ice_block blk)
  * for, the list must match exactly, including the order in which the
  * characteristics are listed.
  */
-static enum ice_status
+static int
 ice_find_dup_props_vsig(struct ice_hw *hw, enum ice_block blk,
 			struct list_head *chs, u16 *vsig)
 {
@@ -2612,7 +2612,7 @@ ice_find_dup_props_vsig(struct ice_hw *hw, enum ice_block blk,
  * The function will remove all VSIs associated with the input VSIG and move
  * them to the DEFAULT_VSIG and mark the VSIG available.
  */
-static enum ice_status
+static int
 ice_vsig_free(struct ice_hw *hw, enum ice_block blk, u16 vsig)
 {
 	struct ice_vsig_prof *dtmp, *del;
@@ -2673,7 +2673,7 @@ ice_vsig_free(struct ice_hw *hw, enum ice_block blk, u16 vsig)
  * The function will remove the input VSI from its VSI group and move it
  * to the DEFAULT_VSIG.
  */
-static enum ice_status
+static int
 ice_vsig_remove_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 {
 	struct ice_vsig_vsi **vsi_head, *vsi_cur, *vsi_tgt;
@@ -2731,11 +2731,11 @@ ice_vsig_remove_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
  * move the entry to the DEFAULT_VSIG, update the original VSIG and
  * then move entry to the new VSIG.
  */
-static enum ice_status
+static int
 ice_vsig_add_mv_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 {
 	struct ice_vsig_vsi *tmp;
-	enum ice_status status;
+	int status;
 	u16 orig_vsig, idx;
 
 	idx = vsig & ICE_VSIG_IDX_M;
@@ -2854,7 +2854,7 @@ ice_prof_has_mask(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 *masks)
  * @masks: masks for FV
  * @prof_id: receives the profile ID
  */
-static enum ice_status
+static int
 ice_find_prof_id_with_mask(struct ice_hw *hw, enum ice_block blk,
 			   struct ice_fv_word *fv, u16 *masks, u8 *prof_id)
 {
@@ -2934,7 +2934,7 @@ static bool ice_tcam_ent_rsrc_type(enum ice_block blk, u16 *rsrc_type)
  * This function allocates a new entry in a Profile ID TCAM for a specific
  * block.
  */
-static enum ice_status
+static int
 ice_alloc_tcam_ent(struct ice_hw *hw, enum ice_block blk, bool btm,
 		   u16 *tcam_idx)
 {
@@ -2954,7 +2954,7 @@ ice_alloc_tcam_ent(struct ice_hw *hw, enum ice_block blk, bool btm,
  *
  * This function frees an entry in a Profile ID TCAM for a specific block.
  */
-static enum ice_status
+static int
 ice_free_tcam_ent(struct ice_hw *hw, enum ice_block blk, u16 tcam_idx)
 {
 	u16 res_type;
@@ -2974,10 +2974,10 @@ ice_free_tcam_ent(struct ice_hw *hw, enum ice_block blk, u16 tcam_idx)
  * This function allocates a new profile ID, which also corresponds to a Field
  * Vector (Extraction Sequence) entry.
  */
-static enum ice_status
+static int
 ice_alloc_prof_id(struct ice_hw *hw, enum ice_block blk, u8 *prof_id)
 {
-	enum ice_status status;
+	int status;
 	u16 res_type;
 	u16 get_prof;
 
@@ -2999,7 +2999,7 @@ ice_alloc_prof_id(struct ice_hw *hw, enum ice_block blk, u8 *prof_id)
  *
  * This function frees a profile ID, which also corresponds to a Field Vector.
  */
-static enum ice_status
+static int
 ice_free_prof_id(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
 	u16 tmp_prof_id = (u16)prof_id;
@@ -3017,7 +3017,7 @@ ice_free_prof_id(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
  * @blk: the block from which to free the profile ID
  * @prof_id: the profile ID for which to increment the reference count
  */
-static enum ice_status
+static int
 ice_prof_inc_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
 	if (prof_id > hw->blk[blk].es.count)
@@ -3138,12 +3138,12 @@ static void ice_init_all_prof_masks(struct ice_hw *hw)
  * @mask: the 16-bit mask
  * @mask_idx: variable to receive the mask index
  */
-static enum ice_status
+static int
 ice_alloc_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 idx, u16 mask,
 		    u16 *mask_idx)
 {
 	bool found_unused = false, found_copy = false;
-	enum ice_status status = ICE_ERR_MAX_LIMIT;
+	int status = ICE_ERR_MAX_LIMIT;
 	u16 unused_idx = 0, copy_idx = 0;
 	u16 i;
 
@@ -3206,7 +3206,7 @@ ice_alloc_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 idx, u16 mask,
  * @blk: hardware block
  * @mask_idx: index of mask
  */
-static enum ice_status
+static int
 ice_free_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 mask_idx)
 {
 	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
@@ -3248,7 +3248,7 @@ ice_free_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 mask_idx)
  * @blk: hardware block
  * @prof_id: profile ID
  */
-static enum ice_status
+static int
 ice_free_prof_masks(struct ice_hw *hw, enum ice_block blk, u16 prof_id)
 {
 	u32 mask_bm;
@@ -3310,7 +3310,7 @@ static void ice_shutdown_all_prof_masks(struct ice_hw *hw)
  * @prof_id: profile ID
  * @masks: masks
  */
-static enum ice_status
+static int
 ice_update_prof_masking(struct ice_hw *hw, enum ice_block blk, u16 prof_id,
 			u16 *masks)
 {
@@ -3382,7 +3382,7 @@ ice_write_es(struct ice_hw *hw, enum ice_block blk, u8 prof_id,
  * @blk: the block from which to free the profile ID
  * @prof_id: the profile ID for which to decrement the reference count
  */
-static enum ice_status
+static int
 ice_prof_dec_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
 	if (prof_id > hw->blk[blk].es.count)
@@ -3824,7 +3824,7 @@ void ice_clear_hw_tbls(struct ice_hw *hw)
  * ice_init_hw_tbls - init hardware table memory
  * @hw: pointer to the hardware structure
  */
-enum ice_status ice_init_hw_tbls(struct ice_hw *hw)
+int ice_init_hw_tbls(struct ice_hw *hw)
 {
 	u8 i;
 
@@ -3959,7 +3959,7 @@ enum ice_status ice_init_hw_tbls(struct ice_hw *hw)
  * @nm_msk: never match mask
  * @key: output of profile ID key
  */
-static enum ice_status
+static int
 ice_prof_gen_key(struct ice_hw *hw, enum ice_block blk, u8 ptg, u16 vsig,
 		 u8 cdid, u16 flags, u8 vl_msk[ICE_TCAM_KEY_VAL_SZ],
 		 u8 dc_msk[ICE_TCAM_KEY_VAL_SZ], u8 nm_msk[ICE_TCAM_KEY_VAL_SZ],
@@ -4015,7 +4015,7 @@ ice_prof_gen_key(struct ice_hw *hw, enum ice_block blk, u8 ptg, u16 vsig,
  * @dc_msk: don't care mask
  * @nm_msk: never match mask
  */
-static enum ice_status
+static int
 ice_tcam_write_entry(struct ice_hw *hw, enum ice_block blk, u16 idx,
 		     u8 prof_id, u8 ptg, u16 vsig, u8 cdid, u16 flags,
 		     u8 vl_msk[ICE_TCAM_KEY_VAL_SZ],
@@ -4023,7 +4023,7 @@ ice_tcam_write_entry(struct ice_hw *hw, enum ice_block blk, u16 idx,
 		     u8 nm_msk[ICE_TCAM_KEY_VAL_SZ])
 {
 	struct ice_prof_tcam_entry;
-	enum ice_status status;
+	int status;
 
 	status = ice_prof_gen_key(hw, blk, ptg, vsig, cdid, flags, vl_msk,
 				  dc_msk, nm_msk, hw->blk[blk].prof.t[idx].key);
@@ -4042,7 +4042,7 @@ ice_tcam_write_entry(struct ice_hw *hw, enum ice_block blk, u16 idx,
  * @vsig: VSIG to query
  * @refs: pointer to variable to receive the reference count
  */
-static enum ice_status
+static int
 ice_vsig_get_ref(struct ice_hw *hw, enum ice_block blk, u16 vsig, u16 *refs)
 {
 	u16 idx = vsig & ICE_VSIG_IDX_M;
@@ -4092,7 +4092,7 @@ ice_has_prof_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl)
  * @bld: the update package buffer build to add to
  * @chgs: the list of changes to make in hardware
  */
-static enum ice_status
+static int
 ice_prof_bld_es(struct ice_hw *hw, enum ice_block blk,
 		struct ice_buf_build *bld, struct list_head *chgs)
 {
@@ -4130,7 +4130,7 @@ ice_prof_bld_es(struct ice_hw *hw, enum ice_block blk,
  * @bld: the update package buffer build to add to
  * @chgs: the list of changes to make in hardware
  */
-static enum ice_status
+static int
 ice_prof_bld_tcam(struct ice_hw *hw, enum ice_block blk,
 		  struct ice_buf_build *bld, struct list_head *chgs)
 {
@@ -4166,7 +4166,7 @@ ice_prof_bld_tcam(struct ice_hw *hw, enum ice_block blk,
  * @bld: the update package buffer build to add to
  * @chgs: the list of changes to make in hardware
  */
-static enum ice_status
+static int
 ice_prof_bld_xlt1(enum ice_block blk, struct ice_buf_build *bld,
 		  struct list_head *chgs)
 {
@@ -4198,7 +4198,7 @@ ice_prof_bld_xlt1(enum ice_block blk, struct ice_buf_build *bld,
  * @bld: the update package buffer build to add to
  * @chgs: the list of changes to make in hardware
  */
-static enum ice_status
+static int
 ice_prof_bld_xlt2(enum ice_block blk, struct ice_buf_build *bld,
 		  struct list_head *chgs)
 {
@@ -4237,13 +4237,13 @@ ice_prof_bld_xlt2(enum ice_block blk, struct ice_buf_build *bld,
  * @blk: hardware block
  * @chgs: the list of changes to make in hardware
  */
-static enum ice_status
+static int
 ice_upd_prof_hw(struct ice_hw *hw, enum ice_block blk,
 		struct list_head *chgs)
 {
 	struct ice_buf_build *b;
 	struct ice_chs_chg *tmp;
-	enum ice_status status;
+	int status;
 	u16 pkg_sects;
 	u16 xlt1 = 0;
 	u16 xlt2 = 0;
@@ -4389,7 +4389,7 @@ static const struct ice_fd_src_dst_pair ice_fd_pairs[] = {
  * @prof_id: profile ID
  * @es: extraction sequence (length of array is determined by the block)
  */
-static enum ice_status
+static int
 ice_update_fd_swap(struct ice_hw *hw, u16 prof_id, struct ice_fv_word *es)
 {
 	DECLARE_BITMAP(pair_list, ICE_FD_SRC_DST_PAIR_COUNT);
@@ -4565,7 +4565,7 @@ ice_get_ptype_attrib_info(enum ice_ptype_attrib_type type,
  * @attr: array of attributes that will be considered
  * @attr_cnt: number of elements in the attribute array
  */
-static enum ice_status
+static int
 ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 		    const struct ice_ptype_attributes *attr, u16 attr_cnt)
 {
@@ -4606,7 +4606,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * it will not be written until the first call to ice_add_flow that specifies
  * the ID value used here.
  */
-enum ice_status
+int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
 	     struct ice_fv_word *es, u16 *masks)
@@ -4614,7 +4614,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
 	struct ice_prof_map *prof;
-	enum ice_status status;
+	int status;
 	u8 byte = 0;
 	u8 prof_id;
 
@@ -4774,14 +4774,14 @@ ice_vsig_prof_id_count(struct ice_hw *hw, enum ice_block blk, u16 vsig)
  * @blk: hardware block
  * @idx: the index to release
  */
-static enum ice_status
+static int
 ice_rel_tcam_idx(struct ice_hw *hw, enum ice_block blk, u16 idx)
 {
 	/* Masks to invoke a never match entry */
 	u8 vl_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 	u8 dc_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFE, 0xFF, 0xFF, 0xFF, 0xFF };
 	u8 nm_msk[ICE_TCAM_KEY_VAL_SZ] = { 0x01, 0x00, 0x00, 0x00, 0x00 };
-	enum ice_status status;
+	int status;
 
 	/* write the TCAM entry */
 	status = ice_tcam_write_entry(hw, blk, idx, 0, 0, 0, 0, 0, vl_msk,
@@ -4801,11 +4801,11 @@ ice_rel_tcam_idx(struct ice_hw *hw, enum ice_block blk, u16 idx)
  * @blk: hardware block
  * @prof: pointer to profile structure to remove
  */
-static enum ice_status
+static int
 ice_rem_prof_id(struct ice_hw *hw, enum ice_block blk,
 		struct ice_vsig_prof *prof)
 {
-	enum ice_status status;
+	int status;
 	u16 i;
 
 	for (i = 0; i < prof->tcam_count; i++)
@@ -4827,14 +4827,14 @@ ice_rem_prof_id(struct ice_hw *hw, enum ice_block blk,
  * @vsig: the VSIG to remove
  * @chg: the change list
  */
-static enum ice_status
+static int
 ice_rem_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 	     struct list_head *chg)
 {
 	u16 idx = vsig & ICE_VSIG_IDX_M;
 	struct ice_vsig_vsi *vsi_cur;
 	struct ice_vsig_prof *d, *t;
-	enum ice_status status;
+	int status;
 
 	/* remove TCAM entries */
 	list_for_each_entry_safe(d, t,
@@ -4884,13 +4884,13 @@ ice_rem_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
  * @hdl: profile handle indicating which profile to remove
  * @chg: list to receive a record of changes
  */
-static enum ice_status
+static int
 ice_rem_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		     struct list_head *chg)
 {
 	u16 idx = vsig & ICE_VSIG_IDX_M;
 	struct ice_vsig_prof *p, *t;
-	enum ice_status status;
+	int status;
 
 	list_for_each_entry_safe(p, t,
 				 &hw->blk[blk].xlt2.vsig_tbl[idx].prop_lst,
@@ -4917,11 +4917,11 @@ ice_rem_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
  * @blk: hardware block
  * @id: profile tracking ID
  */
-static enum ice_status
+static int
 ice_rem_flow_all(struct ice_hw *hw, enum ice_block blk, u64 id)
 {
 	struct ice_chs_chg *del, *tmp;
-	enum ice_status status;
+	int status;
 	struct list_head chg;
 	u16 i;
 
@@ -4958,10 +4958,10 @@ ice_rem_flow_all(struct ice_hw *hw, enum ice_block blk, u64 id)
  * previously created through ice_add_prof. If any existing entries
  * are associated with this profile, they will be removed as well.
  */
-enum ice_status ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id)
+int ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id)
 {
 	struct ice_prof_map *pmap;
-	enum ice_status status;
+	int status;
 
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 
@@ -4994,11 +4994,11 @@ enum ice_status ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id)
  * @hdl: profile handle
  * @chg: change list
  */
-static enum ice_status
+static int
 ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
 	     struct list_head *chg)
 {
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_prof_map *map;
 	struct ice_chs_chg *p;
 	u16 i;
@@ -5049,7 +5049,7 @@ ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
  *
  * This routine makes a copy of the list of profiles in the specified VSIG.
  */
-static enum ice_status
+static int
 ice_get_profs_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 		   struct list_head *lst)
 {
@@ -5087,11 +5087,11 @@ ice_get_profs_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
  * @lst: the list to be added to
  * @hdl: profile handle of entry to add
  */
-static enum ice_status
+static int
 ice_add_prof_to_lst(struct ice_hw *hw, enum ice_block blk,
 		    struct list_head *lst, u64 hdl)
 {
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_prof_map *map;
 	struct ice_vsig_prof *p;
 	u16 i;
@@ -5134,11 +5134,11 @@ ice_add_prof_to_lst(struct ice_hw *hw, enum ice_block blk,
  * @vsig: the VSIG to move the VSI to
  * @chg: the change list
  */
-static enum ice_status
+static int
 ice_move_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig,
 	     struct list_head *chg)
 {
-	enum ice_status status;
+	int status;
 	struct ice_chs_chg *p;
 	u16 orig_vsig;
 
@@ -5194,12 +5194,12 @@ ice_rem_chg_tcam_ent(struct ice_hw *hw, u16 idx, struct list_head *chg)
  *
  * This function appends an enable or disable TCAM entry in the change log
  */
-static enum ice_status
+static int
 ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 		      u16 vsig, struct ice_tcam_inf *tcam,
 		      struct list_head *chg)
 {
-	enum ice_status status;
+	int status;
 	struct ice_chs_chg *p;
 
 	u8 vl_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
@@ -5267,13 +5267,13 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
  * @vsig: the VSIG for which to adjust profile priorities
  * @chg: the change list
  */
-static enum ice_status
+static int
 ice_adj_prof_priorities(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 			struct list_head *chg)
 {
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
 	struct ice_vsig_prof *t;
-	enum ice_status status;
+	int status;
 	u16 idx;
 
 	bitmap_zero(ptgs_used, ICE_XLT1_CNT);
@@ -5338,7 +5338,7 @@ ice_adj_prof_priorities(struct ice_hw *hw, enum ice_block blk, u16 vsig,
  * @rev: true to add entries to the end of the list
  * @chg: the change list
  */
-static enum ice_status
+static int
 ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		     bool rev, struct list_head *chg)
 {
@@ -5346,7 +5346,7 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 	u8 vl_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 	u8 dc_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0x00, 0x00, 0x00 };
 	u8 nm_msk[ICE_TCAM_KEY_VAL_SZ] = { 0x00, 0x00, 0x00, 0x00, 0x00 };
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_prof_map *map;
 	struct ice_vsig_prof *t;
 	struct ice_chs_chg *p;
@@ -5450,11 +5450,11 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
  * @hdl: the profile handle of the profile that will be added to the VSIG
  * @chg: the change list
  */
-static enum ice_status
+static int
 ice_create_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl,
 			struct list_head *chg)
 {
-	enum ice_status status;
+	int status;
 	struct ice_chs_chg *p;
 	u16 new_vsig;
 
@@ -5500,13 +5500,13 @@ ice_create_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl,
  * @new_vsig: return of new VSIG
  * @chg: the change list
  */
-static enum ice_status
+static int
 ice_create_vsig_from_lst(struct ice_hw *hw, enum ice_block blk, u16 vsi,
 			 struct list_head *lst, u16 *new_vsig,
 			 struct list_head *chg)
 {
 	struct ice_vsig_prof *t;
-	enum ice_status status;
+	int status;
 	u16 vsig;
 
 	vsig = ice_vsig_alloc(hw, blk);
@@ -5541,7 +5541,7 @@ static bool
 ice_find_prof_vsig(struct ice_hw *hw, enum ice_block blk, u64 hdl, u16 *vsig)
 {
 	struct ice_vsig_prof *t;
-	enum ice_status status;
+	int status;
 	struct list_head lst;
 
 	INIT_LIST_HEAD(&lst);
@@ -5572,13 +5572,13 @@ ice_find_prof_vsig(struct ice_hw *hw, enum ice_block blk, u64 hdl, u16 *vsig)
  * profile indicated by the ID parameter for the VSIs specified in the VSI
  * array. Once successfully called, the flow will be enabled.
  */
-enum ice_status
+int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 {
 	struct ice_vsig_prof *tmp1, *del1;
 	struct ice_chs_chg *tmp, *del;
 	struct list_head union_lst;
-	enum ice_status status;
+	int status;
 	struct list_head chg;
 	u16 vsig;
 
@@ -5713,7 +5713,7 @@ ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
  * @lst: list to remove the profile from
  * @hdl: the profile handle indicating the profile to remove
  */
-static enum ice_status
+static int
 ice_rem_prof_from_list(struct ice_hw *hw, struct list_head *lst, u64 hdl)
 {
 	struct ice_vsig_prof *ent, *tmp;
@@ -5739,13 +5739,13 @@ ice_rem_prof_from_list(struct ice_hw *hw, struct list_head *lst, u64 hdl)
  * profile indicated by the ID parameter for the VSIs specified in the VSI
  * array. Once successfully called, the flow will be disabled.
  */
-enum ice_status
+int
 ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 {
 	struct ice_vsig_prof *tmp1, *del1;
 	struct ice_chs_chg *tmp, *del;
 	struct list_head chg, copy;
-	enum ice_status status;
+	int status;
 	u16 vsig;
 
 	INIT_LIST_HEAD(&copy);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 099bb38646ad..1c2be376a537 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -75,10 +75,10 @@ enum ice_ddp_state {
 	ICE_DDP_PKG_ERR					= -12
 };
 
-enum ice_status
+int
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_change_lock(struct ice_hw *hw);
-enum ice_status
+int
 ice_find_prot_off(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 fv_idx,
 		  u8 *prot, u16 *off);
 void
@@ -86,7 +86,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type type,
 		     unsigned long *bm);
 void
 ice_init_prof_result_bm(struct ice_hw *hw);
-enum ice_status
+int
 ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
 		   unsigned long *bm, struct list_head *fv_list);
 bool
@@ -100,23 +100,23 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
 
 /* XLT2/VSI group functions */
-enum ice_status
+int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
 	     struct ice_fv_word *es, u16 *masks);
-enum ice_status
+int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
-enum ice_status
+int
 ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buff, u32 len);
 enum ice_ddp_state
 ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len);
 bool ice_is_init_pkg_successful(enum ice_ddp_state state);
-enum ice_status ice_init_hw_tbls(struct ice_hw *hw);
+int ice_init_hw_tbls(struct ice_hw *hw);
 void ice_free_seg(struct ice_hw *hw);
 void ice_fill_blk_tbls(struct ice_hw *hw);
 void ice_clear_hw_tbls(struct ice_hw *hw);
 void ice_free_hw_tbls(struct ice_hw *hw);
-enum ice_status
+int
 ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id);
 #endif /* _ICE_FLEX_PIPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index f160672448a0..a9dfb6aabbd9 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -625,7 +625,7 @@ struct ice_flow_prof_params {
  * @segs: array of one or more packet segments that describe the flow
  * @segs_cnt: number of packet segments provided
  */
-static enum ice_status
+static int
 ice_flow_val_hdrs(struct ice_flow_seg_info *segs, u8 segs_cnt)
 {
 	u8 i;
@@ -700,7 +700,7 @@ static u16 ice_flow_calc_seg_sz(struct ice_flow_prof_params *params, u8 seg)
  * This function identifies the packet types associated with the protocol
  * headers being present in packet segments of the specified flow profile.
  */
-static enum ice_status
+static int
 ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 {
 	struct ice_flow_prof *prof;
@@ -898,7 +898,7 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
  * field. It then allocates one or more extraction sequence entries for the
  * given field, and fill the entries with protocol ID and offset information.
  */
-static enum ice_status
+static int
 ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 		    u8 seg, enum ice_flow_field fld, u64 match)
 {
@@ -1099,7 +1099,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
  * @params: information about the flow to be processed
  * @seg: index of packet segment whose raw fields are to be extracted
  */
-static enum ice_status
+static int
 ice_flow_xtract_raws(struct ice_hw *hw, struct ice_flow_prof_params *params,
 		     u8 seg)
 {
@@ -1176,12 +1176,12 @@ ice_flow_xtract_raws(struct ice_hw *hw, struct ice_flow_prof_params *params,
  * This function iterates through all matched fields in the given segments, and
  * creates an extraction sequence for the fields.
  */
-static enum ice_status
+static int
 ice_flow_create_xtrct_seq(struct ice_hw *hw,
 			  struct ice_flow_prof_params *params)
 {
 	struct ice_flow_prof *prof = params->prof;
-	enum ice_status status = 0;
+	int status = 0;
 	u8 i;
 
 	for (i = 0; i < prof->segs_cnt; i++) {
@@ -1210,10 +1210,10 @@ ice_flow_create_xtrct_seq(struct ice_hw *hw,
  * @hw: pointer to the HW struct
  * @params: information about the flow to be processed
  */
-static enum ice_status
+static int
 ice_flow_proc_segs(struct ice_hw *hw, struct ice_flow_prof_params *params)
 {
-	enum ice_status status;
+	int status;
 
 	status = ice_flow_proc_seg_hdrs(params);
 	if (status)
@@ -1329,7 +1329,7 @@ ice_dealloc_flow_entry(struct ice_hw *hw, struct ice_flow_entry *entry)
  * @blk: classification stage
  * @entry: flow entry to be removed
  */
-static enum ice_status
+static int
 ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
 			struct ice_flow_entry *entry)
 {
@@ -1355,14 +1355,14 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
  *
  * Assumption: the caller has acquired the lock to the profile list
  */
-static enum ice_status
+static int
 ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 		       enum ice_flow_dir dir, u64 prof_id,
 		       struct ice_flow_seg_info *segs, u8 segs_cnt,
 		       struct ice_flow_prof **prof)
 {
 	struct ice_flow_prof_params *params;
-	enum ice_status status;
+	int status;
 	u8 i;
 
 	if (!prof)
@@ -1432,11 +1432,11 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
  *
  * Assumption: the caller has acquired the lock to the profile list
  */
-static enum ice_status
+static int
 ice_flow_rem_prof_sync(struct ice_hw *hw, enum ice_block blk,
 		       struct ice_flow_prof *prof)
 {
-	enum ice_status status;
+	int status;
 
 	/* Remove all remaining flow entries before removing the flow profile */
 	if (!list_empty(&prof->entries)) {
@@ -1474,11 +1474,11 @@ ice_flow_rem_prof_sync(struct ice_hw *hw, enum ice_block blk,
  * Assumption: the caller has acquired the lock to the profile list
  * and the software VSI handle has been validated
  */
-static enum ice_status
+static int
 ice_flow_assoc_prof(struct ice_hw *hw, enum ice_block blk,
 		    struct ice_flow_prof *prof, u16 vsi_handle)
 {
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (!test_bit(vsi_handle, prof->vsis)) {
 		status = ice_add_prof_id_flow(hw, blk,
@@ -1505,11 +1505,11 @@ ice_flow_assoc_prof(struct ice_hw *hw, enum ice_block blk,
  * Assumption: the caller has acquired the lock to the profile list
  * and the software VSI handle has been validated
  */
-static enum ice_status
+static int
 ice_flow_disassoc_prof(struct ice_hw *hw, enum ice_block blk,
 		       struct ice_flow_prof *prof, u16 vsi_handle)
 {
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (test_bit(vsi_handle, prof->vsis)) {
 		status = ice_rem_prof_id_flow(hw, blk,
@@ -1536,12 +1536,12 @@ ice_flow_disassoc_prof(struct ice_hw *hw, enum ice_block blk,
  * @segs_cnt: number of packet segments provided
  * @prof: stores the returned flow profile added
  */
-enum ice_status
+int
 ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  u64 prof_id, struct ice_flow_seg_info *segs, u8 segs_cnt,
 		  struct ice_flow_prof **prof)
 {
-	enum ice_status status;
+	int status;
 
 	if (segs_cnt > ICE_FLOW_SEG_MAX)
 		return ICE_ERR_MAX_LIMIT;
@@ -1574,11 +1574,11 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
  * @blk: the block for which the flow profile is to be removed
  * @prof_id: unique ID of the flow profile to be removed
  */
-enum ice_status
+int
 ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 {
 	struct ice_flow_prof *prof;
-	enum ice_status status;
+	int status;
 
 	mutex_lock(&hw->fl_profs_locks[blk]);
 
@@ -1608,14 +1608,14 @@ ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
  * @data: pointer to a data buffer containing flow entry's match values/masks
  * @entry_h: pointer to buffer that receives the new flow entry's handle
  */
-enum ice_status
+int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 		   u64 entry_id, u16 vsi_handle, enum ice_flow_priority prio,
 		   void *data, u64 *entry_h)
 {
 	struct ice_flow_entry *e = NULL;
 	struct ice_flow_prof *prof;
-	enum ice_status status;
+	int status;
 
 	/* No flow entry data is expected for RSS */
 	if (!entry_h || (!data && blk != ICE_BLK_RSS))
@@ -1680,12 +1680,12 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
  * @blk: classification stage
  * @entry_h: handle to the flow entry to be removed
  */
-enum ice_status ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk,
-				   u64 entry_h)
+int ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk,
+		       u64 entry_h)
 {
 	struct ice_flow_entry *entry;
 	struct ice_flow_prof *prof;
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (entry_h == ICE_FLOW_ENTRY_HANDLE_INVAL)
 		return ICE_ERR_PARAM;
@@ -1836,7 +1836,7 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
  * header value to set flow field segment for further use in flow
  * profile entry or removal.
  */
-static enum ice_status
+static int
 ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u64 hash_fields,
 			  u32 flow_hdr)
 {
@@ -1899,11 +1899,11 @@ void ice_rem_vsi_rss_list(struct ice_hw *hw, u16 vsi_handle)
  * the VSI from that profile. If the flow profile has no VSIs it will
  * be removed.
  */
-enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
+int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 {
 	const enum ice_block blk = ICE_BLK_RSS;
 	struct ice_flow_prof *p, *t;
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return ICE_ERR_PARAM;
@@ -1966,7 +1966,7 @@ ice_rem_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
  *
  * Assumption: lock has already been acquired for RSS list
  */
-static enum ice_status
+static int
 ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 {
 	struct ice_rss_cfg *r, *rss_cfg;
@@ -2022,14 +2022,14 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
  *
  * Assumption: lock has already been acquired for RSS list
  */
-static enum ice_status
+static int
 ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		     u32 addl_hdrs, u8 segs_cnt)
 {
 	const enum ice_block blk = ICE_BLK_RSS;
 	struct ice_flow_prof *prof = NULL;
 	struct ice_flow_seg_info *segs;
-	enum ice_status status;
+	int status;
 
 	if (!segs_cnt || segs_cnt > ICE_FLOW_SEG_MAX)
 		return ICE_ERR_PARAM;
@@ -2128,11 +2128,11 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  * the input fields to hash on, the flow type and use the VSI number to add
  * a flow entry to the profile.
  */
-enum ice_status
+int
 ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs)
 {
-	enum ice_status status;
+	int status;
 
 	if (hashed_flds == ICE_HASH_INVALID ||
 	    !ice_is_vsi_valid(hw, vsi_handle))
@@ -2159,14 +2159,14 @@ ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  *
  * Assumption: lock has already been acquired for RSS list
  */
-static enum ice_status
+static int
 ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		     u32 addl_hdrs, u8 segs_cnt)
 {
 	const enum ice_block blk = ICE_BLK_RSS;
 	struct ice_flow_seg_info *segs;
 	struct ice_flow_prof *prof;
-	enum ice_status status;
+	int status;
 
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
@@ -2216,11 +2216,11 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  * removed. Calls are made to underlying flow s which will APIs
  * turn build or update buffers for RSS XLT1 section.
  */
-enum ice_status __maybe_unused
+int __maybe_unused
 ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs)
 {
-	enum ice_status status;
+	int status;
 
 	if (hashed_flds == ICE_HASH_INVALID ||
 	    !ice_is_vsi_valid(hw, vsi_handle))
@@ -2279,10 +2279,10 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  * message, convert it to ICE-compatible values, and configure RSS flow
  * profiles.
  */
-enum ice_status
+int
 ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 {
-	enum ice_status status = 0;
+	int status = 0;
 	u64 hash_flds;
 
 	if (avf_hash == ICE_AVF_FLOW_FIELD_INVALID ||
@@ -2368,9 +2368,9 @@ ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
  * @hw: pointer to the hardware structure
  * @vsi_handle: software VSI handle
  */
-enum ice_status ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
+int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 {
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_rss_cfg *r;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 2a2d8c1536cb..818986437001 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -383,17 +383,17 @@ struct ice_rss_cfg {
 	u32 packet_hdr;
 };
 
-enum ice_status
+int
 ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  u64 prof_id, struct ice_flow_seg_info *segs, u8 segs_cnt,
 		  struct ice_flow_prof **prof);
-enum ice_status
+int
 ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
-enum ice_status
+int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 		   u64 entry_id, u16 vsi, enum ice_flow_priority prio,
 		   void *data, u64 *entry_h);
-enum ice_status
+int
 ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_h);
 void
 ice_flow_set_fld(struct ice_flow_seg_info *seg, enum ice_flow_field fld,
@@ -402,14 +402,14 @@ void
 ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 		     u16 val_loc, u16 mask_loc);
 void ice_rem_vsi_rss_list(struct ice_hw *hw, u16 vsi_handle);
-enum ice_status ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
-enum ice_status
+int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
+int
 ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds);
-enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
-enum ice_status
+int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
+int
 ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs);
-enum ice_status
+int
 ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs);
 u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs);
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index e49378893390..803cea9ab7ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -54,7 +54,7 @@ ice_fltr_add_entry_to_list(struct device *dev, struct ice_fltr_info *info,
  *
  * Set VSI with all associated VLANs to given promiscuous mode(s)
  */
-enum ice_status
+int
 ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask)
 {
 	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
@@ -68,7 +68,7 @@ ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc
  *
  * Clear VSI with all associated VLANs to given promiscuous mode(s)
  */
-enum ice_status
+int
 ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask)
 {
 	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
@@ -81,7 +81,7 @@ ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promi
  * @promisc_mask: mask of promiscuous config bits to clear
  * @vid: VLAN ID to clear VLAN promiscuous
  */
-enum ice_status
+int
 ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			   u16 vid)
 {
@@ -95,7 +95,7 @@ ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
  * @promisc_mask: mask of promiscuous config bits
  * @vid: VLAN ID to set VLAN promiscuous
  */
-enum ice_status
+int
 ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 u16 vid)
 {
@@ -107,7 +107,7 @@ ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
  * @vsi: pointer to VSI struct
  * @list: list of filters
  */
-enum ice_status
+int
 ice_fltr_add_mac_list(struct ice_vsi *vsi, struct list_head *list)
 {
 	return ice_add_mac(&vsi->back->hw, list);
@@ -118,7 +118,7 @@ ice_fltr_add_mac_list(struct ice_vsi *vsi, struct list_head *list)
  * @vsi: pointer to VSI struct
  * @list: list of filters
  */
-enum ice_status
+int
 ice_fltr_remove_mac_list(struct ice_vsi *vsi, struct list_head *list)
 {
 	return ice_remove_mac(&vsi->back->hw, list);
@@ -129,7 +129,7 @@ ice_fltr_remove_mac_list(struct ice_vsi *vsi, struct list_head *list)
  * @vsi: pointer to VSI struct
  * @list: list of filters
  */
-static enum ice_status
+static int
 ice_fltr_add_vlan_list(struct ice_vsi *vsi, struct list_head *list)
 {
 	return ice_add_vlan(&vsi->back->hw, list);
@@ -140,7 +140,7 @@ ice_fltr_add_vlan_list(struct ice_vsi *vsi, struct list_head *list)
  * @vsi: pointer to VSI struct
  * @list: list of filters
  */
-static enum ice_status
+static int
 ice_fltr_remove_vlan_list(struct ice_vsi *vsi, struct list_head *list)
 {
 	return ice_remove_vlan(&vsi->back->hw, list);
@@ -151,7 +151,7 @@ ice_fltr_remove_vlan_list(struct ice_vsi *vsi, struct list_head *list)
  * @vsi: pointer to VSI struct
  * @list: list of filters
  */
-static enum ice_status
+static int
 ice_fltr_add_eth_list(struct ice_vsi *vsi, struct list_head *list)
 {
 	return ice_add_eth_mac(&vsi->back->hw, list);
@@ -162,7 +162,7 @@ ice_fltr_add_eth_list(struct ice_vsi *vsi, struct list_head *list)
  * @vsi: pointer to VSI struct
  * @list: list of filters
  */
-static enum ice_status
+static int
 ice_fltr_remove_eth_list(struct ice_vsi *vsi, struct list_head *list)
 {
 	return ice_remove_eth_mac(&vsi->back->hw, list);
@@ -263,13 +263,12 @@ ice_fltr_add_eth_to_list(struct ice_vsi *vsi, struct list_head *list,
  * @action: action to be performed on filter match
  * @mac_action: pointer to add or remove MAC function
  */
-static enum ice_status
+static int
 ice_fltr_prepare_mac(struct ice_vsi *vsi, const u8 *mac,
 		     enum ice_sw_fwd_act_type action,
-		     enum ice_status (*mac_action)(struct ice_vsi *,
-						   struct list_head *))
+		     int (*mac_action)(struct ice_vsi *, struct list_head *))
 {
-	enum ice_status result;
+	int result;
 	LIST_HEAD(tmp_list);
 
 	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action)) {
@@ -289,14 +288,14 @@ ice_fltr_prepare_mac(struct ice_vsi *vsi, const u8 *mac,
  * @action: action to be performed on filter match
  * @mac_action: pointer to add or remove MAC function
  */
-static enum ice_status
+static int
 ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 				   enum ice_sw_fwd_act_type action,
-				   enum ice_status(*mac_action)
+				   int(*mac_action)
 				   (struct ice_vsi *, struct list_head *))
 {
 	u8 broadcast[ETH_ALEN];
-	enum ice_status result;
+	int result;
 	LIST_HEAD(tmp_list);
 
 	eth_broadcast_addr(broadcast);
@@ -318,13 +317,12 @@ ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
  * @action: action to be performed on filter match
  * @vlan_action: pointer to add or remove VLAN function
  */
-static enum ice_status
+static int
 ice_fltr_prepare_vlan(struct ice_vsi *vsi, u16 vlan_id,
 		      enum ice_sw_fwd_act_type action,
-		      enum ice_status (*vlan_action)(struct ice_vsi *,
-						     struct list_head *))
+		      int (*vlan_action)(struct ice_vsi *, struct list_head *))
 {
-	enum ice_status result;
+	int result;
 	LIST_HEAD(tmp_list);
 
 	if (ice_fltr_add_vlan_to_list(vsi, &tmp_list, vlan_id, action))
@@ -343,13 +341,12 @@ ice_fltr_prepare_vlan(struct ice_vsi *vsi, u16 vlan_id,
  * @action: action to be performed on filter match
  * @eth_action: pointer to add or remove ethertype function
  */
-static enum ice_status
+static int
 ice_fltr_prepare_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 		     enum ice_sw_fwd_act_type action,
-		     enum ice_status (*eth_action)(struct ice_vsi *,
-						   struct list_head *))
+		     int (*eth_action)(struct ice_vsi *, struct list_head *))
 {
-	enum ice_status result;
+	int result;
 	LIST_HEAD(tmp_list);
 
 	if (ice_fltr_add_eth_to_list(vsi, &tmp_list, ethertype, flag, action))
@@ -366,8 +363,8 @@ ice_fltr_prepare_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
  * @mac: MAC to add
  * @action: action to be performed on filter match
  */
-enum ice_status ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
-				 enum ice_sw_fwd_act_type action)
+int ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
+		     enum ice_sw_fwd_act_type action)
 {
 	return ice_fltr_prepare_mac(vsi, mac, action, ice_fltr_add_mac_list);
 }
@@ -378,7 +375,7 @@ enum ice_status ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
  * @mac: MAC to add
  * @action: action to be performed on filter match
  */
-enum ice_status
+int
 ice_fltr_add_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 			       enum ice_sw_fwd_act_type action)
 {
@@ -392,8 +389,8 @@ ice_fltr_add_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
  * @mac: filter MAC to remove
  * @action: action to remove
  */
-enum ice_status ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
-				    enum ice_sw_fwd_act_type action)
+int ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
+			enum ice_sw_fwd_act_type action)
 {
 	return ice_fltr_prepare_mac(vsi, mac, action, ice_fltr_remove_mac_list);
 }
@@ -404,8 +401,8 @@ enum ice_status ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
  * @vlan_id: VLAN ID to add
  * @action: action to be performed on filter match
  */
-enum ice_status ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vlan_id,
-				  enum ice_sw_fwd_act_type action)
+int ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vlan_id,
+		      enum ice_sw_fwd_act_type action)
 {
 	return ice_fltr_prepare_vlan(vsi, vlan_id, action,
 				     ice_fltr_add_vlan_list);
@@ -417,8 +414,8 @@ enum ice_status ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vlan_id,
  * @vlan_id: filter VLAN to remove
  * @action: action to remove
  */
-enum ice_status ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vlan_id,
-				     enum ice_sw_fwd_act_type action)
+int ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vlan_id,
+			 enum ice_sw_fwd_act_type action)
 {
 	return ice_fltr_prepare_vlan(vsi, vlan_id, action,
 				     ice_fltr_remove_vlan_list);
@@ -431,8 +428,8 @@ enum ice_status ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vlan_id,
  * @flag: direction of packet to be filtered, Tx or Rx
  * @action: action to be performed on filter match
  */
-enum ice_status ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
-				 enum ice_sw_fwd_act_type action)
+int ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
+		     enum ice_sw_fwd_act_type action)
 {
 	return ice_fltr_prepare_eth(vsi, ethertype, flag, action,
 				    ice_fltr_add_eth_list);
@@ -445,8 +442,8 @@ enum ice_status ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
  * @flag: direction of filter
  * @action: action to remove
  */
-enum ice_status ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype,
-				    u16 flag, enum ice_sw_fwd_act_type action)
+int ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
+			enum ice_sw_fwd_act_type action)
 {
 	return ice_fltr_prepare_eth(vsi, ethertype, flag, action,
 				    ice_fltr_remove_eth_list);
@@ -462,12 +459,12 @@ enum ice_status ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype,
  * @src: source VSI
  * @new_flags: combinations of lb_en and lan_en
  */
-static enum ice_status
+static int
 ice_fltr_update_rule_flags(struct ice_hw *hw, u16 rule_id, u16 recipe_id,
 			   u32 act, u16 type, u16 src, u32 new_flags)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	enum ice_status err;
+	int err;
 	u32 flags_mask;
 
 	s_rule = kzalloc(ICE_SW_RULE_RX_TX_NO_HDR_SIZE, GFP_KERNEL);
@@ -521,7 +518,7 @@ static u32 ice_fltr_build_action(u16 vsi_id)
  * Flags should be a combination of ICE_SINGLE_ACT_LB_ENABLE and
  * ICE_SINGLE_ACT_LAN_ENABLE.
  */
-enum ice_status
+int
 ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
 				u32 new_flags)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index db59cbbeda32..59dc7010a2e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -5,48 +5,52 @@
 #define _ICE_FLTR_H_
 
 void ice_fltr_free_list(struct device *dev, struct list_head *h);
-enum ice_status
+int
 ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask);
-enum ice_status
+int
 ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask);
-enum ice_status
+int
 ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			   u16 vid);
-enum ice_status
+int
 ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 u16 vid);
-enum ice_status
+int
 ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
 			 const u8 *mac, enum ice_sw_fwd_act_type action);
-enum ice_status
+int
 ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
 		 enum ice_sw_fwd_act_type action);
-enum ice_status
+int
 ice_fltr_add_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 			       enum ice_sw_fwd_act_type action);
-enum ice_status
+int
 ice_fltr_add_mac_list(struct ice_vsi *vsi, struct list_head *list);
-enum ice_status
+int
 ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
 		    enum ice_sw_fwd_act_type action);
-enum ice_status
+int
 ice_fltr_remove_mac_list(struct ice_vsi *vsi, struct list_head *list);
 
-enum ice_status
+int
 ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vid,
 		  enum ice_sw_fwd_act_type action);
-enum ice_status
+int
 ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vid,
 		     enum ice_sw_fwd_act_type action);
 
-enum ice_status
+int
 ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 		 enum ice_sw_fwd_act_type action);
-enum ice_status
+int
 ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 		    enum ice_sw_fwd_act_type action);
 void ice_fltr_remove_all(struct ice_vsi *vsi);
-enum ice_status
+
+int
+ice_fltr_update_flags(struct ice_vsi *vsi, u16 rule_id, u16 recipe_id,
+		      u32 new_flags);
+int
 ice_fltr_update_flags_dflt_rule(struct ice_vsi *vsi, u16 rule_id, u8 direction,
 				u32 new_flags);
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 512bfada1f23..1a77a4aa258d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -46,7 +46,7 @@ ice_send_package_data(struct pldmfw *context, const u8 *data, u16 length)
 	struct device *dev = context->dev;
 	struct ice_pf *pf = priv->pf;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u8 *package_data;
 
 	dev_dbg(dev, "Sending PLDM record package data to firmware\n");
@@ -209,7 +209,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 	struct device *dev = context->dev;
 	struct ice_pf *pf = priv->pf;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	size_t length;
 
 	switch (component->identifier) {
@@ -284,7 +284,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u32 completion_offset;
 	int err;
 
@@ -464,7 +464,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
 	struct devlink *devlink;
-	enum ice_status status;
+	int status;
 	int err;
 
 	dev_dbg(dev, "Beginning erase of flash component '%s', module 0x%02x\n", component, module);
@@ -545,7 +545,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u16 completion_retval;
 	int err;
 
@@ -724,7 +724,7 @@ int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw_dev_caps *dev_caps;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 
 	dev_caps = kzalloc(sizeof(*dev_caps), GFP_KERNEL);
 	if (!dev_caps)
@@ -847,7 +847,7 @@ int ice_flash_pldm_image(struct devlink *devlink,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_fwu_priv priv;
-	enum ice_status status;
+	int status;
 	u8 preservation;
 	int err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index e0bbdbaa6f8a..3ff8ca3d35c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -52,7 +52,7 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	/* Read data length in a loop, when it's not 0 the data is ready */
 	for (i = 0; i < ICE_MAX_UBX_READ_TRIES; i++) {
-		enum ice_status status;
+		int status;
 
 		status = ice_aq_read_i2c(hw, link_topo,
 					 ICE_GNSS_UBX_I2C_BUS_ADDR,
@@ -79,7 +79,7 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	/* Read received data */
 	for (i = 0; i < data_len; i += bytes_read) {
-		enum ice_status status;
+		int status;
 
 		u16 bytes_left = data_len - i;
 
@@ -353,7 +353,7 @@ bool ice_gnss_is_gps_present(struct ice_hw *hw)
 		return false;
 
 	if (ice_is_e810t(hw)) {
-		enum ice_status status;
+		int status;
 		u8 data;
 
 		status = ice_read_pca9575_reg_e810t(hw, ICE_PCA9575_P0_IN,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5ddb31580508..b5359dea543d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -278,7 +278,7 @@ static void ice_vsi_delete(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctxt;
-	enum ice_status status;
+	int status;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
@@ -684,7 +684,7 @@ bool ice_is_rdma_ena(struct ice_pf *pf)
 static void ice_vsi_clean_rss_flow_fld(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 
 	if (ice_is_safe_mode(pf))
 		return;
@@ -1460,7 +1460,7 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
@@ -1492,7 +1492,7 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	u16 vsi_handle = vsi->idx, vsi_num = vsi->vsi_num;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
@@ -1664,7 +1664,7 @@ ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
 int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	int err = 0;
 
@@ -2019,7 +2019,7 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	enum ice_status status;
+	int status;
 	int ret = 0;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
@@ -2062,7 +2062,7 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	enum ice_status status;
+	int status;
 	int ret = 0;
 
 	/* do not allow modifying VLAN stripping when a port VLAN is configured
@@ -2315,10 +2315,10 @@ ice_vsi_set_q_vectors_reg_idx(struct ice_vsi *vsi)
  */
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 {
-	enum ice_status (*eth_fltr)(struct ice_vsi *v, u16 type, u16 flag,
-				    enum ice_sw_fwd_act_type act);
+	int (*eth_fltr)(struct ice_vsi *v, u16 type, u16 flag,
+			enum ice_sw_fwd_act_type act);
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
@@ -2360,7 +2360,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 	struct ice_port_info *port_info;
 	struct ice_pf *pf = vsi->back;
 	u32 agg_node_id_start = 0;
-	enum ice_status status;
+	int status;
 
 	/* create (as needed) scheduler aggregator node and move VSI into
 	 * corresponding aggregator node
@@ -2484,7 +2484,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
-	enum ice_status status;
+	int status;
 	struct ice_vsi *vsi;
 	int ret, i;
 
@@ -3159,7 +3159,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	int prev_num_q_vectors = 0;
 	struct ice_vf *vf = NULL;
 	enum ice_vsi_type vtype;
-	enum ice_status status;
+	int status;
 	struct ice_pf *pf;
 	int ret, i;
 
@@ -3388,7 +3388,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctx;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	int i, ret = 0;
 	u8 num_tc = 0;
@@ -3557,7 +3557,7 @@ bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
  */
 int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 {
-	enum ice_status status;
+	int status;
 	struct device *dev;
 
 	if (!sw || !vsi)
@@ -3603,7 +3603,7 @@ int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 int ice_clear_dflt_vsi(struct ice_sw *sw)
 {
 	struct ice_vsi *dflt_vsi;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 
 	if (!sw)
@@ -3695,7 +3695,7 @@ static int ice_get_link_speed_kbps(struct ice_vsi *vsi)
 int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	int speed;
 
@@ -3756,7 +3756,7 @@ int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
 int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	int speed;
 
@@ -3815,7 +3815,7 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_port_info *pi = vsi->port_info;
 	struct ice_hw *hw = pi->hw;
-	enum ice_status status;
+	int status;
 
 	if (vsi->type != ICE_VSI_PF)
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index b051bdf99c12..d75ec451d57e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -105,7 +105,7 @@ void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
 
-enum ice_status
+int
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
 bool ice_is_safe_mode(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e6ba5b2a23ea..d182cbaabf67 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -141,7 +141,7 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
  */
 static int ice_init_mac_fltr(struct ice_pf *pf)
 {
-	enum ice_status status;
+	int status;
 	struct ice_vsi *vsi;
 	u8 *perm_addr;
 
@@ -230,7 +230,7 @@ static bool ice_vsi_fltr_changed(struct ice_vsi *vsi)
  */
 static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 {
-	enum ice_status status;
+	int status;
 
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
@@ -254,7 +254,7 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
  */
 static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 {
-	enum ice_status status;
+	int status;
 
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
@@ -283,7 +283,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	bool promisc_forced_on = false;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status = 0;
+	int status = 0;
 	u32 changed_flags = 0;
 	u8 promisc_m;
 	int err = 0;
@@ -664,7 +664,7 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 {
 	struct ice_aqc_get_phy_caps_data *caps;
 	const char *an_advertised;
-	enum ice_status status;
+	int status;
 	const char *fec_req;
 	const char *speed;
 	const char *fec;
@@ -989,7 +989,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_phy_info *phy_info;
-	enum ice_status status;
+	int status;
 	struct ice_vsi *vsi;
 	u16 old_link_speed;
 	bool old_link;
@@ -1376,7 +1376,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		return 0;
 
 	do {
-		enum ice_status ret;
+		int ret;
 		u16 opcode;
 
 		ret = ice_clean_rq_elem(hw, cq, &event, &pending);
@@ -1835,7 +1835,7 @@ static int ice_init_nvm_phy_type(struct ice_port_info *pi)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_pf *pf = pi->hw->back;
-	enum ice_status status;
+	int status;
 	int err = 0;
 
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
@@ -1946,7 +1946,7 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = pi->hw->back;
-	enum ice_status status;
+	int status;
 	int err = 0;
 
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
@@ -2018,7 +2018,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	struct ice_aqc_set_phy_cfg_data *cfg;
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	int err = 0;
 
 	/* Ensure we have media as we cannot configure a medialess port */
@@ -2518,7 +2518,7 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 		.vsi_map_offset = vsi->alloc_txq,
 		.mapping_mode = ICE_VSI_MAP_CONTIG
 	};
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	int i, v_idx;
 
@@ -3897,7 +3897,7 @@ static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	struct ice_vsi_ctx *ctxt;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 
 	if (!vsi)
@@ -4083,7 +4083,7 @@ static void ice_verify_cacheline_size(struct ice_pf *pf)
  *
  * Returns ICE_SUCCESS on success, else error code
  */
-static enum ice_status ice_send_version(struct ice_pf *pf)
+static int ice_send_version(struct ice_pf *pf)
 {
 	struct ice_driver_ver dv;
 
@@ -4655,7 +4655,7 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	u8 mac_addr[ETH_ALEN];
 	struct ice_vsi *vsi;
 	u8 flags;
@@ -5218,7 +5218,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct sockaddr *addr = pi;
-	enum ice_status status;
+	int status;
 	u8 old_mac[ETH_ALEN];
 	u8 flags = 0;
 	int err = 0;
@@ -5327,7 +5327,7 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
-	enum ice_status status;
+	int status;
 	u16 q_handle;
 	u8 tc;
 
@@ -6363,7 +6363,7 @@ static void ice_vsi_release_all(struct ice_pf *pf)
 static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 {
 	struct device *dev = ice_pf_to_dev(pf);
-	enum ice_status status;
+	int status;
 	int i, err;
 
 	ice_for_each_vsi(pf, i) {
@@ -6449,7 +6449,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status ret;
+	int ret;
 	int err;
 
 	if (test_bit(ICE_DOWN, pf->state))
@@ -6775,7 +6775,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 {
 	struct ice_aq_get_set_rss_lut_params params = {};
 	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status;
+	int status;
 
 	if (!lut)
 		return -EINVAL;
@@ -6806,7 +6806,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
 {
 	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status;
+	int status;
 
 	if (!seed)
 		return -EINVAL;
@@ -6834,7 +6834,7 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 {
 	struct ice_aq_get_set_rss_lut_params params = {};
 	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status;
+	int status;
 
 	if (!lut)
 		return -EINVAL;
@@ -6865,7 +6865,7 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 {
 	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status;
+	int status;
 
 	if (!seed)
 		return -EINVAL;
@@ -6919,7 +6919,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	struct ice_aqc_vsi_props *vsi_props;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	enum ice_status status;
+	int status;
 	int ret = 0;
 
 	vsi_props = &vsi->info;
@@ -6975,7 +6975,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	struct ice_pf *pf = np->vsi->back;
 	struct nlattr *attr, *br_spec;
 	struct ice_hw *hw = &pf->hw;
-	enum ice_status status;
+	int status;
 	struct ice_sw *pf_sw;
 	int rem, v, err = 0;
 
@@ -7213,7 +7213,7 @@ int ice_open_internal(struct net_device *netdev)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_port_info *pi;
-	enum ice_status status;
+	int status;
 	int err;
 
 	if (test_bit(ICE_NEEDS_RESTART, pf->state)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index fee37a5844cf..308d9fd76f01 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -16,7 +16,7 @@
  *
  * Read the NVM using the admin queue commands (0x0701)
  */
-static enum ice_status
+static int
 ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
 		void *data, bool last_command, bool read_shadow_ram,
 		struct ice_sq_cd *cd)
@@ -60,11 +60,11 @@ ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
  * Returns a status code on failure. Note that the data pointer may be
  * partially updated if some reads succeed before a failure.
  */
-enum ice_status
+int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram)
 {
-	enum ice_status status;
+	int status;
 	u32 inlen = *length;
 	u32 bytes_read = 0;
 	bool last_cmd;
@@ -119,7 +119,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
  *
  * Update the NVM using the admin queue commands (0x0703)
  */
-enum ice_status
+int
 ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 		  u16 length, void *data, bool last_command, u8 command_flags,
 		  struct ice_sq_cd *cd)
@@ -158,7 +158,7 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
  *
  * Erase the NVM sector using the admin queue commands (0x0702)
  */
-enum ice_status
+int
 ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
@@ -184,11 +184,11 @@ ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd)
  *
  * Reads one 16 bit word from the Shadow RAM using ice_read_flat_nvm.
  */
-static enum ice_status
+static int
 ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 {
 	u32 bytes = sizeof(u16);
-	enum ice_status status;
+	int status;
 	__le16 data_local;
 
 	/* Note that ice_read_flat_nvm takes into account the 4Kb AdminQ and
@@ -210,7 +210,7 @@ ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
  *
  * This function will request NVM ownership.
  */
-enum ice_status
+int
 ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access)
 {
 	if (hw->flash.blank_nvm_mode)
@@ -318,11 +318,11 @@ static u32 ice_get_flash_bank_offset(struct ice_hw *hw, enum ice_bank_select ban
  * hw->flash.banks data being setup by ice_determine_active_flash_banks()
  * during initialization.
  */
-static enum ice_status
+static int
 ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
 		      u32 offset, u8 *data, u32 length)
 {
-	enum ice_status status;
+	int status;
 	u32 start;
 
 	start = ice_get_flash_bank_offset(hw, bank, module);
@@ -353,10 +353,10 @@ ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
  * Read the specified word from the active NVM module. This includes the CSS
  * header at the start of the NVM module.
  */
-static enum ice_status
+static int
 ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
-	enum ice_status status;
+	int status;
 	__le16 data_local;
 
 	status = ice_read_flash_module(hw, bank, ICE_SR_1ST_NVM_BANK_PTR, offset * sizeof(u16),
@@ -377,7 +377,7 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
  * Read the specified word from the copy of the Shadow RAM found in the
  * specified NVM module.
  */
-static enum ice_status
+static int
 ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
 	return ice_read_nvm_module(hw, bank, ICE_NVM_SR_COPY_WORD_OFFSET + offset, data);
@@ -392,10 +392,10 @@ ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u
  *
  * Read a word from the specified netlist bank.
  */
-static enum ice_status
+static int
 ice_read_netlist_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
-	enum ice_status status;
+	int status;
 	__le16 data_local;
 
 	status = ice_read_flash_module(hw, bank, ICE_SR_NETLIST_BANK_PTR, offset * sizeof(u16),
@@ -414,9 +414,9 @@ ice_read_netlist_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset
  *
  * Reads one 16 bit word from the Shadow RAM using the ice_read_sr_word_aq.
  */
-enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
+int ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
 {
-	enum ice_status status;
+	int status;
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (!status) {
@@ -438,11 +438,11 @@ enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
  * Area (PFA) and returns the TLV pointer and length. The caller can
  * use these to read the variable length TLV value.
  */
-enum ice_status
+int
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type)
 {
-	enum ice_status status;
+	int status;
 	u16 pfa_len, pfa_ptr;
 	u16 next_tlv;
 
@@ -501,11 +501,11 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
  *
  * Reads the part number string from the NVM.
  */
-enum ice_status
+int
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
 {
 	u16 pba_tlv, pba_tlv_len;
-	enum ice_status status;
+	int status;
 	u16 pba_word, pba_size;
 	u16 i;
 
@@ -561,11 +561,11 @@ ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
  * Read the NVM EETRACK ID and map version of the main NVM image bank, filling
  * in the NVM info structure.
  */
-static enum ice_status
+static int
 ice_get_nvm_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_nvm_info *nvm)
 {
 	u16 eetrack_lo, eetrack_hi, ver;
-	enum ice_status status;
+	int status;
 
 	status = ice_read_nvm_sr_copy(hw, bank, ICE_SR_NVM_DEV_STARTER_VER, &ver);
 	if (status) {
@@ -601,7 +601,7 @@ ice_get_nvm_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_nv
  * inactive NVM bank. Used to access version data for a pending update that
  * has not yet been activated.
  */
-enum ice_status ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm)
+int ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm)
 {
 	return ice_get_nvm_ver_info(hw, ICE_INACTIVE_FLASH_BANK, nvm);
 }
@@ -615,12 +615,12 @@ enum ice_status ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info
  * Searches through the Option ROM flash contents to locate the CIVD data for
  * the image.
  */
-static enum ice_status
+static int
 ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
 		       struct ice_orom_civd_info *civd)
 {
 	struct ice_orom_civd_info tmp;
-	enum ice_status status;
+	int status;
 	u32 offset;
 
 	/* The CIVD section is located in the Option ROM aligned to 512 bytes.
@@ -669,11 +669,11 @@ ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
  * Read Option ROM version and security revision from the Option ROM flash
  * section.
  */
-static enum ice_status
+static int
 ice_get_orom_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_orom_info *orom)
 {
 	struct ice_orom_civd_info civd;
-	enum ice_status status;
+	int status;
 	u32 combo_ver;
 
 	status = ice_get_orom_civd_data(hw, bank, &civd);
@@ -700,7 +700,7 @@ ice_get_orom_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_o
  * section of flash. Used to access version data for a pending update that has
  * not yet been activated.
  */
-enum ice_status ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom)
+int ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom)
 {
 	return ice_get_orom_ver_info(hw, ICE_INACTIVE_FLASH_BANK, orom);
 }
@@ -715,12 +715,12 @@ enum ice_status ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_inf
  * Topology section to find the Netlist ID block and extract the relevant
  * information into the netlist version structure.
  */
-static enum ice_status
+static int
 ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
 		     struct ice_netlist_info *netlist)
 {
 	u16 module_id, length, node_count, i;
-	enum ice_status status;
+	int status;
 	u16 *id_blk;
 
 	status = ice_read_netlist_module(hw, bank, ICE_NETLIST_TYPE_OFFSET, &module_id);
@@ -791,7 +791,7 @@ ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
  * extract version data of a pending flash update in order to display the
  * version data.
  */
-enum ice_status ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *netlist)
+int ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *netlist)
 {
 	return ice_get_netlist_info(hw, ICE_INACTIVE_FLASH_BANK, netlist);
 }
@@ -804,10 +804,10 @@ enum ice_status ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netli
  * the actual size is smaller. Use bisection to determine the accessible size
  * of flash memory.
  */
-static enum ice_status ice_discover_flash_size(struct ice_hw *hw)
+static int ice_discover_flash_size(struct ice_hw *hw)
 {
 	u32 min_size = 0, max_size = ICE_AQC_NVM_MAX_OFFSET + 1;
-	enum ice_status status;
+	int status;
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status)
@@ -859,10 +859,10 @@ static enum ice_status ice_discover_flash_size(struct ice_hw *hw)
  * sector size by using the highest bit. The reported pointer value will be in
  * bytes, intended for flat NVM reads.
  */
-static enum ice_status
+static int
 ice_read_sr_pointer(struct ice_hw *hw, u16 offset, u32 *pointer)
 {
-	enum ice_status status;
+	int status;
 	u16 value;
 
 	status = ice_read_sr_word(hw, offset, &value);
@@ -891,10 +891,10 @@ ice_read_sr_pointer(struct ice_hw *hw, u16 offset, u32 *pointer)
  * Each area size word is specified in 4KB sector units. This function reports
  * the size in bytes, intended for flat NVM reads.
  */
-static enum ice_status
+static int
 ice_read_sr_area_size(struct ice_hw *hw, u16 offset, u32 *size)
 {
-	enum ice_status status;
+	int status;
 	u16 value;
 
 	status = ice_read_sr_word(hw, offset, &value);
@@ -917,11 +917,11 @@ ice_read_sr_area_size(struct ice_hw *hw, u16 offset, u32 *size)
  * structure for later use in order to calculate the correct offset to read
  * from the active module.
  */
-static enum ice_status
+static int
 ice_determine_active_flash_banks(struct ice_hw *hw)
 {
 	struct ice_bank_info *banks = &hw->flash.banks;
-	enum ice_status status;
+	int status;
 	u16 ctrl_word;
 
 	status = ice_read_sr_word(hw, ICE_SR_NVM_CTRL_WORD, &ctrl_word);
@@ -997,10 +997,10 @@ ice_determine_active_flash_banks(struct ice_hw *hw)
  * This function reads and populates NVM settings such as Shadow RAM size,
  * max_timeout, and blank_nvm_mode
  */
-enum ice_status ice_init_nvm(struct ice_hw *hw)
+int ice_init_nvm(struct ice_hw *hw)
 {
 	struct ice_flash_info *flash = &hw->flash;
-	enum ice_status status;
+	int status;
 	u32 fla, gens_stat;
 	u8 sr_size;
 
@@ -1060,11 +1060,11 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
  *
  * Verify NVM PFA checksum validity (0x0706)
  */
-enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw)
+int ice_nvm_validate_checksum(struct ice_hw *hw)
 {
 	struct ice_aqc_nvm_checksum *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status)
@@ -1093,7 +1093,7 @@ enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw)
  * Update the control word with the required banks' validity bits
  * and dumps the Shadow RAM to flash (0x0707)
  */
-enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags)
+int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags)
 {
 	struct ice_aqc_nvm *cmd;
 	struct ice_aq_desc desc;
@@ -1113,7 +1113,7 @@ enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags)
  * Update empr (0x0709). This command allows SW to
  * request an EMPR to activate new FW.
  */
-enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw)
+int ice_aq_nvm_update_empr(struct ice_hw *hw)
 {
 	struct ice_aq_desc desc;
 
@@ -1136,7 +1136,7 @@ enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw)
  * as part of the NVM update as the first cmd in the flow.
  */
 
-enum ice_status
+int
 ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
 		     u16 length, struct ice_sq_cd *cd)
 {
@@ -1173,14 +1173,14 @@ ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
  * the TransferFlag is set to End or StartAndEnd.
  */
 
-enum ice_status
+int
 ice_nvm_pass_component_tbl(struct ice_hw *hw, u8 *data, u16 length,
 			   u8 transfer_flag, u8 *comp_response,
 			   u8 *comp_response_code, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_nvm_pass_comp_tbl *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (!data || !comp_response || !comp_response_code)
 		return ICE_ERR_PARAM;
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index c6f05f43d593..ed5165d24cb1 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -12,38 +12,38 @@ struct ice_orom_civd_info {
 	__le16 combo_name[32];	/* Unicode string representing the Combo Image version */
 } __packed;
 
-enum ice_status
+int
 ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_nvm(struct ice_hw *hw);
-enum ice_status
+int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram);
-enum ice_status
+int
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type);
-enum ice_status
+int
 ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom);
-enum ice_status
+int
 ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm);
-enum ice_status
+int
 ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *netlist);
-enum ice_status
+int
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size);
-enum ice_status ice_init_nvm(struct ice_hw *hw);
-enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
-enum ice_status
+int ice_init_nvm(struct ice_hw *hw);
+int ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
+int
 ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 		  u16 length, void *data, bool last_command, u8 command_flags,
 		  struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd);
-enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw);
-enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags);
-enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw);
-enum ice_status
+int ice_nvm_validate_checksum(struct ice_hw *hw);
+int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags);
+int ice_aq_nvm_update_empr(struct ice_hw *hw);
+int
 ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
 		     u16 length, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_nvm_pass_component_tbl(struct ice_hw *hw, u8 *data, u16 length,
 			   u8 transfer_flag, u8 *comp_response,
 			   u8 *comp_response_code, struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 44cc0ca3d439..b742f23f764a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -26,7 +26,7 @@ static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 static int
 ice_get_sma_config_e810t(struct ice_hw *hw, struct ptp_pin_desc *ptp_pins)
 {
-	enum ice_status status;
+	int status;
 	u8 data, i;
 
 	/* Read initial pin state */
@@ -104,7 +104,7 @@ static int
 ice_ptp_set_sma_config_e810t(struct ice_hw *hw,
 			     const struct ptp_pin_desc *ptp_pins)
 {
-	enum ice_status status;
+	int status;
 	u8 data;
 
 	/* SMA1 and UFL1 cannot be set to TX at the same time */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ca88017598e1..fe13e0afd5d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -796,7 +796,7 @@ int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
 {
 	struct ice_aqc_link_topo_addr link_topo;
-	enum ice_status status;
+	int status;
 	__le16 addr;
 	u16 handle;
 	int err;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ee8ac2849d7c..5c16f2e7e85a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -32,7 +32,7 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
-enum ice_status
+int
 ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index a3b957621a03..37fa7d8f4e73 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -11,7 +11,7 @@
  * This function inserts the root node of the scheduling tree topology
  * to the SW DB.
  */
-static enum ice_status
+static int
 ice_sched_add_root_node(struct ice_port_info *pi,
 			struct ice_aqc_txsched_elem_data *info)
 {
@@ -96,14 +96,14 @@ ice_sched_find_node_by_teid(struct ice_sched_node *start_node, u32 teid)
  *
  * This function sends a scheduling elements cmd (cmd_opc)
  */
-static enum ice_status
+static int
 ice_aqc_send_sched_elem_cmd(struct ice_hw *hw, enum ice_adminq_opc cmd_opc,
 			    u16 elems_req, void *buf, u16 buf_size,
 			    u16 *elems_resp, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_sched_elem_cmd *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.sched_elem_cmd;
 	ice_fill_dflt_direct_cmd_desc(&desc, cmd_opc);
@@ -127,7 +127,7 @@ ice_aqc_send_sched_elem_cmd(struct ice_hw *hw, enum ice_adminq_opc cmd_opc,
  *
  * Query scheduling elements (0x0404)
  */
-enum ice_status
+int
 ice_aq_query_sched_elems(struct ice_hw *hw, u16 elems_req,
 			 struct ice_aqc_txsched_elem_data *buf, u16 buf_size,
 			 u16 *elems_ret, struct ice_sq_cd *cd)
@@ -145,14 +145,14 @@ ice_aq_query_sched_elems(struct ice_hw *hw, u16 elems_req,
  *
  * This function inserts a scheduler node to the SW DB.
  */
-enum ice_status
+int
 ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 		   struct ice_aqc_txsched_elem_data *info)
 {
 	struct ice_aqc_txsched_elem_data elem;
 	struct ice_sched_node *parent;
 	struct ice_sched_node *node;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 
 	if (!pi)
@@ -209,7 +209,7 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
  *
  * Delete scheduling elements (0x040F)
  */
-static enum ice_status
+static int
 ice_aq_delete_sched_elems(struct ice_hw *hw, u16 grps_req,
 			  struct ice_aqc_delete_elem *buf, u16 buf_size,
 			  u16 *grps_del, struct ice_sq_cd *cd)
@@ -228,13 +228,13 @@ ice_aq_delete_sched_elems(struct ice_hw *hw, u16 grps_req,
  *
  * This function remove nodes from HW
  */
-static enum ice_status
+static int
 ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
 		       u16 num_nodes, u32 *node_teids)
 {
 	struct ice_aqc_delete_elem *buf;
 	u16 i, num_groups_removed = 0;
-	enum ice_status status;
+	int status;
 	u16 buf_size;
 
 	buf_size = struct_size(buf, teid, num_nodes);
@@ -369,14 +369,14 @@ void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node)
  *
  * Get default scheduler topology (0x400)
  */
-static enum ice_status
+static int
 ice_aq_get_dflt_topo(struct ice_hw *hw, u8 lport,
 		     struct ice_aqc_get_topo_elem *buf, u16 buf_size,
 		     u8 *num_branches, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_get_topo *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.get_topo;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_dflt_topo);
@@ -399,7 +399,7 @@ ice_aq_get_dflt_topo(struct ice_hw *hw, u8 lport,
  *
  * Add scheduling elements (0x0401)
  */
-static enum ice_status
+static int
 ice_aq_add_sched_elems(struct ice_hw *hw, u16 grps_req,
 		       struct ice_aqc_add_elem *buf, u16 buf_size,
 		       u16 *grps_added, struct ice_sq_cd *cd)
@@ -420,7 +420,7 @@ ice_aq_add_sched_elems(struct ice_hw *hw, u16 grps_req,
  *
  * Configure scheduling elements (0x0403)
  */
-static enum ice_status
+static int
 ice_aq_cfg_sched_elems(struct ice_hw *hw, u16 elems_req,
 		       struct ice_aqc_txsched_elem_data *buf, u16 buf_size,
 		       u16 *elems_cfgd, struct ice_sq_cd *cd)
@@ -441,7 +441,7 @@ ice_aq_cfg_sched_elems(struct ice_hw *hw, u16 elems_req,
  *
  * Move scheduling elements (0x0408)
  */
-static enum ice_status
+static int
 ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
 			struct ice_aqc_move_elem *buf, u16 buf_size,
 			u16 *grps_movd, struct ice_sq_cd *cd)
@@ -462,7 +462,7 @@ ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
  *
  * Suspend scheduling elements (0x0409)
  */
-static enum ice_status
+static int
 ice_aq_suspend_sched_elems(struct ice_hw *hw, u16 elems_req, __le32 *buf,
 			   u16 buf_size, u16 *elems_ret, struct ice_sq_cd *cd)
 {
@@ -482,7 +482,7 @@ ice_aq_suspend_sched_elems(struct ice_hw *hw, u16 elems_req, __le32 *buf,
  *
  * resume scheduling elements (0x040A)
  */
-static enum ice_status
+static int
 ice_aq_resume_sched_elems(struct ice_hw *hw, u16 elems_req, __le32 *buf,
 			  u16 buf_size, u16 *elems_ret, struct ice_sq_cd *cd)
 {
@@ -500,7 +500,7 @@ ice_aq_resume_sched_elems(struct ice_hw *hw, u16 elems_req, __le32 *buf,
  *
  * Query scheduler resource allocation (0x0412)
  */
-static enum ice_status
+static int
 ice_aq_query_sched_res(struct ice_hw *hw, u16 buf_size,
 		       struct ice_aqc_query_txsched_res_resp *buf,
 		       struct ice_sq_cd *cd)
@@ -520,12 +520,12 @@ ice_aq_query_sched_res(struct ice_hw *hw, u16 buf_size,
  *
  * This function suspends or resumes HW nodes
  */
-static enum ice_status
+static int
 ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
 			       bool suspend)
 {
 	u16 i, buf_size, num_elem_ret = 0;
-	enum ice_status status;
+	int status;
 	__le32 *buf;
 
 	buf_size = sizeof(*buf) * num_nodes;
@@ -558,7 +558,7 @@ ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
  * @tc: TC number
  * @new_numqs: number of queues
  */
-static enum ice_status
+static int
 ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 {
 	struct ice_vsi_ctx *vsi_ctx;
@@ -602,7 +602,7 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
  * @tc: TC number
  * @new_numqs: number of queues
  */
-static enum ice_status
+static int
 ice_alloc_rdma_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 {
 	struct ice_vsi_ctx *vsi_ctx;
@@ -651,14 +651,14 @@ ice_alloc_rdma_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
  *
  * RL profile function to add, query, or remove profile(s)
  */
-static enum ice_status
+static int
 ice_aq_rl_profile(struct ice_hw *hw, enum ice_adminq_opc opcode,
 		  u16 num_profiles, struct ice_aqc_rl_profile_elem *buf,
 		  u16 buf_size, u16 *num_processed, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_rl_profile *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.rl_profile;
 
@@ -682,7 +682,7 @@ ice_aq_rl_profile(struct ice_hw *hw, enum ice_adminq_opc opcode,
  *
  * Add RL profile (0x0410)
  */
-static enum ice_status
+static int
 ice_aq_add_rl_profile(struct ice_hw *hw, u16 num_profiles,
 		      struct ice_aqc_rl_profile_elem *buf, u16 buf_size,
 		      u16 *num_profiles_added, struct ice_sq_cd *cd)
@@ -702,7 +702,7 @@ ice_aq_add_rl_profile(struct ice_hw *hw, u16 num_profiles,
  *
  * Remove RL profile (0x0415)
  */
-static enum ice_status
+static int
 ice_aq_remove_rl_profile(struct ice_hw *hw, u16 num_profiles,
 			 struct ice_aqc_rl_profile_elem *buf, u16 buf_size,
 			 u16 *num_profiles_removed, struct ice_sq_cd *cd)
@@ -721,13 +721,13 @@ ice_aq_remove_rl_profile(struct ice_hw *hw, u16 num_profiles,
  * its associated parameters from HW DB,and locally. The caller needs to
  * hold scheduler lock.
  */
-static enum ice_status
+static int
 ice_sched_del_rl_profile(struct ice_hw *hw,
 			 struct ice_aqc_rl_profile_info *rl_info)
 {
 	struct ice_aqc_rl_profile_elem *buf;
 	u16 num_profiles_removed;
-	enum ice_status status;
+	int status;
 	u16 num_profiles = 1;
 
 	if (rl_info->prof_id_ref != 0)
@@ -763,7 +763,7 @@ static void ice_sched_clear_rl_prof(struct ice_port_info *pi)
 		list_for_each_entry_safe(rl_prof_elem, rl_prof_tmp,
 					 &pi->rl_prof_list[ln], list_entry) {
 			struct ice_hw *hw = pi->hw;
-			enum ice_status status;
+			int status;
 
 			rl_prof_elem->prof_id_ref = 0;
 			status = ice_sched_del_rl_profile(hw, rl_prof_elem);
@@ -875,7 +875,7 @@ void ice_sched_cleanup_all(struct ice_hw *hw)
  *
  * This function add nodes to HW as well as to SW DB for a given layer
  */
-static enum ice_status
+static int
 ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 		    struct ice_sched_node *parent, u8 layer, u16 num_nodes,
 		    u16 *num_nodes_added, u32 *first_node_teid)
@@ -883,7 +883,7 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 	struct ice_sched_node *prev, *new_node;
 	struct ice_aqc_add_elem *buf;
 	u16 i, num_groups_added = 0;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	size_t buf_size;
 	u32 teid;
@@ -974,7 +974,7 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
  *
  * Add nodes into specific HW layer.
  */
-static enum ice_status
+static int
 ice_sched_add_nodes_to_hw_layer(struct ice_port_info *pi,
 				struct ice_sched_node *tc_node,
 				struct ice_sched_node *parent, u8 layer,
@@ -1018,7 +1018,7 @@ ice_sched_add_nodes_to_hw_layer(struct ice_port_info *pi,
  *
  * This function add nodes to a given layer.
  */
-static enum ice_status
+static int
 ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 			     struct ice_sched_node *tc_node,
 			     struct ice_sched_node *parent, u8 layer,
@@ -1027,7 +1027,7 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 {
 	u32 *first_teid_ptr = first_node_teid;
 	u16 new_num_nodes = num_nodes;
-	enum ice_status status = 0;
+	int status = 0;
 
 	*num_nodes_added = 0;
 	while (*num_nodes_added < num_nodes) {
@@ -1152,7 +1152,7 @@ static void ice_rm_dflt_leaf_node(struct ice_port_info *pi)
 	}
 	if (node && node->info.data.elem_type == ICE_AQC_ELEM_TYPE_LEAF) {
 		u32 teid = le32_to_cpu(node->info.node_teid);
-		enum ice_status status;
+		int status;
 
 		/* remove the default leaf node */
 		status = ice_sched_remove_elems(pi->hw, node->parent, 1, &teid);
@@ -1198,10 +1198,10 @@ static void ice_sched_rm_dflt_nodes(struct ice_port_info *pi)
  * resources, default topology created by firmware and storing the information
  * in SW DB.
  */
-enum ice_status ice_sched_init_port(struct ice_port_info *pi)
+int ice_sched_init_port(struct ice_port_info *pi)
 {
 	struct ice_aqc_get_topo_elem *buf;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 	u8 num_branches;
 	u16 num_elems;
@@ -1300,10 +1300,10 @@ enum ice_status ice_sched_init_port(struct ice_port_info *pi)
  *
  * query FW for allocated scheduler resources and store in HW struct
  */
-enum ice_status ice_sched_query_res_alloc(struct ice_hw *hw)
+int ice_sched_query_res_alloc(struct ice_hw *hw)
 {
 	struct ice_aqc_query_txsched_res_resp *buf;
-	enum ice_status status = 0;
+	int status = 0;
 	__le16 max_sibl;
 	u16 i;
 
@@ -1614,14 +1614,14 @@ ice_sched_calc_vsi_child_nodes(struct ice_hw *hw, u16 num_qs, u16 *num_nodes)
  * This function adds the VSI child nodes to tree. It gets called for
  * LAN and RDMA separately.
  */
-static enum ice_status
+static int
 ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 			      struct ice_sched_node *tc_node, u16 *num_nodes,
 			      u8 owner)
 {
 	struct ice_sched_node *parent, *node;
 	struct ice_hw *hw = pi->hw;
-	enum ice_status status;
+	int status;
 	u32 first_node_teid;
 	u16 num_added = 0;
 	u8 i, qgl, vsil;
@@ -1717,12 +1717,12 @@ ice_sched_calc_vsi_support_nodes(struct ice_port_info *pi,
  * This function adds the VSI supported nodes into Tx tree including the
  * VSI, its parent and intermediate nodes in below layers
  */
-static enum ice_status
+static int
 ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 				struct ice_sched_node *tc_node, u16 *num_nodes)
 {
 	struct ice_sched_node *parent = tc_node;
-	enum ice_status status;
+	int status;
 	u32 first_node_teid;
 	u16 num_added = 0;
 	u8 i, vsil;
@@ -1766,7 +1766,7 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
  *
  * This function adds a new VSI into scheduler tree
  */
-static enum ice_status
+static int
 ice_sched_add_vsi_to_topo(struct ice_port_info *pi, u16 vsi_handle, u8 tc)
 {
 	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
@@ -1794,7 +1794,7 @@ ice_sched_add_vsi_to_topo(struct ice_port_info *pi, u16 vsi_handle, u8 tc)
  *
  * This function updates the VSI child nodes based on the number of queues
  */
-static enum ice_status
+static int
 ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 				 u8 tc, u16 new_numqs, u8 owner)
 {
@@ -1802,7 +1802,7 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	struct ice_sched_node *vsi_node;
 	struct ice_sched_node *tc_node;
 	struct ice_vsi_ctx *vsi_ctx;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	u16 prev_numqs;
 
@@ -1869,13 +1869,13 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
  * enabled and VSI is in suspended state then resume the VSI back. If TC is
  * disabled then suspend the VSI if it is not already.
  */
-enum ice_status
+int
 ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 		  u8 owner, bool enable)
 {
 	struct ice_sched_node *vsi_node, *tc_node;
 	struct ice_vsi_ctx *vsi_ctx;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw = pi->hw;
 
 	ice_debug(pi->hw, ICE_DBG_SCHED, "add/config VSI %d\n", vsi_handle);
@@ -1993,10 +1993,10 @@ static bool ice_sched_is_leaf_node_present(struct ice_sched_node *node)
  * This function removes the VSI and its LAN or RDMA children nodes from the
  * scheduler tree.
  */
-static enum ice_status
+static int
 ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 {
-	enum ice_status status = ICE_ERR_PARAM;
+	int status = ICE_ERR_PARAM;
 	struct ice_vsi_ctx *vsi_ctx;
 	u8 i;
 
@@ -2065,7 +2065,7 @@ ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
  * This function clears the VSI and its LAN children nodes from scheduler tree
  * for all TCs.
  */
-enum ice_status ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle)
+int ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle)
 {
 	return ice_sched_rm_vsi_cfg(pi, vsi_handle, ICE_SCHED_NODE_OWNER_LAN);
 }
@@ -2078,7 +2078,7 @@ enum ice_status ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle)
  * This function clears the VSI and its RDMA children nodes from scheduler tree
  * for all TCs.
  */
-enum ice_status ice_rm_vsi_rdma_cfg(struct ice_port_info *pi, u16 vsi_handle)
+int ice_rm_vsi_rdma_cfg(struct ice_port_info *pi, u16 vsi_handle)
 {
 	return ice_sched_rm_vsi_cfg(pi, vsi_handle, ICE_SCHED_NODE_OWNER_RDMA);
 }
@@ -2188,13 +2188,13 @@ ice_sched_update_parent(struct ice_sched_node *new_parent,
  *
  * This function move the child nodes to a given parent.
  */
-static enum ice_status
+static int
 ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 		     u16 num_items, u32 *list)
 {
 	struct ice_aqc_move_elem *buf;
 	struct ice_sched_node *node;
-	enum ice_status status = 0;
+	int status = 0;
 	u16 i, grps_movd = 0;
 	struct ice_hw *hw;
 	u16 buf_len;
@@ -2251,14 +2251,14 @@ ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
  * This function moves a VSI to an aggregator node or its subtree.
  * Intermediate nodes may be created if required.
  */
-static enum ice_status
+static int
 ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
 			  u8 tc)
 {
 	struct ice_sched_node *vsi_node, *agg_node, *tc_node, *parent;
 	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
 	u32 first_node_teid, vsi_teid;
-	enum ice_status status;
+	int status;
 	u16 num_nodes_added;
 	u8 aggl, vsil, i;
 
@@ -2333,14 +2333,14 @@ ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
  * aggregator VSI info based on passed in boolean parameter rm_vsi_info. The
  * caller holds the scheduler lock.
  */
-static enum ice_status
+static int
 ice_move_all_vsi_to_dflt_agg(struct ice_port_info *pi,
 			     struct ice_sched_agg_info *agg_info, u8 tc,
 			     bool rm_vsi_info)
 {
 	struct ice_sched_agg_vsi_info *agg_vsi_info;
 	struct ice_sched_agg_vsi_info *tmp;
-	enum ice_status status = 0;
+	int status = 0;
 
 	list_for_each_entry_safe(agg_vsi_info, tmp, &agg_info->agg_vsi_list,
 				 list_entry) {
@@ -2397,7 +2397,7 @@ ice_sched_is_agg_inuse(struct ice_port_info *pi, struct ice_sched_node *node)
  * This function removes the aggregator node and intermediate nodes if any
  * from the given TC
  */
-static enum ice_status
+static int
 ice_sched_rm_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 {
 	struct ice_sched_node *tc_node, *agg_node;
@@ -2445,11 +2445,11 @@ ice_sched_rm_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
  * the aggregator configuration completely for requested TC. The caller needs
  * to hold the scheduler lock.
  */
-static enum ice_status
+static int
 ice_rm_agg_cfg_tc(struct ice_port_info *pi, struct ice_sched_agg_info *agg_info,
 		  u8 tc, bool rm_vsi_info)
 {
-	enum ice_status status = 0;
+	int status = 0;
 
 	/* If nothing to remove - return success */
 	if (!ice_is_tc_ena(agg_info->tc_bitmap[0], tc))
@@ -2478,7 +2478,7 @@ ice_rm_agg_cfg_tc(struct ice_port_info *pi, struct ice_sched_agg_info *agg_info,
  * Save aggregator TC bitmap. This function needs to be called with scheduler
  * lock held.
  */
-static enum ice_status
+static int
 ice_save_agg_tc_bitmap(struct ice_port_info *pi, u32 agg_id,
 		       unsigned long *tc_bitmap)
 {
@@ -2501,12 +2501,12 @@ ice_save_agg_tc_bitmap(struct ice_port_info *pi, u32 agg_id,
  * This function creates an aggregator node and intermediate nodes if required
  * for the given TC
  */
-static enum ice_status
+static int
 ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 {
 	struct ice_sched_node *parent, *agg_node, *tc_node;
 	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	u32 first_node_teid;
 	u16 num_nodes_added;
@@ -2591,12 +2591,12 @@ ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
  * resources and remove aggregator ID.
  * This function needs to be called with scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 		  enum ice_agg_type agg_type, unsigned long *tc_bitmap)
 {
 	struct ice_sched_agg_info *agg_info;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	u8 tc;
 
@@ -2653,12 +2653,12 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
  *
  * This function configures aggregator node(s).
  */
-enum ice_status
+int
 ice_cfg_agg(struct ice_port_info *pi, u32 agg_id, enum ice_agg_type agg_type,
 	    u8 tc_bitmap)
 {
 	unsigned long bitmap = tc_bitmap;
-	enum ice_status status;
+	int status;
 
 	mutex_lock(&pi->sched_lock);
 	status = ice_sched_cfg_agg(pi, agg_id, agg_type,
@@ -2724,7 +2724,7 @@ ice_get_vsi_agg_info(struct ice_hw *hw, u16 vsi_handle)
  * Save VSI to aggregator TC bitmap. This function needs to call with scheduler
  * lock held.
  */
-static enum ice_status
+static int
 ice_save_agg_vsi_tc_bitmap(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
 			   unsigned long *tc_bitmap)
 {
@@ -2754,13 +2754,13 @@ ice_save_agg_vsi_tc_bitmap(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
  * already associated to the aggregator node then no operation is performed on
  * the tree. This function needs to be called with scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 			   u16 vsi_handle, unsigned long *tc_bitmap)
 {
 	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
 	struct ice_sched_agg_info *agg_info, *old_agg_info;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	u8 tc;
 
@@ -2851,12 +2851,12 @@ static void ice_sched_rm_unused_rl_prof(struct ice_port_info *pi)
  * returns success or error on config sched element failure. The caller
  * needs to hold scheduler lock.
  */
-static enum ice_status
+static int
 ice_sched_update_elem(struct ice_hw *hw, struct ice_sched_node *node,
 		      struct ice_aqc_txsched_elem_data *info)
 {
 	struct ice_aqc_txsched_elem_data buf;
-	enum ice_status status;
+	int status;
 	u16 elem_cfgd = 0;
 	u16 num_elems = 1;
 
@@ -2893,7 +2893,7 @@ ice_sched_update_elem(struct ice_hw *hw, struct ice_sched_node *node,
  *
  * This function configures node element's BW allocation.
  */
-static enum ice_status
+static int
 ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
 			    enum ice_rl_type rl_type, u16 bw_alloc)
 {
@@ -2925,12 +2925,12 @@ ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
  *
  * Move or associate VSI to a new or default aggregator node.
  */
-enum ice_status
+int
 ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
 		    u8 tc_bitmap)
 {
 	unsigned long bitmap = tc_bitmap;
-	enum ice_status status;
+	int status;
 
 	mutex_lock(&pi->sched_lock);
 	status = ice_sched_assoc_vsi_to_agg(pi, agg_id, vsi_handle,
@@ -3061,11 +3061,11 @@ static u16 ice_sched_calc_wakeup(struct ice_hw *hw, s32 bw)
  *
  * This function converts the BW to profile structure format.
  */
-static enum ice_status
+static int
 ice_sched_bw_to_rl_profile(struct ice_hw *hw, u32 bw,
 			   struct ice_aqc_rl_profile_elem *profile)
 {
-	enum ice_status status = ICE_ERR_PARAM;
+	int status = ICE_ERR_PARAM;
 	s64 bytes_per_sec, ts_rate, mv_tmp;
 	bool found = false;
 	s32 encode = 0;
@@ -3139,7 +3139,7 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 	struct ice_aqc_rl_profile_info *rl_prof_elem;
 	u16 profiles_added = 0, num_profiles = 1;
 	struct ice_aqc_rl_profile_elem *buf;
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 	u8 profile_type;
 
@@ -3212,7 +3212,7 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
  *
  * This function configures node element's BW limit.
  */
-static enum ice_status
+static int
 ice_sched_cfg_node_bw_lmt(struct ice_hw *hw, struct ice_sched_node *node,
 			  enum ice_rl_type rl_type, u16 rl_prof_id)
 {
@@ -3383,12 +3383,12 @@ ice_sched_get_srl_node(struct ice_sched_node *node, u8 srl_layer)
  * 'profile_type' and profile ID as 'profile_id'. The caller needs to hold
  * scheduler lock.
  */
-static enum ice_status
+static int
 ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 			u16 profile_id)
 {
 	struct ice_aqc_rl_profile_info *rl_prof_elem;
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
 		return ICE_ERR_PARAM;
@@ -3424,12 +3424,12 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
  * type CIR, EIR, or SRL to default. This function needs to be called
  * with the scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_set_node_bw_dflt(struct ice_port_info *pi,
 			   struct ice_sched_node *node,
 			   enum ice_rl_type rl_type, u8 layer_num)
 {
-	enum ice_status status;
+	int status;
 	struct ice_hw *hw;
 	u8 profile_type;
 	u16 rl_prof_id;
@@ -3481,7 +3481,7 @@ ice_sched_set_node_bw_dflt(struct ice_port_info *pi,
  * them may be set for any given element. This function needs to be called
  * with the scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_set_eir_srl_excl(struct ice_port_info *pi,
 			   struct ice_sched_node *node,
 			   u8 layer_num, enum ice_rl_type rl_type, u32 bw)
@@ -3525,12 +3525,12 @@ ice_sched_set_eir_srl_excl(struct ice_port_info *pi,
  * node's RL profile ID of type CIR, EIR, or SRL, and removes old profile
  * ID from local database. The caller needs to hold scheduler lock.
  */
-static enum ice_status
+static int
 ice_sched_set_node_bw(struct ice_port_info *pi, struct ice_sched_node *node,
 		      enum ice_rl_type rl_type, u32 bw, u8 layer_num)
 {
 	struct ice_aqc_rl_profile_info *rl_prof_info;
-	enum ice_status status = ICE_ERR_PARAM;
+	int status = ICE_ERR_PARAM;
 	struct ice_hw *hw = pi->hw;
 	u16 old_id, rl_prof_id;
 
@@ -3571,12 +3571,12 @@ ice_sched_set_node_bw(struct ice_port_info *pi, struct ice_sched_node *node,
  * It updates node's BW limit parameters like BW RL profile ID of type CIR,
  * EIR, or SRL. The caller needs to hold scheduler lock.
  */
-static enum ice_status
+static int
 ice_sched_set_node_bw_lmt(struct ice_port_info *pi, struct ice_sched_node *node,
 			  enum ice_rl_type rl_type, u32 bw)
 {
 	struct ice_sched_node *cfg_node = node;
-	enum ice_status status;
+	int status;
 
 	struct ice_hw *hw;
 	u8 layer_num;
@@ -3620,7 +3620,7 @@ ice_sched_set_node_bw_lmt(struct ice_port_info *pi, struct ice_sched_node *node,
  * type CIR, EIR, or SRL to default. This function needs to be called
  * with the scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_set_node_bw_dflt_lmt(struct ice_port_info *pi,
 			       struct ice_sched_node *node,
 			       enum ice_rl_type rl_type)
@@ -3638,7 +3638,7 @@ ice_sched_set_node_bw_dflt_lmt(struct ice_port_info *pi,
  * behalf of the requested node (first argument). This function needs to be
  * called with scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_validate_srl_node(struct ice_sched_node *node, u8 sel_layer)
 {
 	/* SRL profiles are not available on all layers. Check if the
@@ -3664,7 +3664,7 @@ ice_sched_validate_srl_node(struct ice_sched_node *node, u8 sel_layer)
  *
  * Save BW information of queue type node for post replay use.
  */
-static enum ice_status
+static int
 ice_sched_save_q_bw(struct ice_q_ctx *q_ctx, enum ice_rl_type rl_type, u32 bw)
 {
 	switch (rl_type) {
@@ -3694,11 +3694,11 @@ ice_sched_save_q_bw(struct ice_q_ctx *q_ctx, enum ice_rl_type rl_type, u32 bw)
  *
  * This function sets BW limit of queue scheduling node.
  */
-static enum ice_status
+static int
 ice_sched_set_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		       u16 q_handle, enum ice_rl_type rl_type, u32 bw)
 {
-	enum ice_status status = ICE_ERR_PARAM;
+	int status = ICE_ERR_PARAM;
 	struct ice_sched_node *node;
 	struct ice_q_ctx *q_ctx;
 
@@ -3757,7 +3757,7 @@ ice_sched_set_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
  *
  * This function configures BW limit of queue scheduling node.
  */
-enum ice_status
+int
 ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		 u16 q_handle, enum ice_rl_type rl_type, u32 bw)
 {
@@ -3775,7 +3775,7 @@ ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
  *
  * This function configures BW default limit of queue scheduling node.
  */
-enum ice_status
+int
 ice_cfg_q_bw_dflt_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		      u16 q_handle, enum ice_rl_type rl_type)
 {
@@ -3843,12 +3843,12 @@ ice_sched_get_node_by_id_type(struct ice_port_info *pi, u32 id,
  * This function sets BW limit of VSI or Aggregator scheduling node
  * based on TC information from passed in argument BW.
  */
-static enum ice_status
+int
 ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw)
 {
-	enum ice_status status = ICE_ERR_PARAM;
+	int status = ICE_ERR_PARAM;
 	struct ice_sched_node *node;
 
 	if (!pi)
@@ -3884,7 +3884,7 @@ ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
  * This function configures BW limit of VSI scheduling node based on TC
  * information.
  */
-enum ice_status
+int
 ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			  enum ice_rl_type rl_type, u32 bw)
 {
@@ -3903,7 +3903,7 @@ ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
  * This function configures default BW limit of VSI scheduling node based on TC
  * information.
  */
-enum ice_status
+int
 ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			       enum ice_rl_type rl_type)
 {
@@ -3922,7 +3922,7 @@ ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
  * burst size value is used for future rate limit calls. It doesn't change the
  * existing or previously created RL profiles.
  */
-enum ice_status ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes)
+int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes)
 {
 	u16 burst_size_to_prog;
 
@@ -3963,13 +3963,13 @@ enum ice_status ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes)
  * This function configures node element's priority value. It
  * needs to be called with scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_replay_node_prio(struct ice_hw *hw, struct ice_sched_node *node,
 			   u8 priority)
 {
 	struct ice_aqc_txsched_elem_data buf;
 	struct ice_aqc_txsched_elem *data;
-	enum ice_status status;
+	int status;
 
 	buf = node->info;
 	data = &buf.data;
@@ -3990,12 +3990,12 @@ ice_sched_replay_node_prio(struct ice_hw *hw, struct ice_sched_node *node,
  * This function restores node's BW from bw_t_info. The caller needs
  * to hold the scheduler lock.
  */
-static enum ice_status
+static int
 ice_sched_replay_node_bw(struct ice_hw *hw, struct ice_sched_node *node,
 			 struct ice_bw_type_info *bw_t_info)
 {
 	struct ice_port_info *pi = hw->port_info;
-	enum ice_status status = ICE_ERR_PARAM;
+	int status = ICE_ERR_PARAM;
 	u16 bw_alloc;
 
 	if (!node)
@@ -4083,7 +4083,7 @@ void ice_sched_replay_agg(struct ice_hw *hw)
 		if (!bitmap_equal(agg_info->tc_bitmap, agg_info->replay_tc_bitmap,
 				  ICE_MAX_TRAFFIC_CLASS)) {
 			DECLARE_BITMAP(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
-			enum ice_status status;
+			int status;
 
 			bitmap_zero(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
 			ice_sched_get_ena_tc_bitmap(pi,
@@ -4137,14 +4137,14 @@ void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw)
  * their node bandwidth information. This function needs to be called with
  * scheduler lock held.
  */
-static enum ice_status
+static int
 ice_sched_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
 {
 	DECLARE_BITMAP(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
 	struct ice_sched_agg_vsi_info *agg_vsi_info;
 	struct ice_port_info *pi = hw->port_info;
 	struct ice_sched_agg_info *agg_info;
-	enum ice_status status;
+	int status;
 
 	bitmap_zero(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
 	if (!ice_is_vsi_valid(hw, vsi_handle))
@@ -4179,10 +4179,10 @@ ice_sched_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
  * This function replays association of VSI to aggregator type nodes, and
  * node bandwidth information.
  */
-enum ice_status ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
+int ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
 {
 	struct ice_port_info *pi = hw->port_info;
-	enum ice_status status;
+	int status;
 
 	mutex_lock(&pi->sched_lock);
 	status = ice_sched_replay_vsi_agg(hw, vsi_handle);
@@ -4198,7 +4198,7 @@ enum ice_status ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
  * This function replays queue type node bandwidth. This function needs to be
  * called with scheduler lock held.
  */
-enum ice_status
+int
 ice_sched_replay_q_bw(struct ice_port_info *pi, struct ice_q_ctx *q_ctx)
 {
 	struct ice_sched_node *q_node;
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 11ad8336899f..ae46a489b373 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -63,12 +63,12 @@ struct ice_sched_agg_info {
 };
 
 /* FW AQ command calls */
-enum ice_status
+int
 ice_aq_query_sched_elems(struct ice_hw *hw, u16 elems_req,
 			 struct ice_aqc_txsched_elem_data *buf, u16 buf_size,
 			 u16 *elems_ret, struct ice_sq_cd *cd);
-enum ice_status ice_sched_init_port(struct ice_port_info *pi);
-enum ice_status ice_sched_query_res_alloc(struct ice_hw *hw);
+int ice_sched_init_port(struct ice_port_info *pi);
+int ice_sched_query_res_alloc(struct ice_hw *hw);
 void ice_sched_get_psm_clk_freq(struct ice_hw *hw);
 
 void ice_sched_clear_port(struct ice_port_info *pi);
@@ -77,7 +77,7 @@ void ice_sched_clear_agg(struct ice_hw *hw);
 
 struct ice_sched_node *
 ice_sched_find_node_by_teid(struct ice_sched_node *start_node, u32 teid);
-enum ice_status
+int
 ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 		   struct ice_aqc_txsched_elem_data *info);
 void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node);
@@ -85,35 +85,39 @@ struct ice_sched_node *ice_sched_get_tc_node(struct ice_port_info *pi, u8 tc);
 struct ice_sched_node *
 ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			   u8 owner);
-enum ice_status
+int
 ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 		  u8 owner, bool enable);
-enum ice_status ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle);
-enum ice_status ice_rm_vsi_rdma_cfg(struct ice_port_info *pi, u16 vsi_handle);
+int ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle);
+int ice_rm_vsi_rdma_cfg(struct ice_port_info *pi, u16 vsi_handle);
 
 /* Tx scheduler rate limiter functions */
-enum ice_status
+int
 ice_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 	    enum ice_agg_type agg_type, u8 tc_bitmap);
-enum ice_status
+int
 ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
 		    u8 tc_bitmap);
-enum ice_status
+int
 ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		 u16 q_handle, enum ice_rl_type rl_type, u32 bw);
-enum ice_status
+int
 ice_cfg_q_bw_dflt_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		      u16 q_handle, enum ice_rl_type rl_type);
-enum ice_status
+int
 ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			  enum ice_rl_type rl_type, u32 bw);
-enum ice_status
+int
 ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			       enum ice_rl_type rl_type);
-enum ice_status ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
+int
+ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
+				 enum ice_agg_type agg_type, u8 tc,
+				 enum ice_rl_type rl_type, u32 bw);
+int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
 void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw);
 void ice_sched_replay_agg(struct ice_hw *hw);
-enum ice_status ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle);
-enum ice_status
+int ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle);
+int
 ice_sched_replay_q_bw(struct ice_port_info *pi, struct ice_q_ctx *q_ctx);
 #endif /* _ICE_SCHED_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index aa11d07793d4..ecc516d4ab1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -18,7 +18,7 @@
  * queue and asynchronously sending message via
  * ice_sq_send_cmd() function
  */
-enum ice_status
+int
 ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
 		      u8 *msg, u16 msglen, struct ice_sq_cd *cd)
 {
@@ -228,7 +228,7 @@ ice_mbx_traverse(struct ice_hw *hw,
  * sent per VF and marks the VF as malicious if it exceeds
  * the permissible number of messages to send.
  */
-static enum ice_status
+static int
 ice_mbx_detect_malvf(struct ice_hw *hw, u16 vf_id,
 		     enum ice_mbx_snapshot_state *new_state,
 		     bool *is_malvf)
@@ -297,7 +297,7 @@ static void ice_mbx_reset_snapshot(struct ice_mbx_snapshot *snap)
  * Detect: If pending message count exceeds watermark traverse
  * the static snapshot and look for a malicious VF.
  */
-enum ice_status
+int
 ice_mbx_vf_state_handler(struct ice_hw *hw,
 			 struct ice_mbx_data *mbx_data, u16 vf_id,
 			 bool *is_malvf)
@@ -306,7 +306,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 	struct ice_mbx_snap_buffer_data *snap_buf;
 	struct ice_ctl_q_info *cq = &hw->mailboxq;
 	enum ice_mbx_snapshot_state new_state;
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (!is_malvf || !mbx_data)
 		return ICE_ERR_BAD_PTR;
@@ -405,7 +405,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
  * the input vf_id against the bitmap to verify if the VF has been
  * detected in any previous mailbox iterations.
  */
-enum ice_status
+int
 ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
 		     u16 bitmap_len, u16 vf_id, bool *report_malvf)
 {
@@ -441,7 +441,7 @@ ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
  * that the new VF loaded is not considered malicious before going
  * through the overflow detection algorithm.
  */
-enum ice_status
+int
 ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 		    u16 bitmap_len, u16 vf_id)
 {
@@ -482,7 +482,7 @@ ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
  * called to ensure that the vf_count can be compared against the number
  * of VFs supported as defined in the functional capabilities of the device.
  */
-enum ice_status ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count)
+int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count)
 {
 	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 161dc55d9e9c..68686a3fd7e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -14,24 +14,24 @@
 #define ICE_ASYNC_VF_MSG_THRESHOLD	63
 
 #ifdef CONFIG_PCI_IOV
-enum ice_status
+int
 ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
 		      u8 *msg, u16 msglen, struct ice_sq_cd *cd);
 
 u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed);
-enum ice_status
+int
 ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
 			 u16 vf_id, bool *is_mal_vf);
-enum ice_status
+int
 ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 		    u16 bitmap_len, u16 vf_id);
-enum ice_status ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count);
+int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count);
 void ice_mbx_deinit_snapshot(struct ice_hw *hw);
-enum ice_status
+int
 ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
 		     u16 bitmap_len, u16 vf_id, bool *report_malvf);
 #else /* CONFIG_PCI_IOV */
-static inline enum ice_status
+static inline int
 ice_aq_send_msg_to_vf(struct ice_hw __always_unused *hw,
 		      u16 __always_unused vfid, u32 __always_unused v_opcode,
 		      u32 __always_unused v_retval, u8 __always_unused *msg,
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 1bbb52bf2279..2bcd7176385b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -342,7 +342,7 @@ static DECLARE_BITMAP(profile_to_recipe[ICE_MAX_NUM_PROFILES],
  * Allocate memory for the entire recipe table and initialize the structures/
  * entries corresponding to basic recipes.
  */
-enum ice_status ice_init_def_sw_recp(struct ice_hw *hw)
+int ice_init_def_sw_recp(struct ice_hw *hw)
 {
 	struct ice_sw_recipe *recps;
 	u8 i;
@@ -390,14 +390,14 @@ enum ice_status ice_init_def_sw_recp(struct ice_hw *hw)
  * in response buffer. The caller of this function to use *num_elems while
  * parsing the response buffer.
  */
-static enum ice_status
+static int
 ice_aq_get_sw_cfg(struct ice_hw *hw, struct ice_aqc_get_sw_cfg_resp_elem *buf,
 		  u16 buf_size, u16 *req_desc, u16 *num_elems,
 		  struct ice_sq_cd *cd)
 {
 	struct ice_aqc_get_sw_cfg *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_sw_cfg);
 	cmd = &desc.params.get_sw_conf;
@@ -420,14 +420,14 @@ ice_aq_get_sw_cfg(struct ice_hw *hw, struct ice_aqc_get_sw_cfg_resp_elem *buf,
  *
  * Add a VSI context to the hardware (0x0210)
  */
-static enum ice_status
+static int
 ice_aq_add_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 	       struct ice_sq_cd *cd)
 {
 	struct ice_aqc_add_update_free_vsi_resp *res;
 	struct ice_aqc_add_get_update_free_vsi *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.vsi_cmd;
 	res = &desc.params.add_update_free_vsi_res;
@@ -464,14 +464,14 @@ ice_aq_add_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
  *
  * Free VSI context info from hardware (0x0213)
  */
-static enum ice_status
+static int
 ice_aq_free_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 		bool keep_vsi_alloc, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_add_update_free_vsi_resp *resp;
 	struct ice_aqc_add_get_update_free_vsi *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.vsi_cmd;
 	resp = &desc.params.add_update_free_vsi_res;
@@ -499,14 +499,14 @@ ice_aq_free_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
  *
  * Update VSI context in the hardware (0x0211)
  */
-static enum ice_status
+static int
 ice_aq_update_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 		  struct ice_sq_cd *cd)
 {
 	struct ice_aqc_add_update_free_vsi_resp *resp;
 	struct ice_aqc_add_get_update_free_vsi *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.vsi_cmd;
 	resp = &desc.params.add_update_free_vsi_res;
@@ -646,12 +646,12 @@ void ice_clear_all_vsi_ctx(struct ice_hw *hw)
  * If this function gets called after reset for existing VSIs then update
  * with the new HW VSI number in the corresponding VSI handle list entry.
  */
-enum ice_status
+int
 ice_add_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	    struct ice_sq_cd *cd)
 {
 	struct ice_vsi_ctx *tmp_vsi_ctx;
-	enum ice_status status;
+	int status;
 
 	if (vsi_handle >= ICE_MAX_VSI)
 		return ICE_ERR_PARAM;
@@ -687,11 +687,11 @@ ice_add_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
  *
  * Free VSI context info from hardware as well as from VSI handle list
  */
-enum ice_status
+int
 ice_free_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	     bool keep_vsi_alloc, struct ice_sq_cd *cd)
 {
-	enum ice_status status;
+	int status;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return ICE_ERR_PARAM;
@@ -711,7 +711,7 @@ ice_free_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
  *
  * Update VSI context in the hardware
  */
-enum ice_status
+int
 ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	       struct ice_sq_cd *cd)
 {
@@ -753,14 +753,14 @@ ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable)
  *
  * allocates or free a VSI list resource
  */
-static enum ice_status
+static int
 ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 			   enum ice_sw_lkup_type lkup_type,
 			   enum ice_adminq_opc opc)
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
 	struct ice_aqc_res_elem *vsi_ele;
-	enum ice_status status;
+	int status;
 	u16 buf_len;
 
 	buf_len = struct_size(sw_buf, elem, 1);
@@ -812,12 +812,12 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
  *
  * Add(0x02a0)/Update(0x02a1)/Remove(0x02a2) switch rules commands to firmware
  */
-enum ice_status
+int
 ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	if (opc != ice_aqc_opc_add_sw_rules &&
 	    opc != ice_aqc_opc_update_sw_rules &&
@@ -846,7 +846,7 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
  *
  * Add(0x0290)
  */
-static enum ice_status
+static int
 ice_aq_add_recipe(struct ice_hw *hw,
 		  struct ice_aqc_recipe_data_elem *s_recipe_list,
 		  u16 num_recipes, struct ice_sq_cd *cd)
@@ -883,14 +883,14 @@ ice_aq_add_recipe(struct ice_hw *hw,
  * The caller must supply enough space in s_recipe_list to hold all possible
  * recipes and *num_recipes must equal ICE_MAX_NUM_RECIPES.
  */
-static enum ice_status
+static int
 ice_aq_get_recipe(struct ice_hw *hw,
 		  struct ice_aqc_recipe_data_elem *s_recipe_list,
 		  u16 *num_recipes, u16 recipe_root, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_add_get_recipe *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 	u16 buf_size;
 
 	if (*num_recipes != ICE_MAX_NUM_RECIPES)
@@ -923,13 +923,13 @@ ice_aq_get_recipe(struct ice_hw *hw,
  * mask if it's valid at the lkup_idx. Finally, use the add recipe AQ to update
  * the pre-existing recipe with the modifications.
  */
-static enum ice_status __maybe_unused
+static int __maybe_unused
 ice_update_recipe_lkup_idx(struct ice_hw *hw,
 			   struct ice_update_recipe_lkup_idx_params *params)
 {
 	struct ice_aqc_recipe_data_elem *rcp_list;
 	u16 num_recps = ICE_MAX_NUM_RECIPES;
-	enum ice_status status;
+	int status;
 
 	rcp_list = kcalloc(num_recps, sizeof(*rcp_list), GFP_KERNEL);
 	if (!rcp_list)
@@ -976,7 +976,7 @@ ice_update_recipe_lkup_idx(struct ice_hw *hw,
  * @cd: pointer to command details structure or NULL
  * Recipe to profile association (0x0291)
  */
-static enum ice_status
+static int
 ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 			     struct ice_sq_cd *cd)
 {
@@ -1002,13 +1002,13 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  * @cd: pointer to command details structure or NULL
  * Associate profile ID with given recipe (0x0293)
  */
-static enum ice_status
+static int
 ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 			     struct ice_sq_cd *cd)
 {
 	struct ice_aqc_recipe_to_profile *cmd;
 	struct ice_aq_desc desc;
-	enum ice_status status;
+	int status;
 
 	cmd = &desc.params.recipe_to_profile;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_recipe_to_profile);
@@ -1026,10 +1026,10 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  * @hw: pointer to the hardware structure
  * @rid: recipe ID returned as response to AQ call
  */
-static enum ice_status ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
+static int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
-	enum ice_status status;
+	int status;
 	u16 buf_len;
 
 	buf_len = struct_size(sw_buf, elem, 1);
@@ -1102,7 +1102,7 @@ ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
  * bookkeeping so that we have a current list of all the recipes that are
  * programmed in the firmware.
  */
-static enum ice_status
+static int
 ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 		    bool *refresh_required)
 {
@@ -1110,7 +1110,7 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 	struct ice_aqc_recipe_data_elem *tmp;
 	u16 num_recps = ICE_MAX_NUM_RECIPES;
 	struct ice_prot_lkup_ext *lkup_exts;
-	enum ice_status status;
+	int status;
 	u8 fv_word_idx = 0;
 	u16 sub_recps;
 
@@ -1277,10 +1277,10 @@ ice_init_port_info(struct ice_port_info *pi, u16 vsi_port_num, u8 type,
 /* ice_get_initial_sw_cfg - Get initial port and default VSI data
  * @hw: pointer to the hardware structure
  */
-enum ice_status ice_get_initial_sw_cfg(struct ice_hw *hw)
+int ice_get_initial_sw_cfg(struct ice_hw *hw)
 {
 	struct ice_aqc_get_sw_cfg_resp_elem *rbuf;
-	enum ice_status status;
+	int status;
 	u16 req_desc = 0;
 	u16 num_elems;
 	u16 i;
@@ -1540,7 +1540,7 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
  * Create a large action to hold software marker and update the switch rule
  * entry pointed by m_ent with newly created large action
  */
-static enum ice_status
+static int
 ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 		   u16 sw_marker, u16 l_id)
 {
@@ -1551,7 +1551,7 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 	 * 3. GENERIC VALUE action to hold the software marker ID
 	 */
 	const u16 num_lg_acts = 3;
-	enum ice_status status;
+	int status;
 	u16 lg_act_size;
 	u16 rules_size;
 	u32 act;
@@ -1678,13 +1678,13 @@ ice_create_vsi_list_map(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
  * Call AQ command to add a new switch rule or update existing switch rule
  * using the given VSI list ID
  */
-static enum ice_status
+static int
 ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 			 u16 vsi_list_id, bool remove, enum ice_adminq_opc opc,
 			 enum ice_sw_lkup_type lkup_type)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	enum ice_status status;
+	int status;
 	u16 s_rule_size;
 	u16 rule_type;
 	int i;
@@ -1739,11 +1739,11 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
  * @vsi_list_id: stores the ID of the VSI list to be created
  * @lkup_type: switch rule filter's lookup type
  */
-static enum ice_status
+static int
 ice_create_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 			 u16 *vsi_list_id, enum ice_sw_lkup_type lkup_type)
 {
-	enum ice_status status;
+	int status;
 
 	status = ice_aq_alloc_free_vsi_list(hw, vsi_list_id, lkup_type,
 					    ice_aqc_opc_alloc_res);
@@ -1765,7 +1765,7 @@ ice_create_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
  * to the corresponding filter management list to track this switch rule
  * and VSI mapping
  */
-static enum ice_status
+static int
 ice_create_pkt_fwd_rule(struct ice_hw *hw,
 			struct ice_fltr_list_entry *f_entry)
 {
@@ -1773,7 +1773,7 @@ ice_create_pkt_fwd_rule(struct ice_hw *hw,
 	struct ice_aqc_sw_rules_elem *s_rule;
 	enum ice_sw_lkup_type l_type;
 	struct ice_sw_recipe *recp;
-	enum ice_status status;
+	int status;
 
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw),
 			      ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, GFP_KERNEL);
@@ -1829,11 +1829,11 @@ ice_create_pkt_fwd_rule(struct ice_hw *hw,
  * Call AQ command to update a previously created switch rule with a
  * VSI list ID
  */
-static enum ice_status
+static int
 ice_update_pkt_fwd_rule(struct ice_hw *hw, struct ice_fltr_info *f_info)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	enum ice_status status;
+	int status;
 
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw),
 			      ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, GFP_KERNEL);
@@ -1858,11 +1858,11 @@ ice_update_pkt_fwd_rule(struct ice_hw *hw, struct ice_fltr_info *f_info)
  *
  * Updates unicast switch filter rules based on VEB/VEPA mode
  */
-enum ice_status ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
+int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
 {
 	struct ice_switch_info *sw = hw->switch_info;
 	struct ice_fltr_mgmt_list_entry *fm_entry;
-	enum ice_status status = 0;
+	int status = 0;
 	struct list_head *rule_head;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 
@@ -1914,13 +1914,13 @@ enum ice_status ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
  *		Add the new VSI to the previously created VSI list set
  *		using the update switch rule command
  */
-static enum ice_status
+static int
 ice_add_update_vsi_list(struct ice_hw *hw,
 			struct ice_fltr_mgmt_list_entry *m_entry,
 			struct ice_fltr_info *cur_fltr,
 			struct ice_fltr_info *new_fltr)
 {
-	enum ice_status status = 0;
+	int status = 0;
 	u16 vsi_list_id = 0;
 
 	if ((cur_fltr->fltr_act == ICE_FWD_TO_Q ||
@@ -2079,7 +2079,7 @@ ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_id, u16 vsi_handle,
  *
  * Adds or updates the rule lists for a given recipe
  */
-static enum ice_status
+static int
 ice_add_rule_internal(struct ice_hw *hw, u8 recp_id,
 		      struct ice_fltr_list_entry *f_entry)
 {
@@ -2087,7 +2087,7 @@ ice_add_rule_internal(struct ice_hw *hw, u8 recp_id,
 	struct ice_fltr_info *new_fltr, *cur_fltr;
 	struct ice_fltr_mgmt_list_entry *m_entry;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
 		return ICE_ERR_PARAM;
@@ -2125,12 +2125,12 @@ ice_add_rule_internal(struct ice_hw *hw, u8 recp_id,
  * The VSI list should be emptied before this function is called to remove the
  * VSI list.
  */
-static enum ice_status
+static int
 ice_remove_vsi_list_rule(struct ice_hw *hw, u16 vsi_list_id,
 			 enum ice_sw_lkup_type lkup_type)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	enum ice_status status;
+	int status;
 	u16 s_rule_size;
 
 	s_rule_size = (u16)ICE_SW_RULE_VSI_LIST_SIZE(0);
@@ -2158,12 +2158,12 @@ ice_remove_vsi_list_rule(struct ice_hw *hw, u16 vsi_list_id,
  * @fm_list: filter management entry for which the VSI list management needs to
  *           be done
  */
-static enum ice_status
+static int
 ice_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 			struct ice_fltr_mgmt_list_entry *fm_list)
 {
 	enum ice_sw_lkup_type lkup_type;
-	enum ice_status status = 0;
+	int status = 0;
 	u16 vsi_list_id;
 
 	if (fm_list->fltr_info.fltr_act != ICE_FWD_TO_VSI_LIST ||
@@ -2245,14 +2245,14 @@ ice_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
  * @recp_id: recipe ID for which the rule needs to removed
  * @f_entry: rule entry containing filter information
  */
-static enum ice_status
+static int
 ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 			 struct ice_fltr_list_entry *f_entry)
 {
 	struct ice_switch_info *sw = hw->switch_info;
 	struct ice_fltr_mgmt_list_entry *list_elem;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	enum ice_status status = 0;
+	int status = 0;
 	bool remove_rule = false;
 	u16 vsi_handle;
 
@@ -2341,7 +2341,7 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
  * check for duplicates in this case, removing duplicates from a given
  * list should be taken care of in the caller of this function.
  */
-enum ice_status ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
+int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_aqc_sw_rules_elem *s_rule, *r_iter;
 	struct ice_fltr_list_entry *m_list_itr;
@@ -2349,7 +2349,7 @@ enum ice_status ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 	u16 total_elem_left, s_rule_size;
 	struct ice_switch_info *sw;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	enum ice_status status = 0;
+	int status = 0;
 	u16 num_unicast = 0;
 	u8 elem_sent;
 
@@ -2488,7 +2488,7 @@ enum ice_status ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
  * @hw: pointer to the hardware structure
  * @f_entry: filter entry containing one VLAN information
  */
-static enum ice_status
+static int
 ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 {
 	struct ice_switch_info *sw = hw->switch_info;
@@ -2497,7 +2497,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
 	enum ice_sw_lkup_type lkup_type;
 	u16 vsi_list_id = 0, vsi_handle;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	enum ice_status status = 0;
+	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
 		return ICE_ERR_PARAM;
@@ -2641,7 +2641,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
  * @hw: pointer to the hardware structure
  * @v_list: list of VLAN entries and forwarding information
  */
-enum ice_status ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
+int ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
 {
 	struct ice_fltr_list_entry *v_list_itr;
 
@@ -2668,7 +2668,7 @@ enum ice_status ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
  * the filter list with the necessary fields (including flags to
  * indicate Tx or Rx rules).
  */
-enum ice_status
+int
 ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 {
 	struct ice_fltr_list_entry *em_list_itr;
@@ -2697,7 +2697,7 @@ ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
  * @hw: pointer to the hardware structure
  * @em_list: list of ethertype or ethertype MAC entries
  */
-enum ice_status
+int
 ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 {
 	struct ice_fltr_list_entry *em_list_itr, *tmp;
@@ -2771,13 +2771,13 @@ ice_rem_adv_rule_info(struct ice_hw *hw, struct list_head *rule_head)
  * add filter rule to set/unset given VSI as default VSI for the switch
  * (represented by swid)
  */
-enum ice_status
+int
 ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
 	struct ice_fltr_info f_info;
 	enum ice_adminq_opc opcode;
-	enum ice_status status;
+	int status;
 	u16 s_rule_size;
 	u16 hw_vsi_id;
 
@@ -2893,7 +2893,7 @@ ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
  * the entries passed into m_list were added previously. It will not attempt to
  * do a partial remove of entries that were found.
  */
-enum ice_status ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
+int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_fltr_list_entry *list_itr, *tmp;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
@@ -2943,7 +2943,7 @@ enum ice_status ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
  * @hw: pointer to the hardware structure
  * @v_list: list of VLAN entries and forwarding information
  */
-enum ice_status
+int
 ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list)
 {
 	struct ice_fltr_list_entry *v_list_itr, *tmp;
@@ -2993,7 +2993,7 @@ ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle)
  * fltr_info.fwd_id fields. These are set such that later logic can
  * extract which VSI to remove the fltr from, and pass on that information.
  */
-static enum ice_status
+static int
 ice_add_entry_to_vsi_fltr_list(struct ice_hw *hw, u16 vsi_handle,
 			       struct list_head *vsi_list_head,
 			       struct ice_fltr_info *fi)
@@ -3036,13 +3036,13 @@ ice_add_entry_to_vsi_fltr_list(struct ice_hw *hw, u16 vsi_handle,
  * Note that this means all entries in vsi_list_head must be explicitly
  * deallocated by the caller when done with list.
  */
-static enum ice_status
+static int
 ice_add_to_vsi_fltr_list(struct ice_hw *hw, u16 vsi_handle,
 			 struct list_head *lkup_list_head,
 			 struct list_head *vsi_list_head)
 {
 	struct ice_fltr_mgmt_list_entry *fm_entry;
-	enum ice_status status = 0;
+	int status = 0;
 
 	/* check to make sure VSI ID is valid and within boundary */
 	if (!ice_is_vsi_valid(hw, vsi_handle))
@@ -3100,7 +3100,7 @@ static u8 ice_determine_promisc_mask(struct ice_fltr_info *fi)
  * @recp_id: recipe ID for which the rule needs to removed
  * @v_list: list of promisc entries
  */
-static enum ice_status
+static int
 ice_remove_promisc(struct ice_hw *hw, u8 recp_id,
 		   struct list_head *v_list)
 {
@@ -3122,7 +3122,7 @@ ice_remove_promisc(struct ice_hw *hw, u8 recp_id,
  * @promisc_mask: mask of promiscuous config bits to clear
  * @vid: VLAN ID to clear VLAN promiscuous
  */
-enum ice_status
+int
 ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 		      u16 vid)
 {
@@ -3132,7 +3132,7 @@ ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 	struct ice_fltr_mgmt_list_entry *itr;
 	struct list_head *rule_head;
 	struct mutex *rule_lock;	/* Lock to protect filter rule list */
-	enum ice_status status = 0;
+	int status = 0;
 	u8 recipe_id;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
@@ -3195,13 +3195,13 @@ ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
  * @promisc_mask: mask of promiscuous config bits
  * @vid: VLAN ID to set VLAN promiscuous
  */
-enum ice_status
+int
 ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask, u16 vid)
 {
 	enum { UCAST_FLTR = 1, MCAST_FLTR, BCAST_FLTR };
 	struct ice_fltr_list_entry f_list_entry;
 	struct ice_fltr_info new_fltr;
-	enum ice_status status = 0;
+	int status = 0;
 	bool is_tx_fltr;
 	u16 hw_vsi_id;
 	int pkt_type;
@@ -3309,7 +3309,7 @@ ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask, u16 vid)
  *
  * Configure VSI with all associated VLANs to given promiscuous mode(s)
  */
-enum ice_status
+int
 ice_set_vlan_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 bool rm_vlan_promisc)
 {
@@ -3318,7 +3318,7 @@ ice_set_vlan_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 	struct list_head vsi_list_head;
 	struct list_head *vlan_head;
 	struct mutex *vlan_lock; /* Lock to protect filter rule list */
-	enum ice_status status;
+	int status;
 	u16 vlan_id;
 
 	INIT_LIST_HEAD(&vsi_list_head);
@@ -3367,7 +3367,7 @@ ice_remove_vsi_lkup_fltr(struct ice_hw *hw, u16 vsi_handle,
 	struct list_head *rule_head;
 	struct ice_fltr_list_entry *tmp;
 	struct mutex *rule_lock;	/* Lock to protect filter rule list */
-	enum ice_status status;
+	int status;
 
 	INIT_LIST_HEAD(&remove_list_head);
 	rule_lock = &sw->recp_list[lkup].filt_rule_lock;
@@ -3432,12 +3432,12 @@ void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle)
  * @num_items: number of entries requested for FD resource type
  * @counter_id: counter index returned by AQ call
  */
-enum ice_status
+int
 ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		   u16 *counter_id)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	enum ice_status status;
+	int status;
 	u16 buf_len;
 
 	/* Allocate resource */
@@ -3470,12 +3470,12 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
  * @num_items: number of entries to be freed for FD resource type
  * @counter_id: counter ID resource which needs to be freed
  */
-enum ice_status
+int
 ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		  u16 counter_id)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	enum ice_status status;
+	int status;
 	u16 buf_len;
 
 	/* Free resource */
@@ -3682,7 +3682,7 @@ ice_fill_valid_words(struct ice_adv_lkup_elem *rule,
  * and start grouping them in 4-word groups. Each group makes up one
  * recipe.
  */
-static enum ice_status
+static int
 ice_create_first_fit_recp_def(struct ice_hw *hw,
 			      struct ice_prot_lkup_ext *lkup_exts,
 			      struct list_head *rg_list,
@@ -3732,7 +3732,7 @@ ice_create_first_fit_recp_def(struct ice_hw *hw,
  * Helper function to fill in the field vector indices for protocol-offset
  * pairs. These indexes are then ultimately programmed into a recipe.
  */
-static enum ice_status
+static int
 ice_fill_fv_word_index(struct ice_hw *hw, struct list_head *fv_list,
 		       struct list_head *rg_list)
 {
@@ -3857,7 +3857,7 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
  * @match_tun_mask: tunnel mask that needs to be programmed
  * @profiles: bitmap of profiles that will be associated.
  */
-static enum ice_status
+static int
 ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		  u16 match_tun_mask, unsigned long *profiles)
 {
@@ -3865,7 +3865,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 	struct ice_aqc_recipe_data_elem *tmp;
 	struct ice_aqc_recipe_data_elem *buf;
 	struct ice_recp_grp_entry *entry;
-	enum ice_status status;
+	int status;
 	u16 free_res_idx;
 	u16 recipe_count;
 	u8 chain_idx;
@@ -4157,11 +4157,11 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
  * @rm: recipe management list entry
  * @lkup_exts: lookup elements
  */
-static enum ice_status
+static int
 ice_create_recipe_group(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			struct ice_prot_lkup_ext *lkup_exts)
 {
-	enum ice_status status;
+	int status;
 	u8 recp_count = 0;
 
 	rm->n_grp_count = 0;
@@ -4192,11 +4192,11 @@ ice_create_recipe_group(struct ice_hw *hw, struct ice_sw_recipe *rm,
  * @bm: bitmap of field vectors to consider
  * @fv_list: pointer to a list that holds the returned field vectors
  */
-static enum ice_status
+static int
 ice_get_fv(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	   unsigned long *bm, struct list_head *fv_list)
 {
-	enum ice_status status;
+	int status;
 	u8 *prot_ids;
 	u16 i;
 
@@ -4241,7 +4241,7 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
  * @rinfo: other information regarding the rule e.g. priority and action info
  * @rid: return the recipe ID of the recipe created
  */
-static enum ice_status
+static int
 ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		   u16 lkups_cnt, struct ice_adv_rule_info *rinfo, u16 *rid)
 {
@@ -4252,7 +4252,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_sw_fv_list_entry *fvit;
 	struct ice_recp_grp_entry *r_tmp;
 	struct ice_sw_fv_list_entry *tmp;
-	enum ice_status status = 0;
+	int status = 0;
 	struct ice_sw_recipe *rm;
 	u16 match_tun_mask = 0;
 	u8 i;
@@ -4491,7 +4491,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
  * @pkt_len: packet length of dummy packet
  * @offsets: offset info for the dummy packet
  */
-static enum ice_status
+static int
 ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			  struct ice_aqc_sw_rules_elem *s_rule,
 			  const u8 *dummy_pkt, u16 pkt_len,
@@ -4644,13 +4644,13 @@ ice_find_adv_rule_entry(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
  *		Add the new VSI to the previously created VSI list set
  *		using the update switch rule command
  */
-static enum ice_status
+static int
 ice_adv_add_update_vsi_list(struct ice_hw *hw,
 			    struct ice_adv_fltr_mgmt_list_entry *m_entry,
 			    struct ice_adv_rule_info *cur_fltr,
 			    struct ice_adv_rule_info *new_fltr)
 {
-	enum ice_status status;
+	int status;
 	u16 vsi_list_id = 0;
 
 	if (cur_fltr->sw_act.fltr_act == ICE_FWD_TO_Q ||
@@ -4750,7 +4750,7 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
  * rinfo describes other information related to this rule such as forwarding
  * IDs, priority of this rule, etc.
  */
-enum ice_status
+int
 ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
 		 struct ice_rule_query_data *added_entry)
@@ -4761,7 +4761,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_aqc_sw_rules_elem *s_rule = NULL;
 	struct list_head *rule_head;
 	struct ice_switch_info *sw;
-	enum ice_status status;
+	int status;
 	const u8 *pkt = NULL;
 	u16 word_cnt;
 	u32 act = 0;
@@ -4961,12 +4961,12 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
  * Replays the filter of recipe recp_id for a VSI represented via vsi_handle.
  * It is required to pass valid VSI handle.
  */
-static enum ice_status
+static int
 ice_replay_vsi_fltr(struct ice_hw *hw, u16 vsi_handle, u8 recp_id,
 		    struct list_head *list_head)
 {
 	struct ice_fltr_mgmt_list_entry *itr;
-	enum ice_status status = 0;
+	int status = 0;
 	u16 hw_vsi_id;
 
 	if (list_empty(list_head))
@@ -5015,13 +5015,13 @@ ice_replay_vsi_fltr(struct ice_hw *hw, u16 vsi_handle, u8 recp_id,
  * @fm_list: filter management entry for which the VSI list management needs to
  *	     be done
  */
-static enum ice_status
+static int
 ice_adv_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 			    struct ice_adv_fltr_mgmt_list_entry *fm_list)
 {
 	struct ice_vsi_list_map_info *vsi_list_info;
 	enum ice_sw_lkup_type lkup_type;
-	enum ice_status status;
+	int status;
 	u16 vsi_list_id;
 
 	if (fm_list->rule_info.sw_act.fltr_act != ICE_FWD_TO_VSI_LIST ||
@@ -5114,13 +5114,13 @@ ice_adv_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
  * header. rinfo describes other information related to this rule such as
  * forwarding IDs, priority of this rule, etc.
  */
-static enum ice_status
+static int
 ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo)
 {
 	struct ice_adv_fltr_mgmt_list_entry *list_elem;
 	struct ice_prot_lkup_ext lkup_exts;
-	enum ice_status status = 0;
+	int status = 0;
 	bool remove_rule = false;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 	u16 i, rid, vsi_handle;
@@ -5205,7 +5205,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
  * the remove_entry parameter. This function will remove rule for a given
  * vsi_handle with a given rule_id which is passed as parameter in remove_entry
  */
-enum ice_status
+int
 ice_rem_adv_rule_by_id(struct ice_hw *hw,
 		       struct ice_rule_query_data *remove_entry)
 {
@@ -5238,10 +5238,10 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
  *
  * Replays filters for requested VSI via vsi_handle.
  */
-enum ice_status ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle)
+int ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle)
 {
 	struct ice_switch_info *sw = hw->switch_info;
-	enum ice_status status = 0;
+	int status = 0;
 	u8 i;
 
 	for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index c03a6dfcc5fb..37111309051c 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -262,7 +262,7 @@ struct ice_vsi_list_map_info {
 
 struct ice_fltr_list_entry {
 	struct list_head list_entry;
-	enum ice_status status;
+	int status;
 	struct ice_fltr_info fltr_info;
 };
 
@@ -308,73 +308,73 @@ enum ice_promisc_flags {
 };
 
 /* VSI related commands */
-enum ice_status
+int
 ice_add_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	    struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_free_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	     bool keep_vsi_alloc, struct ice_sq_cd *cd);
-enum ice_status
+int
 ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	       struct ice_sq_cd *cd);
 bool ice_is_vsi_valid(struct ice_hw *hw, u16 vsi_handle);
 struct ice_vsi_ctx *ice_get_vsi_ctx(struct ice_hw *hw, u16 vsi_handle);
 void ice_clear_all_vsi_ctx(struct ice_hw *hw);
 /* Switch config */
-enum ice_status ice_get_initial_sw_cfg(struct ice_hw *hw);
+int ice_get_initial_sw_cfg(struct ice_hw *hw);
 
-enum ice_status
+int
 ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		   u16 *counter_id);
-enum ice_status
+int
 ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		  u16 counter_id);
 
 /* Switch/bridge related commands */
-enum ice_status
+int
 ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
 		 struct ice_rule_query_data *added_entry);
-enum ice_status ice_update_sw_rule_bridge_mode(struct ice_hw *hw);
-enum ice_status ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
-enum ice_status ice_remove_mac(struct ice_hw *hw, struct list_head *m_lst);
-enum ice_status
+int ice_update_sw_rule_bridge_mode(struct ice_hw *hw);
+int ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
+int ice_remove_mac(struct ice_hw *hw, struct list_head *m_lst);
+int
 ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list);
-enum ice_status
+int
 ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list);
 int
 ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable);
 void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle);
-enum ice_status
+int
 ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
-enum ice_status ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
+int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
 
 /* Promisc/defport setup for VSIs */
-enum ice_status
+int
 ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction);
-enum ice_status
+int
 ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 		    u16 vid);
-enum ice_status
+int
 ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 		      u16 vid);
-enum ice_status
+int
 ice_set_vlan_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 bool rm_vlan_promisc);
 
-enum ice_status
+int
 ice_rem_adv_rule_for_vsi(struct ice_hw *hw, u16 vsi_handle);
-enum ice_status
+int
 ice_rem_adv_rule_by_id(struct ice_hw *hw,
 		       struct ice_rule_query_data *remove_entry);
 
-enum ice_status ice_init_def_sw_recp(struct ice_hw *hw);
+int ice_init_def_sw_recp(struct ice_hw *hw);
 u16 ice_get_hw_vsi_num(struct ice_hw *hw, u16 vsi_handle);
 
-enum ice_status ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle);
+int ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle);
 void ice_rm_all_sw_replay_rule_info(struct ice_hw *hw);
 
-enum ice_status
+int
 ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd);
 #endif /* _ICE_SWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 5e132832044d..21ee24e46295 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -230,7 +230,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_adv_lkup_elem *list;
 	u32 flags = fltr->flags;
-	enum ice_status status;
+	int status;
 	int lkups_cnt;
 	int ret = 0;
 	int i;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 6abf9ed1dd2e..70765c0fbaca 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -560,7 +560,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	struct ice_flow_seg_info *old_seg;
 	struct ice_flow_prof *prof = NULL;
 	struct ice_fd_hw_prof *vf_prof;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
@@ -1199,7 +1199,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 	struct ice_fdir_fltr *input = &conf->input;
 	struct ice_vsi *vsi, *ctrl_vsi;
 	struct ice_fltr_desc desc;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 7afa6bf037c2..cd6b5cb2eb50 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -654,7 +654,7 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_aqc_vsi_props *info;
 	struct ice_vsi_ctx *ctxt;
-	enum ice_status status;
+	int status;
 	int ret = 0;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
@@ -852,7 +852,7 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	enum ice_status status;
+	int status;
 	u8 broadcast[ETH_ALEN];
 
 	if (ice_is_eswitch_mode_switchdev(vf->pf))
@@ -1230,7 +1230,7 @@ static void ice_clear_vf_reset_trigger(struct ice_vf *vf)
 static int ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 {
 	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status;
+	int status;
 
 	if (vf->port_vlan_info)
 		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m,
@@ -1252,7 +1252,7 @@ static int ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 pro
 static int ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 {
 	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status;
+	int status;
 
 	if (vf->port_vlan_info)
 		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m,
@@ -1304,7 +1304,7 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 
 	if (!vsi->agg_node)
@@ -1735,7 +1735,7 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
 	u8 broadcast[ETH_ALEN];
-	enum ice_status status;
+	int status;
 	struct ice_vsi *vsi;
 	struct device *dev;
 	int err;
@@ -2004,7 +2004,7 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	struct device *dev = ice_pf_to_dev(pf);
-	enum ice_status status;
+	int status;
 	int err;
 
 	err = ice_check_sriov_allowed(pf);
@@ -2160,7 +2160,7 @@ int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
 {
-	enum ice_status aq_ret;
+	int aq_ret;
 	struct device *dev;
 	struct ice_pf *pf;
 
@@ -2672,7 +2672,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 
 	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
 		struct ice_vsi_ctx *ctx;
-		enum ice_status status;
+		int status;
 		u8 lut_type, hash_type;
 
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
@@ -2729,7 +2729,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 					vsi->vsi_num, v_ret);
 			}
 		} else {
-			enum ice_status status;
+			int status;
 
 			status = ice_rem_rss_cfg(hw, vsi->idx, hash_flds,
 						 addl_hdrs);
@@ -2899,7 +2899,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_vsi_ctx *ctx;
 	struct ice_vsi *vf_vsi;
-	enum ice_status status;
+	int status;
 	struct device *dev;
 	struct ice_vf *vf;
 	int ret;
@@ -3789,7 +3789,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	u8 *mac_addr = vc_ether_addr->addr;
-	enum ice_status status;
+	int status;
 	int ret = 0;
 
 	/* device MAC already added */
@@ -3889,7 +3889,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	u8 *mac_addr = vc_ether_addr->addr;
-	enum ice_status status;
+	int status;
 
 	if (!ice_can_vf_change_mac(vf) &&
 	    ether_addr_equal(vf->dev_lan_addr.addr, mac_addr))
@@ -5231,7 +5231,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	s16 vf_id = le16_to_cpu(event->desc.retval);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_mbx_data mbxdata;
-	enum ice_status status;
+	int status;
 	bool malvf = false;
 	struct ice_vf *vf;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

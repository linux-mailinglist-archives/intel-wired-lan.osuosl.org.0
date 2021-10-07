Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A44425FBA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97658400E5;
	Thu,  7 Oct 2021 22:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8coFdtZMx4Ci; Thu,  7 Oct 2021 22:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 183F2402B1;
	Thu,  7 Oct 2021 22:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1F4A1BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A302340A0A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sa6dbL-bq_Uo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B11CD4068C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226331561"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226331561"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327187"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:23 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:25 -0700
Message-Id: <20211007220127.70514-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 5/7] ice: Cleanup after
 ice_status removal
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

Clean up code after changing ice_status to int. Rearrange to fix reverse
Christmas tree and pull lines up where applicable.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 44 ++++++-------
 drivers/net/ethernet/intel/ice/ice_controlq.c | 12 ++--
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 16 ++---
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  9 ++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 35 +++++-----
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  4 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 38 +++++------
 drivers/net/ethernet/intel/ice/ice_flow.c     |  8 +--
 drivers/net/ethernet/intel/ice/ice_flow.h     |  6 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     | 10 +--
 .../net/ethernet/intel/ice/ice_fw_update.c    | 17 ++---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 27 ++++----
 drivers/net/ethernet/intel/ice/ice_main.c     | 60 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 20 +++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  3 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    | 48 +++++++-------
 drivers/net/ethernet/intel/ice/ice_switch.c   | 64 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_switch.h   | 18 ++----
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  2 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  4 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 22 +++----
 22 files changed, 214 insertions(+), 255 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a217b0f269ac..47191869284e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -181,8 +181,8 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	struct ice_aqc_get_phy_caps *cmd;
 	u16 pcaps_size = sizeof(*pcaps);
 	struct ice_aq_desc desc;
-	int status;
 	struct ice_hw *hw;
+	int status;
 
 	cmd = &desc.params.get_phy;
 
@@ -426,9 +426,9 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	struct ice_fc_info *hw_fc_info;
 	bool tx_pause, rx_pause;
 	struct ice_aq_desc desc;
-	int status;
 	struct ice_hw *hw;
 	u16 cmd_flags;
+	int status;
 
 	if (!pi)
 		return -EINVAL;
@@ -666,8 +666,8 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
 static int ice_get_fw_log_cfg(struct ice_hw *hw)
 {
 	struct ice_aq_desc desc;
-	int status;
 	__le16 *config;
+	int status;
 	u16 size;
 
 	size = sizeof(*config) * ICE_AQC_FW_LOG_ID_MAX;
@@ -738,12 +738,12 @@ static int ice_get_fw_log_cfg(struct ice_hw *hw)
 static int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
 {
 	struct ice_aqc_fw_logging *cmd;
-	int status = 0;
 	u16 i, chgs = 0, len = 0;
 	struct ice_aq_desc desc;
 	__le16 *data = NULL;
 	u8 actv_evnts = 0;
 	void *buf = NULL;
+	int status = 0;
 
 	if (!hw->fw_log.cq_en && !hw->fw_log.uart_en)
 		return 0;
@@ -904,9 +904,9 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 int ice_init_hw(struct ice_hw *hw)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	int status;
 	u16 mac_buf_len;
 	void *mac_buf;
+	int status;
 
 	/* Set MAC type based on DeviceID */
 	status = ice_set_mac_type(hw);
@@ -1455,11 +1455,11 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		      struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc_cpy;
-	int status;
 	bool is_cmd_for_retry;
 	u8 *buf_cpy = NULL;
 	u8 idx = 0;
 	u16 opcode;
+	int status;
 
 	opcode = le16_to_cpu(desc->opcode);
 	is_cmd_for_retry = ice_should_retry_sq_send_cmd(opcode);
@@ -1818,8 +1818,8 @@ ice_acquire_res(struct ice_hw *hw, enum ice_aq_res_ids res,
  */
 void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
 {
-	int status;
 	u32 total_delay = 0;
+	int status;
 
 	status = ice_aq_release_res(hw, res, 0, NULL);
 
@@ -1882,8 +1882,8 @@ int
 ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	int status;
 	u16 buf_len;
+	int status;
 
 	buf_len = struct_size(buf, elem, num);
 	buf = kzalloc(buf_len, GFP_KERNEL);
@@ -1919,8 +1919,8 @@ ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
 int ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	int status;
 	u16 buf_len;
+	int status;
 
 	buf_len = struct_size(buf, elem, num);
 	buf = kzalloc(buf_len, GFP_KERNEL);
@@ -2528,9 +2528,9 @@ ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 int
 ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
 {
-	int status;
 	u32 cap_count = 0;
 	void *cbuf;
+	int status;
 
 	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!cbuf)
@@ -2562,9 +2562,9 @@ ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
 static int
 ice_discover_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_caps)
 {
-	int status;
 	u32 cap_count = 0;
 	void *cbuf;
+	int status;
 
 	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!cbuf)
@@ -3130,8 +3130,8 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 {
 	struct ice_aqc_set_phy_cfg_data cfg = { 0 };
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	int status;
 	struct ice_hw *hw;
+	int status;
 
 	if (!pi || !aq_failures)
 		return -EINVAL;
@@ -3271,8 +3271,8 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		enum ice_fec_mode fec)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	int status;
 	struct ice_hw *hw;
+	int status;
 
 	if (!pi || !cfg)
 		return -EINVAL;
@@ -3662,9 +3662,9 @@ ice_aq_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *set_
  *
  * get (0x0B04) or set (0x0B02) the RSS key per VSI
  */
-static int __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
-				    struct ice_aqc_get_set_rss_keys *key,
-				    bool set)
+static int
+__ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
+			 struct ice_aqc_get_set_rss_keys *key, bool set)
 {
 	struct ice_aqc_get_set_rss_key *cmd_resp;
 	u16 key_size = sizeof(*key);
@@ -3803,8 +3803,8 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	struct ice_aqc_dis_txq_item *item;
 	struct ice_aqc_dis_txqs *cmd;
 	struct ice_aq_desc desc;
-	int status;
 	u16 i, sz = 0;
+	int status;
 
 	cmd = &desc.params.dis_txqs;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dis_txqs);
@@ -4199,8 +4199,8 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 	struct ice_aqc_txsched_elem_data node = { 0 };
 	struct ice_sched_node *parent;
 	struct ice_q_ctx *q_ctx;
-	int status;
 	struct ice_hw *hw;
+	int status;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
 		return -EIO;
@@ -4302,9 +4302,9 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		enum ice_disq_rst_src rst_src, u16 vmvf_num,
 		struct ice_sq_cd *cd)
 {
-	int status = -ENOENT;
 	struct ice_aqc_dis_txq_item *qg_list;
 	struct ice_q_ctx *q_ctx;
+	int status = -ENOENT;
 	struct ice_hw *hw;
 	u16 i, buf_size;
 
@@ -4456,9 +4456,9 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	struct ice_aqc_txsched_elem_data node = { 0 };
 	struct ice_aqc_add_rdma_qset_data *buf;
 	struct ice_sched_node *parent;
-	int status;
 	struct ice_hw *hw;
 	u16 i, buf_size;
+	int status;
 	int ret;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
@@ -4533,8 +4533,8 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 		      u16 *q_id)
 {
 	struct ice_aqc_dis_txq_item *qg_list;
-	int status = 0;
 	struct ice_hw *hw;
+	int status = 0;
 	u16 qg_size;
 	int i;
 
@@ -4769,8 +4769,8 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 {
 	struct ice_aq_desc desc = { 0 };
 	struct ice_aqc_i2c *cmd;
-	int status;
 	u8 data_size;
+	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_read_i2c);
 	cmd = &desc.params.read_i2c;
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 5b0c1456698e..be59bc04ee65 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -474,8 +474,7 @@ static int ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  *
  * The main shutdown routine for the Control Transmit Queue
  */
-static int
-ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
+static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	int ret_code = 0;
 
@@ -541,8 +540,7 @@ static bool ice_aq_ver_check(struct ice_hw *hw)
  *
  * The main shutdown routine for the Control Receive Queue
  */
-static int
-ice_shutdown_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
+static int ice_shutdown_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	int ret_code = 0;
 
@@ -753,8 +751,8 @@ void ice_shutdown_all_ctrlq(struct ice_hw *hw)
  */
 int ice_init_all_ctrlq(struct ice_hw *hw)
 {
-	int status;
 	u32 retry = 0;
+	int status;
 
 	/* Init FW admin queue */
 	do {
@@ -970,9 +968,9 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	struct ice_dma_mem *dma_buf = NULL;
 	struct ice_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
-	int status = 0;
 	struct ice_sq_cd *details;
 	u32 total_delay = 0;
+	int status = 0;
 	u16 retval = 0;
 	u32 val = 0;
 
@@ -1160,9 +1158,9 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 {
 	u16 ntc = cq->rq.next_to_clean;
 	enum ice_aq_err rq_last_status;
-	int ret_code = 0;
 	struct ice_aq_desc *desc;
 	struct ice_dma_mem *bi;
+	int ret_code = 0;
 	u16 desc_idx;
 	u16 datalen;
 	u16 flags;
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 14cb301210fc..8500507c4071 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -597,12 +597,11 @@ ice_parse_org_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
  *
  * Parse DCB configuration from the LLDPDU
  */
-static int
-ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
+static int ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
 {
 	struct ice_lldp_org_tlv *tlv;
-	int ret = 0;
 	u16 offset = 0;
+	int ret = 0;
 	u16 typelen;
 	u16 type;
 	u16 len;
@@ -652,8 +651,8 @@ int
 ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 		   struct ice_dcbx_cfg *dcbcfg)
 {
-	int ret;
 	u8 *lldpmib;
+	int ret;
 
 	/* Allocate the LLDPDU */
 	lldpmib = devm_kzalloc(ice_hw_to_dev(hw), ICE_LLDPDU_SIZE, GFP_KERNEL);
@@ -691,9 +690,9 @@ ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
 		       bool *dcbx_agent_status, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_stop_start_specific_agent *cmd;
-	int status;
 	struct ice_aq_desc desc;
 	u16 opcode;
+	int status;
 
 	cmd = &desc.params.lldp_agent_ctrl;
 
@@ -902,8 +901,7 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
  *
  * Get IEEE or CEE mode DCB configuration from the Firmware
  */
-static int
-ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
+static int ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
 {
 	struct ice_dcbx_cfg *dcbx_cfg = NULL;
 	int ret;
@@ -1472,9 +1470,9 @@ int ice_set_dcb_cfg(struct ice_port_info *pi)
 {
 	u8 mib_type, *lldpmib = NULL;
 	struct ice_dcbx_cfg *dcbcfg;
-	int ret;
 	struct ice_hw *hw;
 	u16 miblen;
+	int ret;
 
 	if (!pi)
 		return -EINVAL;
@@ -1542,8 +1540,8 @@ ice_update_port_tc_tree_cfg(struct ice_port_info *pi,
 {
 	struct ice_sched_node *node, *tc_node;
 	struct ice_aqc_txsched_elem_data elem;
-	int status = 0;
 	u32 teid1, teid2;
+	int status = 0;
 	u8 i, j;
 
 	if (!pi)
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index a195e295d222..def09061f4cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -421,8 +421,7 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 		status = ice_aq_nvm_update_empr(hw);
 		if (status) {
 			dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\n",
-				status,
-				ice_aq_str(hw->adminq.sq_last_status));
+				status, ice_aq_str(hw->adminq.sq_last_status));
 			NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
 			return -EIO;
 		}
@@ -785,9 +784,9 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	void *nvm_data;
 	u32 nvm_size;
+	int status;
 
 	nvm_size = hw->flash.flash_size;
 	nvm_data = vzalloc(nvm_size);
@@ -843,9 +842,9 @@ ice_devlink_sram_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u8 *sram_data;
 	u32 sram_size;
+	int status;
 
 	sram_size = hw->flash.sr_words * 2u;
 	sram_data = vzalloc(sram_size);
@@ -902,8 +901,8 @@ ice_devlink_devcaps_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	void *devcaps;
+	int status;
 
 	devcaps = vzalloc(ICE_AQ_MAX_BUF_LEN);
 	if (!devcaps)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3de65a103ba1..b354b0928af7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -280,9 +280,9 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	struct device *dev;
 	int ret = 0;
+	int status;
 	u8 *buf;
 
 	dev = ice_pf_to_dev(pf);
@@ -298,8 +298,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status) {
 		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -308,8 +307,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 				   false);
 	if (status) {
 		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto release;
 	}
@@ -352,8 +350,8 @@ static bool ice_active_vfs(struct ice_pf *pf)
 static u64 ice_link_test(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	int status;
 	bool link_up = false;
+	int status;
 
 	netdev_info(netdev, "link test\n");
 	status = ice_get_link_status(np->vsi->port_info, &link_up);
@@ -1055,8 +1053,8 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 	struct ice_link_status *link_info;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_port_info *pi;
-	int status;
 	int err = 0;
+	int status;
 
 	pi = vsi->port_info;
 
@@ -1235,8 +1233,8 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			pf->dcbx_cap &= ~DCB_CAP_DCBX_LLD_MANAGED;
 			pf->dcbx_cap |= DCB_CAP_DCBX_HOST;
 		} else {
-			int status;
 			bool dcbx_agent_status;
+			int status;
 
 			if (ice_get_pfc_mode(pf) == ICE_QOS_MODE_DSCP) {
 				clear_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
@@ -1936,8 +1934,8 @@ ice_get_link_ksettings(struct net_device *netdev,
 	struct ice_aqc_get_phy_caps_data *caps;
 	struct ice_link_status *hw_link_info;
 	struct ice_vsi *vsi = np->vsi;
-	int status;
 	int err = 0;
+	int status;
 
 	ethtool_link_ksettings_zero_link_mode(ks, supported);
 	ethtool_link_ksettings_zero_link_mode(ks, advertising);
@@ -2208,11 +2206,11 @@ ice_set_link_ksettings(struct net_device *netdev,
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_port_info *pi;
 	u8 autoneg_changed = 0;
-	int status;
 	u64 phy_type_high = 0;
 	u64 phy_type_low = 0;
 	int err = 0;
 	bool linkup;
+	int status;
 
 	pi = np->vsi->port_info;
 
@@ -2520,9 +2518,9 @@ static int
 ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 {
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
 	u64 hashed_flds;
+	int status;
 	u32 hdrs;
 
 	dev = ice_pf_to_dev(pf);
@@ -2997,10 +2995,10 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_port_info *pi;
-	int status;
 	u8 aq_failures;
 	bool link_up;
 	int err = 0;
+	int status;
 	u32 is_an;
 
 	pi = vsi->port_info;
@@ -3071,18 +3069,15 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 
 	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
 		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %s\n",
-			    status,
-			    ice_aq_str(hw->adminq.sq_last_status));
+			    status, ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
 		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %s\n",
-			    status,
-			    ice_aq_str(hw->adminq.sq_last_status));
+			    status, ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
 		netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %s\n",
-			    status,
-			    ice_aq_str(hw->adminq.sq_last_status));
+			    status, ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	}
 
@@ -3864,11 +3859,11 @@ ice_get_module_info(struct net_device *netdev,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u8 sff8472_comp = 0;
 	u8 sff8472_swap = 0;
 	u8 sff8636_rev = 0;
 	u8 value = 0;
+	int status;
 
 	status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR, 0x00, 0x00,
 				   0, &value, 1, 0, NULL);
@@ -3941,11 +3936,11 @@ ice_get_module_eeprom(struct net_device *netdev,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	bool is_sfp = false;
 	unsigned int i, j;
 	u16 offset = 0;
 	u8 page = 0;
+	int status;
 
 	if (!ee || !ee->len || !data)
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 93fa2ec1d20d..d19925ec979d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -530,10 +530,10 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	struct ice_flow_prof *prof = NULL;
 	struct ice_fd_hw_prof *hw_prof;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u64 entry1_h = 0;
 	u64 entry2_h = 0;
 	u64 prof_id;
+	int status;
 	int err;
 
 	main_vsi = ice_get_main_vsi(pf);
@@ -1190,9 +1190,9 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 	struct ice_hw *hw = &pf->hw;
 	struct ice_fltr_desc desc;
 	struct ice_vsi *ctrl_vsi;
-	int status;
 	u8 *pkt, *frag_pkt;
 	bool has_frag;
+	int status;
 	int err;
 
 	ctrl_vsi = ice_get_ctrl_vsi(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 01829a5ff83b..a9efd8985a42 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -970,8 +970,8 @@ ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
 static int
 ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
-	int status;
 	u32 offset, info, i;
+	int status;
 
 	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
 	if (status)
@@ -1027,10 +1027,10 @@ static enum ice_ddp_state
 ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
 	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
-	int status;
 	struct ice_buf_hdr *bh;
 	enum ice_aq_err err;
 	u32 offset, info, i;
+	int status;
 
 	if (!bufs || !count)
 		return ICE_DDP_PKG_ERR;
@@ -2077,8 +2077,8 @@ ice_create_tunnel(struct ice_hw *hw, u16 index,
 		  enum ice_tunnel_type type, u16 port)
 {
 	struct ice_boost_tcam_section *sect_rx, *sect_tx;
-	int status = -ENOSPC;
 	struct ice_buf_build *bld;
+	int status = -ENOSPC;
 
 	mutex_lock(&hw->tnl_lock);
 
@@ -2148,8 +2148,8 @@ ice_destroy_tunnel(struct ice_hw *hw, u16 index, enum ice_tunnel_type type,
 		   u16 port)
 {
 	struct ice_boost_tcam_section *sect_rx, *sect_tx;
-	int status = -ENOSPC;
 	struct ice_buf_build *bld;
+	int status = -ENOSPC;
 
 	mutex_lock(&hw->tnl_lock);
 
@@ -2375,8 +2375,8 @@ ice_ptg_remove_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
 static int
 ice_ptg_add_mv_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
 {
-	int status;
 	u8 original_ptg;
+	int status;
 
 	if (ptype > ICE_XLT1_CNT - 1)
 		return -EINVAL;
@@ -2735,8 +2735,8 @@ static int
 ice_vsig_add_mv_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig)
 {
 	struct ice_vsig_vsi *tmp;
-	int status;
 	u16 orig_vsig, idx;
+	int status;
 
 	idx = vsig & ICE_VSIG_IDX_M;
 
@@ -2977,9 +2977,9 @@ ice_free_tcam_ent(struct ice_hw *hw, enum ice_block blk, u16 tcam_idx)
 static int
 ice_alloc_prof_id(struct ice_hw *hw, enum ice_block blk, u8 *prof_id)
 {
-	int status;
 	u16 res_type;
 	u16 get_prof;
+	int status;
 
 	if (!ice_prof_id_rsrc_type(blk, &res_type))
 		return -EINVAL;
@@ -3143,8 +3143,8 @@ ice_alloc_prof_mask(struct ice_hw *hw, enum ice_block blk, u16 idx, u16 mask,
 		    u16 *mask_idx)
 {
 	bool found_unused = false, found_copy = false;
-	int status = -ENOSPC;
 	u16 unused_idx = 0, copy_idx = 0;
+	int status = -ENOSPC;
 	u16 i;
 
 	if (blk != ICE_BLK_RSS && blk != ICE_BLK_FD)
@@ -4243,12 +4243,12 @@ ice_upd_prof_hw(struct ice_hw *hw, enum ice_block blk,
 {
 	struct ice_buf_build *b;
 	struct ice_chs_chg *tmp;
-	int status;
 	u16 pkg_sects;
 	u16 xlt1 = 0;
 	u16 xlt2 = 0;
 	u16 tcam = 0;
 	u16 es = 0;
+	int status;
 	u16 sects;
 
 	/* count number of sections we need */
@@ -4614,9 +4614,9 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
 	struct ice_prof_map *prof;
-	int status;
 	u8 byte = 0;
 	u8 prof_id;
+	int status;
 
 	bitmap_zero(ptgs_used, ICE_XLT1_CNT);
 
@@ -4921,8 +4921,8 @@ static int
 ice_rem_flow_all(struct ice_hw *hw, enum ice_block blk, u64 id)
 {
 	struct ice_chs_chg *del, *tmp;
-	int status;
 	struct list_head chg;
+	int status;
 	u16 i;
 
 	INIT_LIST_HEAD(&chg);
@@ -4998,9 +4998,9 @@ static int
 ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
 	     struct list_head *chg)
 {
-	int status = 0;
 	struct ice_prof_map *map;
 	struct ice_chs_chg *p;
+	int status = 0;
 	u16 i;
 
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
@@ -5091,9 +5091,9 @@ static int
 ice_add_prof_to_lst(struct ice_hw *hw, enum ice_block blk,
 		    struct list_head *lst, u64 hdl)
 {
-	int status = 0;
 	struct ice_prof_map *map;
 	struct ice_vsig_prof *p;
+	int status = 0;
 	u16 i;
 
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
@@ -5138,9 +5138,9 @@ static int
 ice_move_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig,
 	     struct list_head *chg)
 {
-	int status;
 	struct ice_chs_chg *p;
 	u16 orig_vsig;
+	int status;
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 	if (!p)
@@ -5199,8 +5199,8 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 		      u16 vsig, struct ice_tcam_inf *tcam,
 		      struct list_head *chg)
 {
-	int status;
 	struct ice_chs_chg *p;
+	int status;
 
 	u8 vl_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 	u8 dc_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0x00, 0x00, 0x00 };
@@ -5346,11 +5346,11 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 	u8 vl_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 	u8 dc_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0x00, 0x00, 0x00 };
 	u8 nm_msk[ICE_TCAM_KEY_VAL_SZ] = { 0x00, 0x00, 0x00, 0x00, 0x00 };
-	int status = 0;
 	struct ice_prof_map *map;
 	struct ice_vsig_prof *t;
 	struct ice_chs_chg *p;
 	u16 vsig_idx, i;
+	int status = 0;
 
 	/* Error, if this VSIG already has this profile */
 	if (ice_has_prof_vsig(hw, blk, vsig, hdl))
@@ -5454,9 +5454,9 @@ static int
 ice_create_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl,
 			struct list_head *chg)
 {
-	int status;
 	struct ice_chs_chg *p;
 	u16 new_vsig;
+	int status;
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
 	if (!p)
@@ -5541,8 +5541,8 @@ static bool
 ice_find_prof_vsig(struct ice_hw *hw, enum ice_block blk, u64 hdl, u16 *vsig)
 {
 	struct ice_vsig_prof *t;
-	int status;
 	struct list_head lst;
+	int status;
 
 	INIT_LIST_HEAD(&lst);
 
@@ -5578,8 +5578,8 @@ ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 	struct ice_vsig_prof *tmp1, *del1;
 	struct ice_chs_chg *tmp, *del;
 	struct list_head union_lst;
-	int status;
 	struct list_head chg;
+	int status;
 	u16 vsig;
 
 	INIT_LIST_HEAD(&union_lst);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ee6a8fab4c4c..2bfe9d9d7edc 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1574,8 +1574,7 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
  * @blk: the block for which the flow profile is to be removed
  * @prof_id: unique ID of the flow profile to be removed
  */
-int
-ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
+int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 {
 	struct ice_flow_prof *prof;
 	int status;
@@ -1680,8 +1679,7 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
  * @blk: classification stage
  * @entry_h: handle to the flow entry to be removed
  */
-int ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk,
-		       u64 entry_h)
+int ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_h)
 {
 	struct ice_flow_entry *entry;
 	struct ice_flow_prof *prof;
@@ -2370,8 +2368,8 @@ ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
  */
 int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 {
-	int status = 0;
 	struct ice_rss_cfg *r;
+	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 818986437001..9b12401b241f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -387,14 +387,12 @@ int
 ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  u64 prof_id, struct ice_flow_seg_info *segs, u8 segs_cnt,
 		  struct ice_flow_prof **prof);
-int
-ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
+int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
 int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 		   u64 entry_id, u16 vsi, enum ice_flow_priority prio,
 		   void *data, u64 *entry_h);
-int
-ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_h);
+int ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_h);
 void
 ice_flow_set_fld(struct ice_flow_seg_info *seg, enum ice_flow_field fld,
 		 u16 val_loc, u16 mask_loc, u16 last_loc, bool range);
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 6f9d5cb03be0..93fc4c635913 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -268,8 +268,8 @@ ice_fltr_prepare_mac(struct ice_vsi *vsi, const u8 *mac,
 		     enum ice_sw_fwd_act_type action,
 		     int (*mac_action)(struct ice_vsi *, struct list_head *))
 {
-	int result;
 	LIST_HEAD(tmp_list);
+	int result;
 
 	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action)) {
 		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
@@ -295,8 +295,8 @@ ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 				   (struct ice_vsi *, struct list_head *))
 {
 	u8 broadcast[ETH_ALEN];
-	int result;
 	LIST_HEAD(tmp_list);
+	int result;
 
 	eth_broadcast_addr(broadcast);
 	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action) ||
@@ -322,8 +322,8 @@ ice_fltr_prepare_vlan(struct ice_vsi *vsi, u16 vlan_id,
 		      enum ice_sw_fwd_act_type action,
 		      int (*vlan_action)(struct ice_vsi *, struct list_head *))
 {
-	int result;
 	LIST_HEAD(tmp_list);
+	int result;
 
 	if (ice_fltr_add_vlan_to_list(vsi, &tmp_list, vlan_id, action))
 		return -ENOMEM;
@@ -346,8 +346,8 @@ ice_fltr_prepare_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
 		     enum ice_sw_fwd_act_type action,
 		     int (*eth_action)(struct ice_vsi *, struct list_head *))
 {
-	int result;
 	LIST_HEAD(tmp_list);
+	int result;
 
 	if (ice_fltr_add_eth_to_list(vsi, &tmp_list, ethertype, flag, action))
 		return -ENOMEM;
@@ -464,8 +464,8 @@ ice_fltr_update_rule_flags(struct ice_hw *hw, u16 rule_id, u16 recipe_id,
 			   u32 act, u16 type, u16 src, u32 new_flags)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	int err;
 	u32 flags_mask;
+	int err;
 
 	s_rule = kzalloc(ICE_SW_RULE_RX_TX_NO_HDR_SIZE, GFP_KERNEL);
 	if (!s_rule)
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 1a77a4aa258d..fcae1f7730b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -46,8 +46,8 @@ ice_send_package_data(struct pldmfw *context, const u8 *data, u16 length)
 	struct device *dev = context->dev;
 	struct ice_pf *pf = priv->pf;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u8 *package_data;
+	int status;
 
 	dev_dbg(dev, "Sending PLDM record package data to firmware\n");
 
@@ -61,8 +61,7 @@ ice_send_package_data(struct pldmfw *context, const u8 *data, u16 length)
 
 	if (status) {
 		dev_err(dev, "Failed to send record package data to firmware, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to record package data to firmware");
 		return -EIO;
 	}
@@ -209,8 +208,8 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 	struct device *dev = context->dev;
 	struct ice_pf *pf = priv->pf;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	size_t length;
+	int status;
 
 	switch (component->identifier) {
 	case NVM_COMP_ID_OROM:
@@ -247,8 +246,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 
 	if (status) {
 		dev_err(dev, "Failed to transfer component table to firmware, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to transfer component table to firmware");
 		return -EIO;
 	}
@@ -284,8 +282,8 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u32 completion_offset;
+	int status;
 	int err;
 
 	memset(&event, 0, sizeof(event));
@@ -545,8 +543,8 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u16 completion_retval;
+	int status;
 	int err;
 
 	memset(&event, 0, sizeof(event));
@@ -554,8 +552,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	status = ice_nvm_write_activate(hw, activate_flags);
 	if (status) {
 		dev_err(dev, "Failed to switch active flash banks, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to switch active flash banks");
 		return -EIO;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 870678a0cc41..8e2efaa14a63 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1460,8 +1460,8 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
+	int status;
 
 	dev = ice_pf_to_dev(pf);
 	if (ice_is_safe_mode(pf)) {
@@ -1492,8 +1492,8 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	u16 vsi_handle = vsi->idx, vsi_num = vsi->vsi_num;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	struct device *dev;
+	int status;
 
 	dev = ice_pf_to_dev(pf);
 	if (ice_is_safe_mode(pf)) {
@@ -1664,9 +1664,9 @@ ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
 int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 {
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
 	int err = 0;
+	int status;
 
 	dev = ice_pf_to_dev(pf);
 
@@ -2019,8 +2019,8 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	int status;
 	int ret = 0;
+	int status;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
@@ -2240,8 +2240,7 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
 	if (status) {
 		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %s\n",
 			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num,
-			   status,
-			   ice_aq_str(pf->hw.adminq.sq_last_status));
+			   status, ice_aq_str(pf->hw.adminq.sq_last_status));
 		goto err_out;
 	}
 
@@ -2318,8 +2317,8 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 	int (*eth_fltr)(struct ice_vsi *v, u16 type, u16 flag,
 			enum ice_sw_fwd_act_type act);
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
+	int status;
 
 	dev = ice_pf_to_dev(pf);
 	eth_fltr = create ? ice_fltr_add_eth : ice_fltr_remove_eth;
@@ -2484,9 +2483,9 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
-	int status;
 	struct ice_vsi *vsi;
 	int ret, i;
+	int status;
 
 	if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
 		vsi = ice_vsi_alloc(pf, vsi_type, vf_id);
@@ -3159,9 +3158,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	int prev_num_q_vectors = 0;
 	struct ice_vf *vf = NULL;
 	enum ice_vsi_type vtype;
-	int status;
 	struct ice_pf *pf;
 	int ret, i;
+	int status;
 
 	if (!vsi)
 		return -EINVAL;
@@ -3388,10 +3387,10 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctx;
-	int status;
 	struct device *dev;
 	int i, ret = 0;
 	u8 num_tc = 0;
+	int status;
 
 	dev = ice_pf_to_dev(pf);
 
@@ -3524,8 +3523,8 @@ bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
  */
 int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 {
-	int status;
 	struct device *dev;
+	int status;
 
 	if (!sw || !vsi)
 		return -EINVAL;
@@ -3570,8 +3569,8 @@ int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 int ice_clear_dflt_vsi(struct ice_sw *sw)
 {
 	struct ice_vsi *dflt_vsi;
-	int status;
 	struct device *dev;
+	int status;
 
 	if (!sw)
 		return -EINVAL;
@@ -3662,8 +3661,8 @@ static int ice_get_link_speed_kbps(struct ice_vsi *vsi)
 int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
 {
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
+	int status;
 	int speed;
 
 	dev = ice_pf_to_dev(pf);
@@ -3723,8 +3722,8 @@ int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
 int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate)
 {
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
+	int status;
 	int speed;
 
 	dev = ice_pf_to_dev(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 32ae9ac707ab..947c3558eb00 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -141,9 +141,9 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
  */
 static int ice_init_mac_fltr(struct ice_pf *pf)
 {
-	int status;
 	struct ice_vsi *vsi;
 	u8 *perm_addr;
+	int status;
 
 	vsi = ice_get_main_vsi(pf);
 	if (!vsi)
@@ -283,8 +283,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	bool promisc_forced_on = false;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int status = 0;
 	u32 changed_flags = 0;
+	int status = 0;
 	u8 promisc_m;
 	int err = 0;
 
@@ -664,12 +664,12 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 {
 	struct ice_aqc_get_phy_caps_data *caps;
 	const char *an_advertised;
-	int status;
 	const char *fec_req;
 	const char *speed;
 	const char *fec;
 	const char *fc;
 	const char *an;
+	int status;
 
 	if (!vsi)
 		return;
@@ -989,10 +989,10 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_phy_info *phy_info;
-	int status;
 	struct ice_vsi *vsi;
 	u16 old_link_speed;
 	bool old_link;
+	int status;
 
 	phy_info = &pi->phy;
 	phy_info->link_info_old = phy_info->link_info;
@@ -1376,8 +1376,8 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		return 0;
 
 	do {
-		int ret;
 		u16 opcode;
+		int ret;
 
 		ret = ice_clean_rq_elem(hw, cq, &event, &pending);
 		if (ret == -EALREADY)
@@ -1835,8 +1835,8 @@ static int ice_init_nvm_phy_type(struct ice_port_info *pi)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_pf *pf = pi->hw->back;
-	int status;
 	int err = 0;
+	int status;
 
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
@@ -1946,8 +1946,8 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = pi->hw->back;
-	int status;
 	int err = 0;
+	int status;
 
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
 		return -EIO;
@@ -2018,8 +2018,8 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	struct ice_aqc_set_phy_cfg_data *cfg;
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = vsi->back;
-	int status;
 	int err = 0;
+	int status;
 
 	/* Ensure we have media as we cannot configure a medialess port */
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
@@ -2518,9 +2518,9 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 		.vsi_map_offset = vsi->alloc_txq,
 		.mapping_mode = ICE_VSI_MAP_CONTIG
 	};
-	int status;
 	struct device *dev;
 	int i, v_idx;
+	int status;
 
 	dev = ice_pf_to_dev(pf);
 	vsi->xdp_rings = devm_kcalloc(dev, vsi->num_xdp_txq,
@@ -3897,8 +3897,8 @@ static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	struct ice_vsi_ctx *ctxt;
-	int status;
 	struct ice_hw *hw;
+	int status;
 
 	if (!vsi)
 		return;
@@ -3929,8 +3929,7 @@ static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "Failed to update VSI for safe mode VLANs, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 	} else {
 		vsi->info.sec_flags = ctxt->info.sec_flags;
 		vsi->info.sw_flags2 = ctxt->info.sw_flags2;
@@ -4655,9 +4654,9 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u8 mac_addr[ETH_ALEN];
 	struct ice_vsi *vsi;
+	int status;
 	u8 flags;
 
 	if (!pf->wol_ena)
@@ -4680,8 +4679,7 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
 	status = ice_aq_manage_mac_write(hw, mac_addr, flags, NULL);
 	if (status)
 		dev_err(dev, "Failed to enable Multicast Magic Packet wake, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 }
 
 /**
@@ -5218,10 +5216,10 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct sockaddr *addr = pi;
-	int status;
 	u8 old_mac[ETH_ALEN];
 	u8 flags = 0;
 	int err = 0;
+	int status;
 	u8 *mac;
 
 	mac = (u8 *)addr->sa_data;
@@ -5327,8 +5325,8 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
-	int status;
 	u16 q_handle;
+	int status;
 	u8 tc;
 
 	/* Validate maxrate requested is within permitted range */
@@ -6384,8 +6382,7 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		status = ice_replay_vsi(&pf->hw, vsi->idx);
 		if (status) {
 			dev_err(dev, "replay VSI failed, error %d, VSI index %d, type %s\n",
-				status, vsi->idx,
-				ice_vsi_type_str(type));
+				status, vsi->idx, ice_vsi_type_str(type));
 			return -EIO;
 		}
 
@@ -6459,8 +6456,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_init_all_ctrlq(hw);
 	if (ret) {
-		dev_err(dev, "control queues init failed %d\n",
-			ret);
+		dev_err(dev, "control queues init failed %d\n", ret);
 		goto err_init_ctrlq;
 	}
 
@@ -6476,8 +6472,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_clear_pf_cfg(hw);
 	if (ret) {
-		dev_err(dev, "clear PF configuration failed %d\n",
-			ret);
+		dev_err(dev, "clear PF configuration failed %d\n", ret);
 		goto err_init_ctrlq;
 	}
 
@@ -6788,8 +6783,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	status = ice_aq_set_rss_lut(hw, &params);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
 
@@ -6814,8 +6808,7 @@ int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
 	status = ice_aq_set_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
 
@@ -6847,8 +6840,7 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	status = ice_aq_get_rss_lut(hw, &params);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
 
@@ -6873,8 +6865,7 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 	status = ice_aq_get_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
 
@@ -6919,8 +6910,8 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	struct ice_aqc_vsi_props *vsi_props;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	int status;
 	int ret = 0;
+	int status;
 
 	vsi_props = &vsi->info;
 
@@ -6941,8 +6932,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %s\n",
-			bmode, status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			bmode, status, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -6975,9 +6965,9 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	struct ice_pf *pf = np->vsi->back;
 	struct nlattr *attr, *br_spec;
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	struct ice_sw *pf_sw;
 	int rem, v, err = 0;
+	int status;
 
 	pf_sw = pf->first_sw;
 	/* find the attribute in the netlink message */
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 40c9bcb7889a..941bfce97bf4 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -64,10 +64,10 @@ int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram)
 {
-	int status;
 	u32 inlen = *length;
 	u32 bytes_read = 0;
 	bool last_cmd;
+	int status;
 
 	*length = 0;
 
@@ -188,8 +188,8 @@ static int
 ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 {
 	u32 bytes = sizeof(u16);
-	int status;
 	__le16 data_local;
+	int status;
 
 	/* Note that ice_read_flat_nvm takes into account the 4Kb AdminQ and
 	 * Shadow RAM sector restrictions necessary when reading from the NVM.
@@ -356,8 +356,8 @@ ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
 static int
 ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
-	int status;
 	__le16 data_local;
+	int status;
 
 	status = ice_read_flash_module(hw, bank, ICE_SR_1ST_NVM_BANK_PTR, offset * sizeof(u16),
 				       (__force u8 *)&data_local, sizeof(u16));
@@ -395,8 +395,8 @@ ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u
 static int
 ice_read_netlist_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
 {
-	int status;
 	__le16 data_local;
+	int status;
 
 	status = ice_read_flash_module(hw, bank, ICE_SR_NETLIST_BANK_PTR, offset * sizeof(u16),
 				       (__force u8 *)&data_local, sizeof(u16));
@@ -442,9 +442,9 @@ int
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type)
 {
-	int status;
 	u16 pfa_len, pfa_ptr;
 	u16 next_tlv;
+	int status;
 
 	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
 	if (status) {
@@ -505,8 +505,8 @@ int
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size)
 {
 	u16 pba_tlv, pba_tlv_len;
-	int status;
 	u16 pba_word, pba_size;
+	int status;
 	u16 i;
 
 	status = ice_get_pfa_module_tlv(hw, &pba_tlv, &pba_tlv_len,
@@ -673,8 +673,8 @@ static int
 ice_get_orom_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_orom_info *orom)
 {
 	struct ice_orom_civd_info civd;
-	int status;
 	u32 combo_ver;
+	int status;
 
 	status = ice_get_orom_civd_data(hw, bank, &civd);
 	if (status) {
@@ -720,8 +720,8 @@ ice_get_netlist_info(struct ice_hw *hw, enum ice_bank_select bank,
 		     struct ice_netlist_info *netlist)
 {
 	u16 module_id, length, node_count, i;
-	int status;
 	u16 *id_blk;
+	int status;
 
 	status = ice_read_netlist_module(hw, bank, ICE_NETLIST_TYPE_OFFSET, &module_id);
 	if (status)
@@ -921,8 +921,8 @@ static int
 ice_determine_active_flash_banks(struct ice_hw *hw)
 {
 	struct ice_bank_info *banks = &hw->flash.banks;
-	int status;
 	u16 ctrl_word;
+	int status;
 
 	status = ice_read_sr_word(hw, ICE_SR_NVM_CTRL_WORD, &ctrl_word);
 	if (status) {
@@ -1000,9 +1000,9 @@ ice_determine_active_flash_banks(struct ice_hw *hw)
 int ice_init_nvm(struct ice_hw *hw)
 {
 	struct ice_flash_info *flash = &hw->flash;
-	int status;
 	u32 fla, gens_stat;
 	u8 sr_size;
+	int status;
 
 	/* The SR size is stored regardless of the NVM programming mode
 	 * as the blank mode may be used in the factory line.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3926d2004db9..4d5cbc3d6766 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -796,9 +796,9 @@ int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
 {
 	struct ice_aqc_link_topo_addr link_topo;
-	int status;
 	__le16 addr;
 	u16 handle;
+	int status;
 	int err;
 
 	memset(&link_topo, 0, sizeof(link_topo));
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5c16f2e7e85a..4ca1b6fc5ba8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -32,8 +32,7 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
-int
-ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
+int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
 
 #define PFTSYN_SEM_BYTES	4
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 039f568693e9..2d7a4bb757e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -152,8 +152,8 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 	struct ice_aqc_txsched_elem_data elem;
 	struct ice_sched_node *parent;
 	struct ice_sched_node *node;
-	int status;
 	struct ice_hw *hw;
+	int status;
 
 	if (!pi)
 		return -EINVAL;
@@ -234,8 +234,8 @@ ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
 {
 	struct ice_aqc_delete_elem *buf;
 	u16 i, num_groups_removed = 0;
-	int status;
 	u16 buf_size;
+	int status;
 
 	buf_size = struct_size(buf, teid, num_nodes);
 	buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
@@ -525,8 +525,8 @@ ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
 			       bool suspend)
 {
 	u16 i, buf_size, num_elem_ret = 0;
-	int status;
 	__le32 *buf;
+	int status;
 
 	buf_size = sizeof(*buf) * num_nodes;
 	buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
@@ -727,8 +727,8 @@ ice_sched_del_rl_profile(struct ice_hw *hw,
 {
 	struct ice_aqc_rl_profile_elem *buf;
 	u16 num_profiles_removed;
-	int status;
 	u16 num_profiles = 1;
+	int status;
 
 	if (rl_info->prof_id_ref != 0)
 		return -EBUSY;
@@ -883,9 +883,9 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 	struct ice_sched_node *prev, *new_node;
 	struct ice_aqc_add_elem *buf;
 	u16 i, num_groups_added = 0;
-	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	size_t buf_size;
+	int status = 0;
 	u32 teid;
 
 	buf_size = struct_size(buf, generic, num_nodes);
@@ -1201,10 +1201,10 @@ static void ice_sched_rm_dflt_nodes(struct ice_port_info *pi)
 int ice_sched_init_port(struct ice_port_info *pi)
 {
 	struct ice_aqc_get_topo_elem *buf;
-	int status;
 	struct ice_hw *hw;
 	u8 num_branches;
 	u16 num_elems;
+	int status;
 	u8 i, j;
 
 	if (!pi)
@@ -1303,8 +1303,8 @@ int ice_sched_init_port(struct ice_port_info *pi)
 int ice_sched_query_res_alloc(struct ice_hw *hw)
 {
 	struct ice_aqc_query_txsched_res_resp *buf;
-	int status = 0;
 	__le16 max_sibl;
+	int status = 0;
 	u16 i;
 
 	if (hw->layer_info)
@@ -1621,10 +1621,10 @@ ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 {
 	struct ice_sched_node *parent, *node;
 	struct ice_hw *hw = pi->hw;
-	int status;
 	u32 first_node_teid;
 	u16 num_added = 0;
 	u8 i, qgl, vsil;
+	int status;
 
 	qgl = ice_sched_get_qgrp_layer(hw);
 	vsil = ice_sched_get_vsi_layer(hw);
@@ -1722,10 +1722,10 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 				struct ice_sched_node *tc_node, u16 *num_nodes)
 {
 	struct ice_sched_node *parent = tc_node;
-	int status;
 	u32 first_node_teid;
 	u16 num_added = 0;
 	u8 i, vsil;
+	int status;
 
 	if (!pi)
 		return -EINVAL;
@@ -1802,9 +1802,9 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	struct ice_sched_node *vsi_node;
 	struct ice_sched_node *tc_node;
 	struct ice_vsi_ctx *vsi_ctx;
-	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	u16 prev_numqs;
+	int status = 0;
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
@@ -1875,8 +1875,8 @@ ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 {
 	struct ice_sched_node *vsi_node, *tc_node;
 	struct ice_vsi_ctx *vsi_ctx;
-	int status = 0;
 	struct ice_hw *hw = pi->hw;
+	int status = 0;
 
 	ice_debug(pi->hw, ICE_DBG_SCHED, "add/config VSI %d\n", vsi_handle);
 	tc_node = ice_sched_get_tc_node(pi, tc);
@@ -1996,8 +1996,8 @@ static bool ice_sched_is_leaf_node_present(struct ice_sched_node *node)
 static int
 ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 {
-	int status = -EINVAL;
 	struct ice_vsi_ctx *vsi_ctx;
+	int status = -EINVAL;
 	u8 i;
 
 	ice_debug(pi->hw, ICE_DBG_SCHED, "removing VSI %d\n", vsi_handle);
@@ -2194,9 +2194,9 @@ ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 {
 	struct ice_aqc_move_elem *buf;
 	struct ice_sched_node *node;
-	int status = 0;
 	u16 i, grps_movd = 0;
 	struct ice_hw *hw;
+	int status = 0;
 	u16 buf_len;
 
 	hw = pi->hw;
@@ -2258,9 +2258,9 @@ ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
 	struct ice_sched_node *vsi_node, *agg_node, *tc_node, *parent;
 	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
 	u32 first_node_teid, vsi_teid;
-	int status;
 	u16 num_nodes_added;
 	u8 aggl, vsil, i;
+	int status;
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
@@ -2506,10 +2506,10 @@ ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
 {
 	struct ice_sched_node *parent, *agg_node, *tc_node;
 	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
-	int status = 0;
 	struct ice_hw *hw = pi->hw;
 	u32 first_node_teid;
 	u16 num_nodes_added;
+	int status = 0;
 	u8 i, aggl;
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
@@ -2596,8 +2596,8 @@ ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 		  enum ice_agg_type agg_type, unsigned long *tc_bitmap)
 {
 	struct ice_sched_agg_info *agg_info;
-	int status = 0;
 	struct ice_hw *hw = pi->hw;
+	int status = 0;
 	u8 tc;
 
 	agg_info = ice_get_agg_info(hw, agg_id);
@@ -2760,8 +2760,8 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 {
 	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
 	struct ice_sched_agg_info *agg_info, *old_agg_info;
-	int status = 0;
 	struct ice_hw *hw = pi->hw;
+	int status = 0;
 	u8 tc;
 
 	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
@@ -2856,9 +2856,9 @@ ice_sched_update_elem(struct ice_hw *hw, struct ice_sched_node *node,
 		      struct ice_aqc_txsched_elem_data *info)
 {
 	struct ice_aqc_txsched_elem_data buf;
-	int status;
 	u16 elem_cfgd = 0;
 	u16 num_elems = 1;
+	int status;
 
 	buf = *info;
 	/* Parent TEID is reserved field in this aq call */
@@ -3065,8 +3065,8 @@ static int
 ice_sched_bw_to_rl_profile(struct ice_hw *hw, u32 bw,
 			   struct ice_aqc_rl_profile_elem *profile)
 {
-	int status = -EINVAL;
 	s64 bytes_per_sec, ts_rate, mv_tmp;
+	int status = -EINVAL;
 	bool found = false;
 	s32 encode = 0;
 	s64 mv = 0;
@@ -3139,9 +3139,9 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 	struct ice_aqc_rl_profile_info *rl_prof_elem;
 	u16 profiles_added = 0, num_profiles = 1;
 	struct ice_aqc_rl_profile_elem *buf;
-	int status;
 	struct ice_hw *hw;
 	u8 profile_type;
+	int status;
 
 	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
 		return NULL;
@@ -3429,11 +3429,11 @@ ice_sched_set_node_bw_dflt(struct ice_port_info *pi,
 			   struct ice_sched_node *node,
 			   enum ice_rl_type rl_type, u8 layer_num)
 {
-	int status;
 	struct ice_hw *hw;
 	u8 profile_type;
 	u16 rl_prof_id;
 	u16 old_id;
+	int status;
 
 	hw = pi->hw;
 	switch (rl_type) {
@@ -3530,9 +3530,9 @@ ice_sched_set_node_bw(struct ice_port_info *pi, struct ice_sched_node *node,
 		      enum ice_rl_type rl_type, u32 bw, u8 layer_num)
 {
 	struct ice_aqc_rl_profile_info *rl_prof_info;
-	int status = -EINVAL;
 	struct ice_hw *hw = pi->hw;
 	u16 old_id, rl_prof_id;
+	int status = -EINVAL;
 
 	rl_prof_info = ice_sched_add_rl_profile(pi, rl_type, bw, layer_num);
 	if (!rl_prof_info)
@@ -3698,9 +3698,9 @@ static int
 ice_sched_set_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		       u16 q_handle, enum ice_rl_type rl_type, u32 bw)
 {
-	int status = -EINVAL;
 	struct ice_sched_node *node;
 	struct ice_q_ctx *q_ctx;
+	int status = -EINVAL;
 
 	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
 		return -EINVAL;
@@ -3848,8 +3848,8 @@ ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw)
 {
-	int status = -EINVAL;
 	struct ice_sched_node *node;
+	int status = -EINVAL;
 
 	if (!pi)
 		return status;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index e9b372bd2ee6..61178f9aa31f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -760,8 +760,8 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
 	struct ice_aqc_res_elem *vsi_ele;
-	int status;
 	u16 buf_len;
+	int status;
 
 	buf_len = struct_size(sw_buf, elem, 1);
 	sw_buf = devm_kzalloc(ice_hw_to_dev(hw), buf_len, GFP_KERNEL);
@@ -890,8 +890,8 @@ ice_aq_get_recipe(struct ice_hw *hw,
 {
 	struct ice_aqc_add_get_recipe *cmd;
 	struct ice_aq_desc desc;
-	int status;
 	u16 buf_size;
+	int status;
 
 	if (*num_recipes != ICE_MAX_NUM_RECIPES)
 		return -EINVAL;
@@ -1029,8 +1029,8 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 static int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
-	int status;
 	u16 buf_len;
+	int status;
 
 	buf_len = struct_size(sw_buf, elem, 1);
 	sw_buf = kzalloc(buf_len, GFP_KERNEL);
@@ -1110,9 +1110,9 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 	struct ice_aqc_recipe_data_elem *tmp;
 	u16 num_recps = ICE_MAX_NUM_RECIPES;
 	struct ice_prot_lkup_ext *lkup_exts;
-	int status;
 	u8 fv_word_idx = 0;
 	u16 sub_recps;
+	int status;
 
 	bitmap_zero(result_bm, ICE_MAX_FV_WORDS);
 
@@ -1280,9 +1280,9 @@ ice_init_port_info(struct ice_port_info *pi, u16 vsi_port_num, u8 type,
 int ice_get_initial_sw_cfg(struct ice_hw *hw)
 {
 	struct ice_aqc_get_sw_cfg_resp_elem *rbuf;
-	int status;
 	u16 req_desc = 0;
 	u16 num_elems;
+	int status;
 	u16 i;
 
 	rbuf = devm_kzalloc(ice_hw_to_dev(hw), ICE_SW_CFG_MAX_BUF_LEN,
@@ -1551,9 +1551,9 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 	 * 3. GENERIC VALUE action to hold the software marker ID
 	 */
 	const u16 num_lg_acts = 3;
-	int status;
 	u16 lg_act_size;
 	u16 rules_size;
+	int status;
 	u32 act;
 	u16 id;
 
@@ -1684,9 +1684,9 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 			 enum ice_sw_lkup_type lkup_type)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	int status;
 	u16 s_rule_size;
 	u16 rule_type;
+	int status;
 	int i;
 
 	if (!num_vsi)
@@ -1862,9 +1862,9 @@ int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
 {
 	struct ice_switch_info *sw = hw->switch_info;
 	struct ice_fltr_mgmt_list_entry *fm_entry;
-	int status = 0;
 	struct list_head *rule_head;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
+	int status = 0;
 
 	rule_lock = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
 	rule_head = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
@@ -1920,8 +1920,8 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 			struct ice_fltr_info *cur_fltr,
 			struct ice_fltr_info *new_fltr)
 {
-	int status = 0;
 	u16 vsi_list_id = 0;
+	int status = 0;
 
 	if ((cur_fltr->fltr_act == ICE_FWD_TO_Q ||
 	     cur_fltr->fltr_act == ICE_FWD_TO_QGRP))
@@ -2130,8 +2130,8 @@ ice_remove_vsi_list_rule(struct ice_hw *hw, u16 vsi_list_id,
 			 enum ice_sw_lkup_type lkup_type)
 {
 	struct ice_aqc_sw_rules_elem *s_rule;
-	int status;
 	u16 s_rule_size;
+	int status;
 
 	s_rule_size = (u16)ICE_SW_RULE_VSI_LIST_SIZE(0);
 	s_rule = devm_kzalloc(ice_hw_to_dev(hw), s_rule_size, GFP_KERNEL);
@@ -2163,8 +2163,8 @@ ice_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 			struct ice_fltr_mgmt_list_entry *fm_list)
 {
 	enum ice_sw_lkup_type lkup_type;
-	int status = 0;
 	u16 vsi_list_id;
+	int status = 0;
 
 	if (fm_list->fltr_info.fltr_act != ICE_FWD_TO_VSI_LIST ||
 	    fm_list->vsi_count == 0)
@@ -2252,9 +2252,9 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
 	struct ice_switch_info *sw = hw->switch_info;
 	struct ice_fltr_mgmt_list_entry *list_elem;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	int status = 0;
 	bool remove_rule = false;
 	u16 vsi_handle;
+	int status = 0;
 
 	if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
 		return -EINVAL;
@@ -2349,8 +2349,8 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 	u16 total_elem_left, s_rule_size;
 	struct ice_switch_info *sw;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-	int status = 0;
 	u16 num_unicast = 0;
+	int status = 0;
 	u8 elem_sent;
 
 	if (!m_list || !hw)
@@ -2668,8 +2668,7 @@ int ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
  * the filter list with the necessary fields (including flags to
  * indicate Tx or Rx rules).
  */
-int
-ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
+int ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 {
 	struct ice_fltr_list_entry *em_list_itr;
 
@@ -2697,8 +2696,7 @@ ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list)
  * @hw: pointer to the hardware structure
  * @em_list: list of ethertype or ethertype MAC entries
  */
-int
-ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list)
+int ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list)
 {
 	struct ice_fltr_list_entry *em_list_itr, *tmp;
 
@@ -2777,9 +2775,9 @@ ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
 	struct ice_aqc_sw_rules_elem *s_rule;
 	struct ice_fltr_info f_info;
 	enum ice_adminq_opc opcode;
-	int status;
 	u16 s_rule_size;
 	u16 hw_vsi_id;
+	int status;
 
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return -EINVAL;
@@ -2943,8 +2941,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
  * @hw: pointer to the hardware structure
  * @v_list: list of VLAN entries and forwarding information
  */
-int
-ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list)
+int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list)
 {
 	struct ice_fltr_list_entry *v_list_itr, *tmp;
 
@@ -3101,8 +3098,7 @@ static u8 ice_determine_promisc_mask(struct ice_fltr_info *fi)
  * @v_list: list of promisc entries
  */
 static int
-ice_remove_promisc(struct ice_hw *hw, u8 recp_id,
-		   struct list_head *v_list)
+ice_remove_promisc(struct ice_hw *hw, u8 recp_id, struct list_head *v_list)
 {
 	struct ice_fltr_list_entry *v_list_itr, *tmp;
 
@@ -3201,8 +3197,8 @@ ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask, u16 vid)
 	enum { UCAST_FLTR = 1, MCAST_FLTR, BCAST_FLTR };
 	struct ice_fltr_list_entry f_list_entry;
 	struct ice_fltr_info new_fltr;
-	int status = 0;
 	bool is_tx_fltr;
+	int status = 0;
 	u16 hw_vsi_id;
 	int pkt_type;
 	u8 recipe_id;
@@ -3318,8 +3314,8 @@ ice_set_vlan_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 	struct list_head vsi_list_head;
 	struct list_head *vlan_head;
 	struct mutex *vlan_lock; /* Lock to protect filter rule list */
-	int status;
 	u16 vlan_id;
+	int status;
 
 	INIT_LIST_HEAD(&vsi_list_head);
 	vlan_lock = &sw->recp_list[ICE_SW_LKUP_VLAN].filt_rule_lock;
@@ -3437,8 +3433,8 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		   u16 *counter_id)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	int status;
 	u16 buf_len;
+	int status;
 
 	/* Allocate resource */
 	buf_len = struct_size(buf, elem, 1);
@@ -3475,8 +3471,8 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		  u16 counter_id)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
-	int status;
 	u16 buf_len;
+	int status;
 
 	/* Free resource */
 	buf_len = struct_size(buf, elem, 1);
@@ -3865,11 +3861,11 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 	struct ice_aqc_recipe_data_elem *tmp;
 	struct ice_aqc_recipe_data_elem *buf;
 	struct ice_recp_grp_entry *entry;
-	int status;
 	u16 free_res_idx;
 	u16 recipe_count;
 	u8 chain_idx;
 	u8 recps = 0;
+	int status;
 
 	/* When more than one recipe are required, another recipe is needed to
 	 * chain them together. Matching a tunnel metadata ID takes up one of
@@ -4161,8 +4157,8 @@ static int
 ice_create_recipe_group(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			struct ice_prot_lkup_ext *lkup_exts)
 {
-	int status;
 	u8 recp_count = 0;
+	int status;
 
 	rm->n_grp_count = 0;
 
@@ -4196,8 +4192,8 @@ static int
 ice_get_fv(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	   unsigned long *bm, struct list_head *fv_list)
 {
-	int status;
 	u8 *prot_ids;
+	int status;
 	u16 i;
 
 	prot_ids = kcalloc(lkups_cnt, sizeof(*prot_ids), GFP_KERNEL);
@@ -4252,9 +4248,9 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_sw_fv_list_entry *fvit;
 	struct ice_recp_grp_entry *r_tmp;
 	struct ice_sw_fv_list_entry *tmp;
-	int status = 0;
 	struct ice_sw_recipe *rm;
 	u16 match_tun_mask = 0;
+	int status = 0;
 	u8 i;
 
 	if (!lkups_cnt)
@@ -4650,8 +4646,8 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 			    struct ice_adv_rule_info *cur_fltr,
 			    struct ice_adv_rule_info *new_fltr)
 {
-	int status;
 	u16 vsi_list_id = 0;
+	int status;
 
 	if (cur_fltr->sw_act.fltr_act == ICE_FWD_TO_Q ||
 	    cur_fltr->sw_act.fltr_act == ICE_FWD_TO_QGRP ||
@@ -4761,10 +4757,10 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_aqc_sw_rules_elem *s_rule = NULL;
 	struct list_head *rule_head;
 	struct ice_switch_info *sw;
-	int status;
 	const u8 *pkt = NULL;
 	u16 word_cnt;
 	u32 act = 0;
+	int status;
 	u8 q_rgn;
 
 	/* Initialize profile to result index bitmap */
@@ -5021,8 +5017,8 @@ ice_adv_rem_update_vsi_list(struct ice_hw *hw, u16 vsi_handle,
 {
 	struct ice_vsi_list_map_info *vsi_list_info;
 	enum ice_sw_lkup_type lkup_type;
-	int status;
 	u16 vsi_list_id;
+	int status;
 
 	if (fm_list->rule_info.sw_act.fltr_act != ICE_FWD_TO_VSI_LIST ||
 	    fm_list->vsi_count == 0)
@@ -5120,10 +5116,10 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 {
 	struct ice_adv_fltr_mgmt_list_entry *list_elem;
 	struct ice_prot_lkup_ext lkup_exts;
-	int status = 0;
 	bool remove_rule = false;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 	u16 i, rid, vsi_handle;
+	int status = 0;
 
 	memset(&lkup_exts, 0, sizeof(lkup_exts));
 	for (i = 0; i < lkups_cnt; i++) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 37111309051c..4a471cccb3d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -338,20 +338,15 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 int ice_update_sw_rule_bridge_mode(struct ice_hw *hw);
 int ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
 int ice_remove_mac(struct ice_hw *hw, struct list_head *m_lst);
-int
-ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list);
-int
-ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list);
-int
-ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable);
+int ice_add_eth_mac(struct ice_hw *hw, struct list_head *em_list);
+int ice_remove_eth_mac(struct ice_hw *hw, struct list_head *em_list);
+int ice_cfg_rdma_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable);
 void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle);
-int
-ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
+int ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
 int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
 
 /* Promisc/defport setup for VSIs */
-int
-ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction);
+int ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction);
 int
 ice_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 		    u16 vid);
@@ -362,8 +357,7 @@ int
 ice_set_vlan_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 bool rm_vlan_promisc);
 
-int
-ice_rem_adv_rule_for_vsi(struct ice_hw *hw, u16 vsi_handle);
+int ice_rem_adv_rule_for_vsi(struct ice_hw *hw, u16 vsi_handle);
 int
 ice_rem_adv_rule_by_id(struct ice_hw *hw,
 		       struct ice_rule_query_data *remove_entry);
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index f8ae8dcbb091..926b22cb40be 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -230,9 +230,9 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_adv_lkup_elem *list;
 	u32 flags = fltr->flags;
-	int status;
 	int lkups_cnt;
 	int ret = 0;
+	int status;
 	int i;
 
 	if (!flags || (flags & (ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 5db87f7999d3..4ce30ff96a79 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -560,13 +560,13 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	struct ice_flow_seg_info *old_seg;
 	struct ice_flow_prof *prof = NULL;
 	struct ice_fd_hw_prof *vf_prof;
-	int status;
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 entry1_h = 0;
 	u64 entry2_h = 0;
 	u64 prof_id;
+	int status;
 	int ret;
 
 	pf = vf->pf;
@@ -1199,10 +1199,10 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 	struct ice_fdir_fltr *input = &conf->input;
 	struct ice_vsi *vsi, *ctrl_vsi;
 	struct ice_fltr_desc desc;
-	int status;
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
+	int status;
 	int ret;
 	u8 *pkt;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 35be85b2662a..b11b3014c46c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -654,8 +654,8 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_aqc_vsi_props *info;
 	struct ice_vsi_ctx *ctxt;
-	int status;
 	int ret = 0;
+	int status;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
@@ -681,8 +681,7 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
 		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
-			 status,
-			 ice_aq_str(hw->adminq.sq_last_status));
+			 status, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -852,8 +851,8 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	int status;
 	u8 broadcast[ETH_ALEN];
+	int status;
 
 	if (ice_is_eswitch_mode_switchdev(vf->pf))
 		return 0;
@@ -1304,8 +1303,8 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	int status;
 	struct device *dev;
+	int status;
 
 	if (!vsi->agg_node)
 		return;
@@ -1735,9 +1734,9 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
 	u8 broadcast[ETH_ALEN];
-	int status;
 	struct ice_vsi *vsi;
 	struct device *dev;
+	int status;
 	int err;
 
 	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
@@ -2672,8 +2671,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 
 	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
 		struct ice_vsi_ctx *ctx;
-		int status;
 		u8 lut_type, hash_type;
+		int status;
 
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
 		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
@@ -2703,8 +2702,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		status = ice_update_vsi(hw, vsi->idx, ctx, NULL);
 		if (status) {
 			dev_err(dev, "update VSI for RSS failed, err %d aq_err %s\n",
-				status,
-				ice_aq_str(hw->adminq.sq_last_status));
+				status, ice_aq_str(hw->adminq.sq_last_status));
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		} else {
 			vsi->info.q_opt_rss = ctx->info.q_opt_rss;
@@ -2899,9 +2897,9 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_vsi_ctx *ctx;
 	struct ice_vsi *vf_vsi;
-	int status;
 	struct device *dev;
 	struct ice_vf *vf;
+	int status;
 	int ret;
 
 	dev = ice_pf_to_dev(pf);
@@ -3789,8 +3787,8 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	u8 *mac_addr = vc_ether_addr->addr;
-	int status;
 	int ret = 0;
+	int status;
 
 	/* device MAC already added */
 	if (ether_addr_equal(mac_addr, vf->dev_lan_addr.addr))
@@ -5231,9 +5229,9 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	s16 vf_id = le16_to_cpu(event->desc.retval);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_mbx_data mbxdata;
-	int status;
 	bool malvf = false;
 	struct ice_vf *vf;
+	int status;
 
 	if (ice_validate_vf_id(pf, vf_id))
 		return false;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

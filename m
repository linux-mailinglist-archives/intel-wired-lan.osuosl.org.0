Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B5D1D5D3A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19E1787740;
	Sat, 16 May 2020 00:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVfUdXFfzPNt; Sat, 16 May 2020 00:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A40087848;
	Sat, 16 May 2020 00:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B95E41BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B65FF877FA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0WUct3Lkc6v for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CAE58771C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: iXuTeTYUYxZGm6n9TtApVFy5ar7+ZC0jEXNFtAA9m9XAUV1Vfw+ZolikmpYloHV83BTmHfYP9E
 CZvkH7lDU5QA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:18 -0700
IronPort-SDR: pF0UbtCL2PdDTzGpimqpGd5ZnCR9DYQjRDcY/y9TXxwWPu+M6dR30wNY/xJM9ZfAPJBDzwFTE2
 lmjYR8sWrt+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560856"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:30 -0700
Message-Id: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 01/15] ice: Call ice_aq_set_mac_cfg
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

As per the specification, the driver needs to call set_mac_cfg
(opcode 0x0603) to be able to exercise jumbo frames. Call the
function during initialization and the post reset rebuild flow.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 21 ++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 69 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  5 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++
 5 files changed, 103 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 745f58a86a1d..1586f24f26fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1069,6 +1069,25 @@ struct ice_aqc_set_phy_cfg_data {
 	u8 rsvd1;
 };
 
+/* Set MAC Config command data structure (direct 0x0603) */
+struct ice_aqc_set_mac_cfg {
+	__le16 max_frame_size;
+	u8 params;
+#define ICE_AQ_SET_MAC_PACE_S		3
+#define ICE_AQ_SET_MAC_PACE_M		(0xF << ICE_AQ_SET_MAC_PACE_S)
+#define ICE_AQ_SET_MAC_PACE_TYPE_M	BIT(7)
+#define ICE_AQ_SET_MAC_PACE_TYPE_RATE	0
+#define ICE_AQ_SET_MAC_PACE_TYPE_FIXED	ICE_AQ_SET_MAC_PACE_TYPE_M
+	u8 tx_tmr_priority;
+	__le16 tx_tmr_value;
+	__le16 fc_refresh_threshold;
+	u8 drop_opts;
+#define ICE_AQ_SET_MAC_AUTO_DROP_MASK		BIT(0)
+#define ICE_AQ_SET_MAC_AUTO_DROP_NONE		0
+#define ICE_AQ_SET_MAC_AUTO_DROP_BLOCKING_PKTS	BIT(0)
+	u8 reserved[7];
+};
+
 /* Restart AN command data structure (direct 0x0605)
  * Also used for response, with only the lport_num field present.
  */
@@ -1806,6 +1825,7 @@ struct ice_aq_desc {
 		struct ice_aqc_download_pkg download_pkg;
 		struct ice_aqc_set_mac_lb set_mac_lb;
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
+		struct ice_aqc_set_mac_cfg set_mac_cfg;
 		struct ice_aqc_set_event_mask set_event_mask;
 		struct ice_aqc_get_link_status get_link_status;
 		struct ice_aqc_event_lan_overflow lan_overflow;
@@ -1902,6 +1922,7 @@ enum ice_adminq_opc {
 	/* PHY commands */
 	ice_aqc_opc_get_phy_caps			= 0x0600,
 	ice_aqc_opc_set_phy_cfg				= 0x0601,
+	ice_aqc_opc_set_mac_cfg				= 0x0603,
 	ice_aqc_opc_restart_an				= 0x0605,
 	ice_aqc_opc_get_link_status			= 0x0607,
 	ice_aqc_opc_set_event_mask			= 0x0613,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index aa3cad00a78a..06beae93176e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -315,6 +315,71 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	return 0;
 }
 
+/**
+ * ice_fill_tx_timer_and_fc_thresh
+ * @hw: pointer to the HW struct
+ * @cmd: pointer to MAC cfg structure
+ *
+ * Add Tx timer and FC refresh threshold info to Set MAC Config AQ command
+ * descriptor
+ */
+static void
+ice_fill_tx_timer_and_fc_thresh(struct ice_hw *hw,
+				struct ice_aqc_set_mac_cfg *cmd)
+{
+	u16 fc_thres_val, tx_timer_val;
+	u32 val;
+
+	/* We read back the transmit timer and FC threshold value of
+	 * LFC. Thus, we will use index =
+	 * PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_MAX_INDEX.
+	 *
+	 * Also, because we are operating on transmit timer and FC
+	 * threshold of LFC, we don't turn on any bit in tx_tmr_priority
+	 */
+#define IDX_OF_LFC PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_MAX_INDEX
+
+	/* Retrieve the transmit timer */
+	val = rd32(hw, PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA(IDX_OF_LFC));
+	tx_timer_val = val &
+		PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_M;
+	cmd->tx_tmr_value = cpu_to_le16(tx_timer_val);
+
+	/* Retrieve the FC threshold */
+	val = rd32(hw, PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(IDX_OF_LFC));
+	fc_thres_val = val & PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_M;
+
+	cmd->fc_refresh_threshold = cpu_to_le16(fc_thres_val);
+}
+
+/**
+ * ice_aq_set_mac_cfg
+ * @hw: pointer to the HW struct
+ * @max_frame_size: Maximum Frame Size to be supported
+ * @cd: pointer to command details structure or NULL
+ *
+ * Set MAC configuration (0x0603)
+ */
+enum ice_status
+ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_set_mac_cfg *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.set_mac_cfg;
+
+	if (max_frame_size == 0)
+		return ICE_ERR_PARAM;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_mac_cfg);
+
+	cmd->max_frame_size = cpu_to_le16(max_frame_size);
+
+	ice_fill_tx_timer_and_fc_thresh(hw, cmd);
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
 /**
  * ice_init_fltr_mgmt_struct - initializes filter management list and locks
  * @hw: pointer to the HW struct
@@ -745,6 +810,10 @@ enum ice_status ice_init_hw(struct ice_hw *hw)
 	status = ice_aq_manage_mac_read(hw, mac_buf, mac_buf_len, NULL);
 	devm_kfree(ice_hw_to_dev(hw), mac_buf);
 
+	if (status)
+		goto err_unroll_fltr_mgmt_struct;
+	/* enable jumbo frame support at MAC level */
+	status = ice_aq_set_mac_cfg(hw, ICE_AQ_SET_MAC_FRAME_SIZE_MAX, NULL);
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
 	/* Obtain counter base index which would be used by flow director */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index db63fd6b5608..9bac3e46da33 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -108,6 +108,8 @@ enum ice_status
 ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
 			   struct ice_sq_cd *cd);
 enum ice_status
+ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd);
+enum ice_status
 ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 		     struct ice_link_status *link, struct ice_sq_cd *cd);
 enum ice_status
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 30c28a4bcf2f..16ec9bebf4b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -219,6 +219,11 @@
 #define VPLAN_TX_QBASE_VFNUMQ_M			ICE_M(0xFF, 16)
 #define VPLAN_TXQ_MAPENA(_VF)			(0x00073800 + ((_VF) * 4))
 #define VPLAN_TXQ_MAPENA_TX_ENA_M		BIT(0)
+#define PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA(_i)	(0x001E36E0 + ((_i) * 32))
+#define PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_MAX_INDEX 8
+#define PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_M ICE_M(0xFFFF, 0)
+#define PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(_i) (0x001E3800 + ((_i) * 32))
+#define PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_M ICE_M(0xFFFF, 0)
 #define GL_MDCK_TX_TDPU				0x00049348
 #define GL_MDCK_TX_TDPU_RCU_ANTISPOOF_ITR_DIS_M BIT(1)
 #define GL_MDET_RX				0x00294C00
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f738e3046fb5..6af21510c694 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4963,6 +4963,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_init_ctrlq;
 	}
 
+	ret = ice_aq_set_mac_cfg(hw, ICE_AQ_SET_MAC_FRAME_SIZE_MAX, NULL);
+	if (ret) {
+		dev_err(dev, "set_mac_cfg failed %s\n", ice_stat_str(ret));
+		goto err_init_ctrlq;
+	}
+
 	err = ice_sched_init_port(hw->port_info);
 	if (err)
 		goto err_sched_init_port;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C19C243B88F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 19:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FA8E404F4;
	Tue, 26 Oct 2021 17:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUci9oGGyeeN; Tue, 26 Oct 2021 17:47:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38CF24047F;
	Tue, 26 Oct 2021 17:47:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C217E1BF9AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 17:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0CA660A3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 17:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wzi_e3eb3tOd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 17:47:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9203460774
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 17:47:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="229921440"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="229921440"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 10:47:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="494318129"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2021 10:46:58 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 19:31:46 +0200
Message-Id: <20211026173146.1031412-6-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211026173146.1031412-1-maciej.machnikowski@intel.com>
References: <20211026173146.1031412-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC v5 net-next 5/5] ice: add support for SyncE
 recovered clocks
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement NDO functions for handling SyncE recovered clocks.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 53 +++++++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 65 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
 drivers/net/ethernet/intel/ice/ice_main.c     | 91 +++++++++++++++++++
 4 files changed, 215 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 0e314d6f5cf7..1beb05c038ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1279,6 +1279,31 @@ struct ice_aqc_set_mac_lb {
 	u8 reserved[15];
 };
 
+/* Set PHY recovered clock output (direct 0x0630) */
+struct ice_aqc_set_phy_rec_clk_out {
+	u8 phy_output;
+	u8 port_num;
+	u8 flags;
+#define ICE_AQC_SET_PHY_REC_CLK_OUT_OUT_EN	BIT(0)
+#define ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT	0xFF
+	u8 rsvd;
+	__le32 freq;
+	u8 rsvd2[6];
+	__le16 node_handle;
+};
+
+/* Get PHY recovered clock output (direct 0x0631) */
+struct ice_aqc_get_phy_rec_clk_out {
+	u8 phy_output;
+	u8 port_num;
+	u8 flags;
+#define ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN	BIT(0)
+	u8 rsvd;
+	__le32 freq;
+	u8 rsvd2[6];
+	__le16 node_handle;
+};
+
 struct ice_aqc_link_topo_params {
 	u8 lport_num;
 	u8 lport_num_valid;
@@ -1836,6 +1861,28 @@ struct ice_aqc_get_cgu_dpll_status {
 	__le16 node_handle;
 };
 
+/* Read CGU register (direct 0x0C6E) */
+struct ice_aqc_read_cgu_reg {
+	__le16 offset;
+#define ICE_AQC_READ_CGU_REG_MAX_DATA_LEN	16
+	u8 data_len;
+	u8 rsvd[13];
+};
+
+/* Read CGU register response (direct 0x0C6E) */
+struct ice_aqc_read_cgu_reg_resp {
+	u8 data[ICE_AQC_READ_CGU_REG_MAX_DATA_LEN];
+};
+
+/* Write CGU register (direct 0x0C6F) */
+struct ice_aqc_write_cgu_reg {
+	__le16 offset;
+#define ICE_AQC_WRITE_CGU_REG_MAX_DATA_LEN	7
+	u8 data_len;
+	u8 data[ICE_AQC_WRITE_CGU_REG_MAX_DATA_LEN];
+	u8 rsvd[6];
+};
+
 /* Configure Firmware Logging Command (indirect 0xFF09)
  * Logging Information Read Response (indirect 0xFF10)
  * Note: The 0xFF10 command has no input parameters.
@@ -2031,6 +2078,8 @@ struct ice_aq_desc {
 		struct ice_aqc_get_phy_caps get_phy;
 		struct ice_aqc_set_phy_cfg set_phy;
 		struct ice_aqc_restart_an restart_an;
+		struct ice_aqc_set_phy_rec_clk_out set_phy_rec_clk_out;
+		struct ice_aqc_get_phy_rec_clk_out get_phy_rec_clk_out;
 		struct ice_aqc_gpio read_write_gpio;
 		struct ice_aqc_sff_eeprom read_write_sff_param;
 		struct ice_aqc_set_port_id_led set_port_id_led;
@@ -2186,6 +2235,8 @@ enum ice_adminq_opc {
 	ice_aqc_opc_get_link_status			= 0x0607,
 	ice_aqc_opc_set_event_mask			= 0x0613,
 	ice_aqc_opc_set_mac_lb				= 0x0620,
+	ice_aqc_opc_set_phy_rec_clk_out			= 0x0630,
+	ice_aqc_opc_get_phy_rec_clk_out			= 0x0631,
 	ice_aqc_opc_get_link_topo			= 0x06E0,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
 	ice_aqc_opc_set_gpio				= 0x06EC,
@@ -2236,6 +2287,8 @@ enum ice_adminq_opc {
 
 	/* 1588/SyncE commands/events */
 	ice_aqc_opc_get_cgu_dpll_status			= 0x0C66,
+	ice_aqc_opc_read_cgu_reg			= 0x0C6E,
+	ice_aqc_opc_write_cgu_reg			= 0x0C6F,
 
 	ice_aqc_opc_driver_shared_params		= 0x0C90,
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8f64dc386922..02aa5c1405fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5193,3 +5193,68 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
 	return false;
 }
 
+/**
+ * ice_aq_set_phy_rec_clk_out - set RCLK phy out
+ * @hw: pointer to the HW struct
+ * @phy_output: PHY reference clock output pin
+ * @enable: GPIO state to be applied
+ * @freq: PHY output frequency
+ *
+ * Set CGU reference priority (0x0630)
+ * Return 0 on success or negative value on failure.
+ */
+enum ice_status
+ice_aq_set_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, bool enable,
+			   u32 *freq)
+{
+	struct ice_aqc_set_phy_rec_clk_out *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_phy_rec_clk_out);
+	cmd = &desc.params.set_phy_rec_clk_out;
+	cmd->phy_output = phy_output;
+	cmd->port_num = ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT;
+	cmd->flags = enable & ICE_AQC_SET_PHY_REC_CLK_OUT_OUT_EN;
+	cmd->freq = cpu_to_le32(*freq);
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (!status)
+		*freq = le32_to_cpu(cmd->freq);
+
+	return status;
+}
+
+/**
+ * ice_aq_get_phy_rec_clk_out
+ * @hw: pointer to the HW struct
+ * @phy_output: PHY reference clock output pin
+ * @port_num: Port number
+ * @flags: PHY flags
+ * @freq: PHY output frequency
+ *
+ * Get PHY recovered clock output (0x0631)
+ */
+enum ice_status
+ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, u8 *port_num,
+			   u8 *flags, u32 *freq)
+{
+	struct ice_aqc_get_phy_rec_clk_out *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_rec_clk_out);
+	cmd = &desc.params.get_phy_rec_clk_out;
+	cmd->phy_output = phy_output;
+	cmd->port_num = *port_num;
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (!status) {
+		*port_num = cmd->port_num;
+		*flags = cmd->flags;
+		*freq = le32_to_cpu(cmd->freq);
+	}
+
+	return status;
+}
+
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 29fa400cded3..906a9c8b07de 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -166,6 +166,12 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 enum ice_status
 ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 			   u16 *dpll_state, u64 *phase_offset, u8 *eec_mode);
+enum ice_status
+ice_aq_set_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, bool enable,
+			   u32 *freq);
+enum ice_status
+ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, u8 *port_num,
+			   u8 *flags, u32 *freq);
 int
 ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 		      u16 *q_id);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b4c87afeadc3..52919b9f067a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6172,6 +6172,94 @@ ice_get_eec_src(struct net_device *netdev, u32 *src,
 	return 0;
 }
 
+/**
+ * ice_get_rclk_range - get range of recovered clock indices
+ * @netdev: network interface device structure
+ * @min_idx: min rclk index
+ * @max_idx: max rclk index
+ * @extack: netlink extended ack
+ */
+static int
+ice_get_rclk_range(struct net_device *netdev, u32 *min_idx, u32 *max_idx,
+		   struct netlink_ext_ack *extack)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+
+	if (!ice_is_feature_supported(pf, ICE_F_CGU))
+		return -EOPNOTSUPP;
+
+	*min_idx = REF1P;
+	*max_idx = REF1N;
+
+	return 0;
+}
+
+/**
+ * ice_set_rclk_out - set recovered clock redirection to the output pin
+ * @netdev: network interface device structure
+ * @out_idx: output index
+ * @ena: true will enable redirection, false will disable it
+ * @extack: netlink extended ack
+ */
+static int
+ice_set_rclk_out(struct net_device *netdev, u32 out_idx, bool ena,
+		 struct netlink_ext_ack *extack)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	enum ice_status ret;
+	u32 freq;
+
+	if (!ice_is_feature_supported(pf, ICE_F_CGU))
+		return -EOPNOTSUPP;
+
+	if (out_idx < REF1P || out_idx > REF1N)
+		return -EINVAL;
+
+	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, out_idx - REF1P, ena, &freq);
+
+	return ret;
+}
+
+/**
+ * ice_get_rclk_state - Get state of recovered clock pin for a given netdev
+ * @netdev: network interface device structure
+ * @out_idx: output index
+ * @ena: returns true if the pin is enabled
+ * @extack: netlink extended ack
+ */
+static int
+ice_get_rclk_state(struct net_device *netdev, u32 out_idx, bool *ena,
+		   struct netlink_ext_ack *extack)
+{
+	u8 port_num = ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT;
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	enum ice_status ret;
+	u32 freq;
+	u8 flags;
+
+	if (!ice_is_feature_supported(pf, ICE_F_CGU))
+		return -EOPNOTSUPP;
+
+	if (out_idx < REF1P || out_idx > REF1N)
+		return -EINVAL;
+
+	ret = ice_aq_get_phy_rec_clk_out(&pf->hw, out_idx - REF1P, &port_num,
+					 &flags, &freq);
+
+	if (!ret && (flags & ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN))
+		*ena = true;
+	else
+		*ena = false;
+
+	return ret;
+}
+
 /**
  * ice_down - Shutdown the connection
  * @vsi: The VSI being stopped
@@ -8420,4 +8508,7 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_xsk_wakeup = ice_xsk_wakeup,
 	.ndo_get_eec_state = ice_get_eec_state,
 	.ndo_get_eec_src = ice_get_eec_src,
+	.ndo_get_rclk_range = ice_get_rclk_range,
+	.ndo_set_rclk_out = ice_set_rclk_out,
+	.ndo_get_rclk_state = ice_get_rclk_state,
 };
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

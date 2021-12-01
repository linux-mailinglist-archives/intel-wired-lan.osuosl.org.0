Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0387E46551A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 19:17:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B28BA82CE5;
	Wed,  1 Dec 2021 18:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIbrQ6lhJO4r; Wed,  1 Dec 2021 18:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69FDC82D17;
	Wed,  1 Dec 2021 18:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A48D1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6523E40343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bT8fcoRqRvQ4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 18:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 322B840534
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:17:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223396748"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="223396748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 10:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="460124693"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga006.jf.intel.com with ESMTP; 01 Dec 2021 10:17:20 -0800
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, arkadiusz.kubalewski@intel.com
Date: Wed,  1 Dec 2021 19:02:08 +0100
Message-Id: <20211201180208.640179-5-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211201180208.640179-1-maciej.machnikowski@intel.com>
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 net-next 4/4] ice: add support for
 SyncE recovered clocks
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement ethtool netlink functions for handling SyncE recovered clocks
configuration on ice driver:
- ETHTOOL_MSG_RCLK_SET
- ETHTOOL_MSG_RCLK_GET

Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 29 ++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 65 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 97 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  2 +
 5 files changed, 199 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 11226af7a9a4..aed03200bb99 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1281,6 +1281,31 @@ struct ice_aqc_set_mac_lb {
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
@@ -2033,6 +2058,8 @@ struct ice_aq_desc {
 		struct ice_aqc_get_phy_caps get_phy;
 		struct ice_aqc_set_phy_cfg set_phy;
 		struct ice_aqc_restart_an restart_an;
+		struct ice_aqc_set_phy_rec_clk_out set_phy_rec_clk_out;
+		struct ice_aqc_get_phy_rec_clk_out get_phy_rec_clk_out;
 		struct ice_aqc_gpio read_write_gpio;
 		struct ice_aqc_sff_eeprom read_write_sff_param;
 		struct ice_aqc_set_port_id_led set_port_id_led;
@@ -2188,6 +2215,8 @@ enum ice_adminq_opc {
 	ice_aqc_opc_get_link_status			= 0x0607,
 	ice_aqc_opc_set_event_mask			= 0x0613,
 	ice_aqc_opc_set_mac_lb				= 0x0620,
+	ice_aqc_opc_set_phy_rec_clk_out			= 0x0630,
+	ice_aqc_opc_get_phy_rec_clk_out			= 0x0631,
 	ice_aqc_opc_get_link_topo			= 0x06E0,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
 	ice_aqc_opc_set_gpio				= 0x06EC,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8069141ac105..29d302ea1e56 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5242,3 +5242,68 @@ bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
 	return true;
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
index aaed388a40a8..8a99c8364173 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 5af2faaa21e1..c9e16bb9470e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4076,6 +4076,100 @@ ice_get_module_eeprom(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ice_get_rclk_range - get range of recovered clock indices
+ * @netdev: network interface device structure
+ * @min_idx: min rclk index
+ * @max_idx: max rclk index
+ * @ena_mask: bitmask of pin states
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
+	*min_idx = 0;
+	*max_idx = ICE_RCLK_PIN_MAX;
+
+	return 0;
+}
+
+/**
+ * ice_get_rclk_state - get state of a recovered frequency output pin
+ * @netdev: network interface device structure
+ * @out_idx: index of a questioned pin
+ * @ena: returned state of a pin
+ * @extack: netlink extended ack
+ */
+static int
+ice_get_rclk_state(struct net_device *netdev, u32 out_idx,
+		   bool *ena, struct netlink_ext_ack *extack)
+{
+	u8 port_num = ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT, flags;
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	u32 freq;
+	int ret;
+
+	if (!ice_is_feature_supported(pf, ICE_F_CGU))
+		return -EOPNOTSUPP;
+
+	if (out_idx > ICE_RCLK_PIN_MAX)
+		return -EINVAL;
+
+	ret = ice_aq_get_phy_rec_clk_out(&pf->hw, out_idx,
+					 &port_num, &flags, &freq);
+	if (ret)
+		return ret;
+
+	if (flags & ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN)
+		*ena = true;
+	else
+		*ena = false;
+
+	return ret;
+}
+
+/**
+ * ice_set_rclk_out - enable/disable recovered clock redirection to the
+ * output pin
+ * @netdev: network interface device structure
+ * @out_idx: index of pin being configured
+ * @ena: requested state of a pin
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
+	if (out_idx > ICE_RCLK_PIN_MAX)
+		return -EINVAL;
+
+	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, out_idx,
+					 ena, &freq);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE |
@@ -4121,6 +4215,9 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_fecparam		= ice_set_fecparam,
 	.get_module_info	= ice_get_module_info,
 	.get_module_eeprom	= ice_get_module_eeprom,
+	.get_rclk_range		= ice_get_rclk_range,
+	.get_rclk_state		= ice_get_rclk_state,
+	.set_rclk_out		= ice_set_rclk_out,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 28b04ec40bae..865ca680b62e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -132,4 +132,6 @@ enum ice_e810t_cgu_pins {
 	NUM_E810T_CGU_PINS
 };
 
+#define ICE_RCLK_PIN_MAX	(REF1N - REF1P)
+
 #endif /* _ICE_PTP_HW_H_ */
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

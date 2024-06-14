Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBF4908C2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 14:59:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2990F41461;
	Fri, 14 Jun 2024 12:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9SYTPzvfgoxU; Fri, 14 Jun 2024 12:59:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A7CD4149E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718369992;
	bh=5dZz98v/rTMW/UZKe0R9sMEIB+qO6Y0dIQpmRehe848=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fiCIlfbUwT0f/XqUtDhsKYZrq6GFHaoHG4+tew55qIKE89/UZoUJHL7CeufNmcZ6q
	 px627UhZ4TMm8U0XtnQlbauCUWIgWmOdB1kK2WdV6JsbnyVgvPQtpbF9VzlHOj8xK4
	 HtqETXEotQbUm0bmiKTO401NnDtKH2ks9wHdzHezruAe4wCOqGzofxd+/NhinaqIVb
	 OwlSl27fMg2zdeOUKDiKKoO0ZngvVyGTylNRE9Yk/wMA8PXBo1A/ZoTn3o9u/oBJtp
	 B/rSwsIMC0aidu3WvTU5ucoszUEbbs2yMVnVr+nml2Ie0ClLpOeVWZGRcZ4ynrqbBu
	 77QmnlAoiKSEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A7CD4149E;
	Fri, 14 Jun 2024 12:59:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72C4D1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CD02414EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:59:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GJfecDRNrSDs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 12:59:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A622940467
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A622940467
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A622940467
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:59:45 +0000 (UTC)
X-CSE-ConnectionGUID: MN8dDArnQpu6AdeivNNsSw==
X-CSE-MsgGUID: 5qCC9giBQPyTbcw66phm1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="40669477"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40669477"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 05:59:43 -0700
X-CSE-ConnectionGUID: 05lneK7iSJiOsxS+EuEelg==
X-CSE-MsgGUID: /Ek4Cn5RSbGfhVMT2GwMkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40593811"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 05:59:43 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jun 2024 05:58:16 -0700
Message-ID: <20240614125935.900102-3-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240614125935.900102-1-anil.samal@intel.com>
References: <20240614125935.900102-1-anil.samal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718369985; x=1749905985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RQ+MF5jXB/h/fvdS2n1fU48lezgydb1YxJcS0r9H7vg=;
 b=dfioL9himqjKJ9yBN7PJS+W6eYT3nlpwUcZScBKMCMqM7hqfSIgt6xY0
 a8bq93qpvQNOF25pyPhg4H3JU27lHzq+Gb+1/lOl/I3fg/XGO9rbF48KF
 aKgy6G6czxV+fiFXe7bkyp6xSdinnY2lrxXi2VzNTvKGGcPRzwd2PjNoI
 Cz5G4XRMHJqXQ3KpoI1IBqU0/JZHNfcJ/VPy328yEzGA6St3hnsXxGSPl
 ZsoPlBupDih86FzTphbCxtfA8D5TeCfqDQFfVFkcrh84Dpp20h1qkgyO9
 c9GW24VLuat+2fIlTFZzEdK1Zkt5t4jKczv+iNL0p7HInAbVkdRysO08Q
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dfioL9hi
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: Implement driver
 functionality to dump fec statistics
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 Anil Samal <anil.samal@intel.com>, leszek.pepiak@intel.com,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To debug link issues in the field, it is paramount to
dump fec corrected/uncorrected block counts from firmware.
Firmware requires PCS quad number and PCS port number to
read FEC statistics. Current driver implementation does
not maintain above physical properties of a port.

Add new driver API to derive physical properties of an input
port.These properties include PCS quad number, PCS port number,
serdes lane count, primary serdes lane number.
Extend ethtool option '--show-fec' to support fec statistics.
The IEEE standard mandates two sets of counters:
 - 30.5.1.1.17 aFECCorrectedBlocks
 - 30.5.1.1.18 aFECUncorrectableBlocks

Standard defines above statistics per lane but current
implementation supports total FEC statistics per port
i.e. sum of all lane per port. Find sample output below

FEC parameters for ens21f0np0:
Supported/Configured FEC encodings: Auto RS BaseR
Active FEC encoding: RS
Statistics:
  corrected_blocks: 0
  uncorrectable_blocks: 0

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Anil Samal <anil.samal@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  |  57 ++++
 drivers/net/ethernet/intel/ice/ice_common.h  |  24 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 308 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.h |  10 +
 drivers/net/ethernet/intel/ice/ice_type.h    |   8 +
 5 files changed, 407 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 03e908405874..891fabfa4bb3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3375,6 +3375,63 @@ int ice_update_link_info(struct ice_port_info *pi)
 	return status;
 }
 
+#define FEC_REG_PORT(port) {	\
+	FEC_CORR_LOW_REG_PORT##port,		\
+	FEC_CORR_HIGH_REG_PORT##port,	\
+	FEC_UNCORR_LOW_REG_PORT##port,	\
+	FEC_UNCORR_HIGH_REG_PORT##port,	\
+}
+
+static const u32 fec_reg[][ICE_FEC_MAX] = {
+	FEC_REG_PORT(0),
+	FEC_REG_PORT(1),
+	FEC_REG_PORT(2),
+	FEC_REG_PORT(3)
+};
+
+/**
+ * ice_aq_get_fec_stats - reads fec stats from phy
+ * @hw: pointer to the HW struct
+ * @pcs_quad: represents pcsquad of user input serdes
+ * @pcs_port: represents the pcs port number part of above pcs quad
+ * @fec_type: represents FEC stats type
+ * @output: pointer to the caller-supplied buffer to return requested fec stats
+ *
+ * Return: non-zero status on error and 0 on success.
+ */
+int ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
+			 enum ice_fec_stats_types fec_type, u32 *output)
+{
+	u16 flag = (ICE_AQ_FLAG_RD | ICE_AQ_FLAG_BUF | ICE_AQ_FLAG_SI);
+	struct ice_sbq_msg_input msg = {};
+	u32 receiver_id, reg_offset;
+	int err;
+
+	if (pcs_port > 3)
+		return -EINVAL;
+
+	reg_offset = fec_reg[pcs_port][fec_type];
+
+	if (pcs_quad == 0)
+		receiver_id = FEC_RECEIVER_ID_PCS0;
+	else if (pcs_quad == 1)
+		receiver_id = FEC_RECEIVER_ID_PCS1;
+	else
+		return -EINVAL;
+
+	msg.msg_addr_low = lower_16_bits(reg_offset);
+	msg.msg_addr_high = receiver_id;
+	msg.opcode = ice_sbq_msg_rd;
+	msg.dest_dev = rmn_0;
+
+	err = ice_sbq_rw_reg(hw, &msg, flag);
+	if (err)
+		return err;
+
+	*output = msg.data;
+	return 0;
+}
+
 /**
  * ice_cache_phy_user_req
  * @pi: port information structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 230ec034dc44..6227ec924bd2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -18,6 +18,27 @@
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
+#define FEC_REG_SHIFT 2
+#define FEC_RECV_ID_SHIFT 4
+#define FEC_CORR_LOW_REG_PORT0 (0x02 << FEC_REG_SHIFT)
+#define FEC_CORR_HIGH_REG_PORT0 (0x03 << FEC_REG_SHIFT)
+#define FEC_UNCORR_LOW_REG_PORT0 (0x04 << FEC_REG_SHIFT)
+#define FEC_UNCORR_HIGH_REG_PORT0 (0x05 << FEC_REG_SHIFT)
+#define FEC_CORR_LOW_REG_PORT1 (0x42 << FEC_REG_SHIFT)
+#define FEC_CORR_HIGH_REG_PORT1 (0x43 << FEC_REG_SHIFT)
+#define FEC_UNCORR_LOW_REG_PORT1 (0x44 << FEC_REG_SHIFT)
+#define FEC_UNCORR_HIGH_REG_PORT1 (0x45 << FEC_REG_SHIFT)
+#define FEC_CORR_LOW_REG_PORT2 (0x4A << FEC_REG_SHIFT)
+#define FEC_CORR_HIGH_REG_PORT2 (0x4B << FEC_REG_SHIFT)
+#define FEC_UNCORR_LOW_REG_PORT2 (0x4C << FEC_REG_SHIFT)
+#define FEC_UNCORR_HIGH_REG_PORT2 (0x4D << FEC_REG_SHIFT)
+#define FEC_CORR_LOW_REG_PORT3 (0x52 << FEC_REG_SHIFT)
+#define FEC_CORR_HIGH_REG_PORT3 (0x53 << FEC_REG_SHIFT)
+#define FEC_UNCORR_LOW_REG_PORT3 (0x54 << FEC_REG_SHIFT)
+#define FEC_UNCORR_HIGH_REG_PORT3 (0x55 << FEC_REG_SHIFT)
+#define FEC_RECEIVER_ID_PCS0 (0x33 << FEC_RECV_ID_SHIFT)
+#define FEC_RECEIVER_ID_PCS1 (0x34 << FEC_RECV_ID_SHIFT)
+
 int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 int ice_check_reset(struct ice_hw *hw);
@@ -122,6 +143,9 @@ int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
 bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps);
+int
+ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
+		     enum ice_fec_stats_types fec_type, u32 *output);
 
 enum ice_fc_mode ice_caps_to_fc_mode(u8 caps);
 enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 4165a93ed4eb..d9c73ff550ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -466,6 +466,221 @@ static int ice_get_regs_len(struct net_device __always_unused *netdev)
 	return sizeof(ice_regs_dump_list);
 }
 
+/**
+ * ice_ethtool_get_maxspeed - Get the max speed for given lport
+ * @hw: pointer to the HW struct
+ * @lport: logical port for which max speed is requested
+ * @max_speed: return max speed for input lport
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int ice_ethtool_get_maxspeed(struct ice_hw *hw, u8 lport, u8 *max_speed)
+{
+	struct ice_aqc_get_port_options_elem options[ICE_AQC_PORT_OPT_MAX] = {};
+	bool active_valid = false, pending_valid = true;
+	u8 option_count = ICE_AQC_PORT_OPT_MAX;
+	u8 active_idx = 0, pending_idx = 0;
+	int status;
+
+	status = ice_aq_get_port_options(hw, options, &option_count, lport,
+					 true, &active_idx, &active_valid,
+					 &pending_idx, &pending_valid);
+	if (status)
+		return -EIO;
+	if (!active_valid)
+		return -EINVAL;
+
+	*max_speed = options[active_idx].max_lane_speed & ICE_AQC_PORT_OPT_MAX_LANE_M;
+	return 0;
+}
+
+/**
+ * ice_is_serdes_muxed - returns whether serdes is muxed in hardware
+ * @hw: pointer to the HW struct
+ *
+ * Return: true when serdes is muxed, false when serdes is not muxed.
+ */
+static bool ice_is_serdes_muxed(struct ice_hw *hw)
+{
+	u32 reg_value = rd32(hw, GLGEN_SWITCH_MODE_CONFIG);
+
+	return FIELD_GET(GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M, reg_value);
+}
+
+static int ice_map_port_topology_for_sfp(struct ice_port_topology *port_topology,
+					 u8 lport, bool is_muxed)
+{
+	switch (lport) {
+	case 0:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 0;
+		port_topology->primary_serdes_lane = 0;
+		break;
+	case 1:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 0;
+		if (is_muxed)
+			port_topology->primary_serdes_lane = 2;
+		else
+			port_topology->primary_serdes_lane = 4;
+		break;
+	case 2:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 1;
+		port_topology->primary_serdes_lane = 1;
+		break;
+	case 3:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 1;
+		if (is_muxed)
+			port_topology->primary_serdes_lane = 3;
+		else
+			port_topology->primary_serdes_lane = 5;
+		break;
+	case 4:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 2;
+		port_topology->primary_serdes_lane = 2;
+		break;
+	case 5:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 2;
+		port_topology->primary_serdes_lane = 6;
+		break;
+	case 6:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 3;
+		port_topology->primary_serdes_lane = 3;
+		break;
+	case 7:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 3;
+		port_topology->primary_serdes_lane = 7;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int ice_map_port_topology_for_qsfp(struct ice_port_topology *port_topology,
+					  u8 lport, bool is_muxed)
+{
+	switch (lport) {
+	case 0:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 0;
+		port_topology->primary_serdes_lane = 0;
+		break;
+	case 1:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 0;
+		if (is_muxed)
+			port_topology->primary_serdes_lane = 2;
+		else
+			port_topology->primary_serdes_lane = 4;
+		break;
+	case 2:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 1;
+		port_topology->primary_serdes_lane = 1;
+		break;
+	case 3:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 1;
+		if (is_muxed)
+			port_topology->primary_serdes_lane = 3;
+		else
+			port_topology->primary_serdes_lane = 5;
+		break;
+	case 4:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 2;
+		port_topology->primary_serdes_lane = 2;
+		break;
+	case 5:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 2;
+		port_topology->primary_serdes_lane = 6;
+		break;
+	case 6:
+		port_topology->pcs_quad_select = 0;
+		port_topology->pcs_port = 3;
+		port_topology->primary_serdes_lane = 3;
+		break;
+	case 7:
+		port_topology->pcs_quad_select = 1;
+		port_topology->pcs_port = 3;
+		port_topology->primary_serdes_lane = 7;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_get_port_topology - returns physical topology like pcsquad, pcsport,
+ *                         serdes number
+ * @hw: pointer to the HW struct
+ * @lport: logical port for which physical info requested
+ * @port_topology: buffer to hold port topology
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
+				 struct ice_port_topology *port_topology)
+{
+	struct ice_aqc_get_link_topo cmd = {};
+	u16 node_handle = 0;
+	u8 cage_type = 0;
+	bool is_muxed;
+	int err;
+	u8 ctx;
+
+	ctx = ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE << ICE_AQC_LINK_TOPO_NODE_TYPE_S;
+	ctx |= ICE_AQC_LINK_TOPO_NODE_CTX_PORT << ICE_AQC_LINK_TOPO_NODE_CTX_S;
+	cmd.addr.topo_params.node_type_ctx = ctx;
+
+	err = ice_aq_get_netlist_node(hw, &cmd, &cage_type, &node_handle);
+	if (err)
+		return -EINVAL;
+
+	is_muxed = ice_is_serdes_muxed(hw);
+
+	if (cage_type == 0x11 ||	/* SFP+ */
+	    cage_type == 0x12) {	/* SFP28 */
+		port_topology->serdes_lane_count = 1;
+		err = ice_map_port_topology_for_sfp(port_topology, lport, is_muxed);
+		if (err)
+			return err;
+	} else if (cage_type == 0x13 ||	/* QSFP */
+		   cage_type == 0x14) {	/* QSFP28 */
+		u8 max_speed = 0;
+
+		err = ice_ethtool_get_maxspeed(hw, lport, &max_speed);
+		if (err)
+			return err;
+
+		if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_100G)
+			port_topology->serdes_lane_count = 4;
+		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G)
+			port_topology->serdes_lane_count = 2;
+		else
+			port_topology->serdes_lane_count = 1;
+
+		err = ice_map_port_topology_for_qsfp(port_topology, lport, is_muxed);
+		if (err)
+			return err;
+	} else {
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static void
 ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 {
@@ -4268,6 +4483,98 @@ ice_get_module_eeprom(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ice_get_port_fec_stats - returns FEC correctable, uncorrectable stats per
+ *                          pcsquad, pcsport
+ * @hw: pointer to the HW struct
+ * @pcs_quad: pcsquad for input port
+ * @pcs_port: pcsport for input port
+ * @fec_stats: buffer to hold FEC statistics for given port
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int ice_get_port_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
+				  struct ethtool_fec_stats *fec_stats)
+{
+	u32 fec_uncorr_low_val = 0, fec_uncorr_high_val = 0;
+	u32 fec_corr_low_val = 0, fec_corr_high_val = 0;
+	int err;
+
+	if (pcs_quad > 1 || pcs_port > 3)
+		return -EINVAL;
+
+	err = ice_aq_get_fec_stats(hw, pcs_quad, pcs_port, ICE_FEC_CORR_LOW,
+				   &fec_corr_low_val);
+	if (err)
+		return err;
+
+	err = ice_aq_get_fec_stats(hw, pcs_quad, pcs_port, ICE_FEC_CORR_HIGH,
+				   &fec_corr_high_val);
+	if (err)
+		return err;
+
+	err = ice_aq_get_fec_stats(hw, pcs_quad, pcs_port,
+				   ICE_FEC_UNCORR_LOW,
+				   &fec_uncorr_low_val);
+	if (err)
+		return err;
+
+	err = ice_aq_get_fec_stats(hw, pcs_quad, pcs_port,
+				   ICE_FEC_UNCORR_HIGH,
+				   &fec_uncorr_high_val);
+	if (err)
+		return err;
+
+	fec_stats->uncorrectable_blocks.total = (fec_corr_high_val << 16) +
+						 fec_corr_low_val;
+	fec_stats->corrected_blocks.total = (fec_uncorr_high_val << 16) +
+					     fec_uncorr_low_val;
+	return 0;
+}
+
+/**
+ * ice_get_fec_stats - returns FEC correctable, uncorrectable stats per netdev
+ * @netdev: network interface device structure
+ * @fec_stats: buffer to hold FEC statistics for given port
+ *
+ */
+static void ice_get_fec_stats(struct net_device *netdev,
+			      struct ethtool_fec_stats *fec_stats)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_port_topology port_topology;
+	struct ice_port_info *pi;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	int err;
+
+	pf = np->vsi->back;
+	hw = &pf->hw;
+	pi = np->vsi->port_info;
+
+	if (!hw || !pi)
+		return;
+
+	/* Serdes parameters are not supported if not the PF VSI */
+	if (np->vsi->type != ICE_VSI_PF)
+		return;
+
+	err = ice_get_port_topology(hw, pi->lport, &port_topology);
+	if (err) {
+		netdev_info(netdev, "Extended register dump failed Lport %d\n",
+			    pi->lport);
+		return;
+	}
+
+	/* Get FEC correctable, uncorrectable counter */
+	err = ice_get_port_fec_stats(hw, port_topology.pcs_quad_select,
+				     port_topology.pcs_port, fec_stats);
+	if (err) {
+		netdev_info(netdev, "FEC stats get failed Lport %d Err %d\n",
+			    pi->lport, err);
+	}
+}
+
 static void ice_get_eth_mac_stats(struct net_device *netdev,
 				  struct ethtool_eth_mac_stats *mac_stats)
 {
@@ -4368,6 +4675,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_sym_xor_supported = true,
 	.get_link_ksettings	= ice_get_link_ksettings,
 	.set_link_ksettings	= ice_set_link_ksettings,
+	.get_fec_stats		= ice_get_fec_stats,
 	.get_drvinfo		= ice_get_drvinfo,
 	.get_regs_len		= ice_get_regs_len,
 	.get_regs		= ice_get_regs,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index b88e3da06f13..ffc8ad180e61 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -9,6 +9,16 @@ struct ice_phy_type_to_ethtool {
 	u8 link_mode;
 };
 
+/* Port topology from lport i.e.
+ * serdes mapping, pcsquad, macport, cage etc...
+ */
+struct ice_port_topology {
+	u16 pcs_port;
+	u16 primary_serdes_lane;
+	u16 serdes_lane_count;
+	u16 pcs_quad_select;
+};
+
 /* Macro to make PHY type to Ethtool link mode table entry.
  * The index is the PHY type.
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 21a00bbac96a..c330a436d11a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -72,6 +72,14 @@ enum ice_aq_res_ids {
 	ICE_GLOBAL_CFG_LOCK_RES_ID
 };
 
+enum ice_fec_stats_types {
+	ICE_FEC_CORR_LOW,
+	ICE_FEC_CORR_HIGH,
+	ICE_FEC_UNCORR_LOW,
+	ICE_FEC_UNCORR_HIGH,
+	ICE_FEC_MAX
+};
+
 /* FW update timeout definitions are in milliseconds */
 #define ICE_NVM_TIMEOUT			180000
 #define ICE_CHANGE_LOCK_TIMEOUT		1000
-- 
2.44.0

